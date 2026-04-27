#!/bin/bash

set -e

OUTPUT_HTML="strategy_full.html"
OUTPUT_PDF="ConDyn_Strategy_Dossier.pdf"

echo "Building consolidated HTML..."

cat > $OUTPUT_HTML << 'HTML_HEAD'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>ConDyn — Structural Strategy Dossier</title>

<link rel="stylesheet" href="core/base.css">
<link rel="stylesheet" href="core/layout.css">
<link rel="stylesheet" href="core/typography.css">
<link rel="stylesheet" href="core/tables.css">

</head>
<body>
HTML_HEAD

# COVER
cat strategy/cover.html >> $OUTPUT_HTML

# Kapitel-Reihenfolge
for file in \
strategy/architectural-primitive.html \
strategy/deterministic-pipeline.html \
strategy/persistent-state.html \
strategy/constraint-hierarchy.html \
strategy/comparative-analysis.html \
strategy/deployment-contexts.html \
strategy/validation-metrics.html \
strategy/risk-assessment.html \
strategy/execution-roadmap.html \
strategy/strategic-positioning.html \
strategy/team-capability.html 
do
    sed -n '/<body>/,/<\/body>/p' $file | sed '1d;$d' >> $OUTPUT_HTML
done

cat >> $OUTPUT_HTML << 'HTML_FOOT'
</body>
</html>
HTML_FOOT

echo "Rendering PDF..."

chromium \
  --headless=new \
  --disable-gpu \
  --no-sandbox \
  --disable-dev-shm-usage \
  --allow-file-access-from-files \
  --print-to-pdf=$OUTPUT_PDF \
  $OUTPUT_HTML

echo "Done."
echo "Generated: $OUTPUT_PDF"
