#!/bin/bash
# QueLang Binary Compiler (simulasi)

INPUT="$1"
OUTPUT="$3"

if [ -z "$INPUT" ] || [ "$2" != "-o" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: ./qbuild.sh <file.q> -o <output.qbin>"
  exit 1
fi

if [ ! -f "$INPUT" ]; then
  echo "Input file not found: $INPUT"
  exit 1
fi

echo "[*] Compiling $INPUT into $OUTPUT ..."
cat "$INPUT" | gzip > "$OUTPUT"
echo "[+] Done. Binary saved to $OUTPUT"