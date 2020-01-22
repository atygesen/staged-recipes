#!/usr/bin/env bash
set -evx

export MAKEFLAGS="-j${CPU_COUNT}"
export GOOFIT_DEVICE=OMP

rm pyproject.toml || echo "Already removed pyproject file"
python -m pip install . -vv

