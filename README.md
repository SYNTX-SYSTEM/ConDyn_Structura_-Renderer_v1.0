# ConDyn Structural Renderer
### Deterministic Document Architecture for SPRIND 2026

Right.  
This is not a design repo.  
This is a structural control surface.

Every document in here renders deterministically.  
Every branch represents a canonical state.  
No layout drift.  
No probabilistic pagination.  
No Chrome header voodoo.

If it renders once, it renders the same every time.

---

# 🗺 Repository Map

We don’t stack documents in folders.

We version them as architectural branches.

Each branch = one submission artifact.  
Each artifact = one isolated render state.

---

## 🌿 Branch Matrix

| Branch | Artifact | Canonical Tag | Status |
|--------|----------|---------------|--------|
| `statement-refined-v3` | Paradigm Statement | `statement-v1.2-canonical` | Stable |
| `stage1-execution-plan` | Stage 1 Execution Plan | `execution-plan-v1.2-canonical` | Stable |
| `stage1-execution-architecture` | Stage 1 Execution Architecture | `stage1-v1.2-canonical` | Stable |
| `strategy-structural-architecture` | Structural Strategy Dossier | `strategy-v1.2-canonical` | Stable |

Each branch owns:

- its own footer string
- its own document label
- its own build script
- identical pagination core

---

# 🏗 Core Layout System

All documents share the same deterministic rendering spine.

```

body {
counter-reset: page;
}

.page {
height: 297mm;
counter-increment: page;
overflow: hidden;
}

.page::after {
content: counter(page);
}

```

That’s it.

No Chromium header injection.  
No auto-generated page numbers.  
No dynamic resizing.

Fixed height.
Explicit page boundary.
Deterministic counter.

If content overflows, we fix content.  
We don’t let the renderer guess.

---

# 📐 Typography Canon

All documents converge on v1.2 typography alignment:

- Base text: 11pt
- Line height: 1.45
- Structural headings: 20–22pt
- Courier for meta-layer + footers
- 15mm footer offset (left + right)

Visual hierarchy reflects ontology depth.

Tables are normalized:

- No heavy borders
- Bottom rule separation
- Column weighting enforced
- No internal page breaks

---

# 🧱 Rendering Architecture

Rendering uses headless Chromium.

No header templates.
No DevTools injection.
No auto margins.

Example:

```

./build_strategy.sh

```

Or generic:

```

./build.sh output.pdf

```

HTML is concatenated.
CSS is canonical.
PDF is deterministic.

---

# 📊 Structural Model

Each document follows the same layering logic:

```

Cover
↓
Sectional Pages
↓
Fixed Footer Layer
↓
Deterministic Counter

```

No implicit behavior.
No layout entropy.

The PDF is a structural artifact,
not a styled webpage export.

---

# 🔢 Pagination Philosophy

v1.2 defines canonical indexing.

Cover = Page 1  
No counter resets  
No branch-level hacks  
No overflow drift  

All branches follow identical counter logic.

If a page miscounts,
it is treated as a structural fault,
not a cosmetic bug.

---

# 🔐 Canonical State Tags

Tags represent frozen architectural states.

```

statement-v1.2-canonical
execution-plan-v1.2-canonical
stage1-v1.2-canonical
strategy-v1.2-canonical

```

Tags mean:

- Pagination stabilized
- Typography aligned
- Footer unified
- No drift pages
- Deterministic rebuild validated

---

# 🧠 Design Doctrine

We do not design for visual flair.

We design for:

- structural coherence
- deterministic reproduction
- auditability
- institutional readability
- zero render entropy

This repo is infrastructure.

---

# 🧰 Build Discipline

Every branch builds independently.

Never build Strategy from Statement.
Never merge document internals across branches.
Never share footer strings dynamically.

Isolation is stability.

---

# 🚀 Release State

SPRIND Submission Stack  
Canonicalized v1.2  
April 2026  

Stable.
Deterministic.
Auditable.

---

# ☕ If You’re Reading This

Don’t tweak margins randomly.
Don’t re-enable Chrome headers.
Don’t “just try auto height”.

If something breaks,
fix the structure.
Not the symptom.

Sweet as.
```

---

# 🧩 Optional: ASCII Architecture Graph

Wenn du willst, können wir oben noch ein Diagramm reinbauen wie:

```
              ┌────────────────────┐
              │  Structural Spine  │
              └─────────┬──────────┘
                        │
        ┌───────────────┼────────────────┐
        │               │                │
  Statement        Execution Plan   Strategy Dossier
        │               │                │
   Canonical v1.2   Canonical v1.2   Canonical v1.2
```

---

