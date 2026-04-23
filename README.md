# CONDYN — STRUCTURAL RENDERER

Deterministic HTML → PDF Infrastructure Renderer  
Architectural Layout Engine for Structural Compute Dossiers  

────────────────────────────────────────
SYSTEM PRÄMISSE
────────────────────────────────────────

Dieses Repository implementiert keinen „Style“.
Es implementiert ein strukturelles Rendering-System.

Rendering folgt:

• Deterministischer Grid-Logik  
• Append-only Seitenarchitektur  
• Constraint-Hierarchie  
• Versionierungsprinzip  
• Institutioneller Dossier-Struktur  

Keine Dekoration.
Keine Startup-Ästhetik.
Keine Marketing-Schicht.

Layout ist Architektur.

────────────────────────────────────────
ARCHITEKTUR
────────────────────────────────────────

Root
│
├── core/
│   ├── colors.css
│   ├── grid.css
│   ├── typography.css
│   ├── tables.css
│   ├── diagrams.css
│   └── archetypes.css
│
├── index.html
├── build.sh
└── README.md

────────────────────────────────────────
DESIGNPRINZIPIEN
────────────────────────────────────────

1. Determinismus  
   Identischer Input → Identisches PDF  

2. Grid-Struktur  
   12-Column System  
   Keine freie Positionierung  

3. Constraint-Disziplin  
   Tabellen = Validierungslogik  
   Farben = Zustandsmarkierung  

4. Seitenarchetypen  
   Cover  
   Validation  
   Budget  

5. Engine  
   Chromium Headless  
   Browser-Rendering  
   Kein CSS-Downgrade  

────────────────────────────────────────
PDF GENERIERUNG
────────────────────────────────────────

Voraussetzung:
chromium (headless fähig)

Build:

./build.sh output.pdf

Intern:

chromium \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --disable-dev-shm-usage \
  --print-to-pdf=output.pdf \
  --print-to-pdf-no-header \
  index.html

────────────────────────────────────────
RENDERING-GARANTIEN
────────────────────────────────────────

✓ CSS Grid unterstützt  
✓ CSS Variables unterstützt  
✓ A4 stabil  
✓ Seitenumbrüche deterministisch  
✓ Tabellen exakt  

────────────────────────────────────────
NICHT ENTHALTEN
────────────────────────────────────────

✗ Kein Responsive Design  
✗ Keine Animation  
✗ Keine UI-Komponenten  
✗ Keine Marketing-Schicht  

────────────────────────────────────────
SYSTEMCHARAKTER
────────────────────────────────────────

Bundesdossier.  
Technisches Validierungsdokument.  
Strukturelle Infrastruktur.  

Nicht: Pitchdeck.  
Nicht: SaaS.  
Nicht: AI-Marketing.  

END.
