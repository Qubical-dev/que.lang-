#!/bin/bash
# QueLang Runtime Executor

if [ -z "$1" ]; then
  echo "Usage: ./qrun.sh <file.q>"
  exit 1
fi

FILE="$1"

if [ ! -f "$FILE" ]; then
  echo "File not found: $FILE"
  exit 1
fi

echo "==[ QueLang Runtime ]=="
python3 engine/que_engine.py "$FILE"