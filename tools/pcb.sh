#!/usr/bin/env bash
# Local convenience wrapper: "would CI pass?" before pushing.
#
#   ./pcb.sh                        every board, every gate it is held to (what CI runs)
#   ./pcb.sh erc                    one gate, every board
#   ./pcb.sh check SL23-modem-tester       every gate, one board
#   ./pcb.sh bom SL23-modem-tester         export that board's BOM to read through
#   ./pcb.sh pinmap SL23-modem-tester      one gate, one board. Enforces that board's todo=
#                                   gates, which is how you find out if one has gone
#                                   green. skip= stays skipped: it cannot apply there.
#
# Nothing about the checks lives here. The board list is read out of the CI
# workflow and handed to the SAME script CI runs, so local and CI cannot disagree
# on either the boards or the logic. A `git pull` in the submodule is enough.
set -uo pipefail
cd "$(dirname "$0")"                                   # tools/

WORKFLOW=../.github/workflows/ci-hardware.yml
tools="${KICAD_RELEASE_TOOLS:-pcb_release}"            # override for local tool testing

# Self-heal: a colleague who cloned without --recursive still gets a working tree.
if [ ! -e "$tools/pcb-checks.sh" ]; then
  echo "### pcb_release submodule missing -> git submodule update --init --recursive"
  git submodule update --init --recursive || {
    echo "could not init the pcb_release submodule (network / access?)" >&2; exit 1; }
fi

# The `project-dirs:` block of the workflow, verbatim. Paths there are relative to
# the repo root and this script runs from tools/, so rebase them one level up.
# (This repo is entirely hardware: board dirs sit at the root, with no prefix.)
sed -n '/^ *project-dirs: *|/,/^ *[a-z-]*: *$/p' "$WORKFLOW" \
  | sed '1d;/^ *[a-z-]*: *$/d;/^ *$/d;s/^ *//;s|^|../|' \
  | exec "$tools/pcb-checks.sh" --cmd "${1:-check}" ${2:+--only "$2"}
