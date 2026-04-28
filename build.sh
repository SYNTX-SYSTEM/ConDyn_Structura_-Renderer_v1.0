#!/bin/bash

set -e

OUTPUT="statement_refined_v1.4_build.pdf"

echo "Rendering Statement v1.4..."

chromium \
  --headless=new \
  --disable-gpu \
  --no-sandbox \
  --disable-dev-shm-usage \
  --allow-file-access-from-files \
  --print-to-pdf=$OUTPUT \
  --print-to-pdf-no-header \
  index.html

echo "Done."
echo "Generated: $OUTPUT"
