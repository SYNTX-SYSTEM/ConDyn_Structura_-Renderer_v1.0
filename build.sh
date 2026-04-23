#!/bin/bash
chromium \
  --headless=new \
  --disable-gpu \
  --no-sandbox \
  --disable-dev-shm-usage \
  --allow-file-access-from-files \
  --print-to-pdf=$1 \
  --print-to-pdf-no-header \
  index.html
