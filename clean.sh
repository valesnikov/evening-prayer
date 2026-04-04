#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="${SCRIPT_DIR}"

cd "${ROOT_DIR}"

latexmk \
  -C \
  -outdir="${ROOT_DIR}/build" \
  -auxdir="${ROOT_DIR}/build" \
  -jobname="molitvoslov" \
  "${ROOT_DIR}/src/main.tex"

# Remove leftovers from accidental direct xelatex runs in source/root.
rm -f \
  main.aux main.log main.out main.pdf main.synctex.gz \
  src/main.aux src/main.log src/main.out src/main.pdf src/main.synctex.gz
