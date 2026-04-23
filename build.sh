#!/bin/bash
chromium \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --disable-dev-shm-usage \
  --print-to-pdf=$1 \
  --print-to-pdf-no-header \
  index.html
