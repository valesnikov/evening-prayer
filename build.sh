#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="${SCRIPT_DIR}"

cd "${ROOT_DIR}"
mkdir -p build

latexmk \
  -xelatex \
  -synctex=1 \
  -interaction=nonstopmode \
  -file-line-error \
  -outdir="${ROOT_DIR}/build" \
  -auxdir="${ROOT_DIR}/build" \
  -jobname="molitvoslov" \
  "${ROOT_DIR}/src/main.tex"
