#!/bin/bash

outputFile="png_files.txt"

echo "Generating list of PNG files..."

find "$(pwd)" -name "*.png" -type f -exec sh -c 'echo "$0" | sed "s|\\\\|/|g"' {} \; > "$outputFile"

echo "List of PNG files generated: $outputFile"

