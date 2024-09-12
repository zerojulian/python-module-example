#!/usr/bin/env bash

PYTHON="${PYTHON:-python}"
PIP="${PIP:-pip}"

if ! command -v "$PYTHON" >& /dev/null; then
  printf "No python interpreter called '%s' found in PATH\n" "$PYTHON"
  printf "Ensure python is installed, or set PYTHON=<interpreter> if it's called something else\n"
  printf "eg. \`export PYTHON=python3\`\n"
  exit 1
fi

if ! command -v "$PIP" >& /dev/null; then
  printf "No pip command called '%s' found in PATH\n" "$PIP"
  printf "Ensure pip is installed, or set PIP=<pip_command> if it's called something else\n"
  printf "eg. \`export PIP=pip3\`\n"
  exit 1
fi

if ! "${PYTHON}" -c "import venv" >& /dev/null; then
  "$PIP" install venv
fi

if [[ ! -d venv ]]; then
  "$PYTHON" -m venv ./venv
fi

source ./venv/bin/activate
"$PIP" install -r requirements.txt


if ! "$PYTHON" -m pytest; then
  exit 1
fi

"$PYTHON" -m build
