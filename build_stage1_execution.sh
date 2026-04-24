#!/bin/bash
set -e

OUTPUT_HTML="stage1_execution_full.html"
OUTPUT_PDF="ConDyn_Stage1_Execution_Architecture.pdf"

cat > $OUTPUT_HTML << 'HTML_HEAD'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>ConDyn — Stage 1 Execution Architecture</title>

<link rel="stylesheet" href="core/base.css">
<link rel="stylesheet" href="core/layout.css">
<link rel="stylesheet" href="core/typography.css">
<link rel="stylesheet" href="core/tables.css">

</head>
<body>
HTML_HEAD

# ---- EXPLICIT ORDER ----

cat stage1_execution/cover.html >> $OUTPUT_HTML
cat stage1_execution/objective.html >> $OUTPUT_HTML
cat stage1_execution/core-deliverables.html >> $OUTPUT_HTML
cat stage1_execution/organization.html >> $OUTPUT_HTML
cat stage1_execution/capital.html >> $OUTPUT_HTML
cat stage1_execution/infrastructure.html >> $OUTPUT_HTML
cat stage1_execution/validation.html >> $OUTPUT_HTML
cat stage1_execution/risk.html >> $OUTPUT_HTML
cat stage1_execution/governance.html >> $OUTPUT_HTML
cat stage1_execution/transition.html >> $OUTPUT_HTML
cat stage1_execution/closing.html >> $OUTPUT_HTML

echo "</body></html>" >> $OUTPUT_HTML

echo "Rendering PDF..."
chromium --headless --disable-gpu \
  --print-to-pdf="$OUTPUT_PDF" \
  "$OUTPUT_HTML"

echo "Generated: $OUTPUT_PDF"
