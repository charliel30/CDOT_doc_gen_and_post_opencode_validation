# Grading Summary — OpenCode CM/GC Proposal Output (Round 2)

**Date:** 2026-03-22
**File Evaluated:** `second_run/cmgc_proposal.md` + `second_run/traceability.md`
**Evaluator:** Claude Code (Claude Opus 4.6)
**Source Documents Used:** 19 markdown files across `source_documents/`, `examples/`, `backward_engineered/`, `templates/`, and `terms_and_definitions.md`
**AGENTS.md Version:** Post-round-1 revision (added placeholder guidance, no-fabrication examples, traceability manifest requirement, source inventory step)

---

## Overall Grade: A-

A major improvement over Round 1 (B+). OpenCode correctly used `[TODO: ...]` placeholders for all data not found in source documents — 23 placeholders total — instead of fabricating personnel, metrics, and pricing. The traceability manifest is thorough and well-structured. Only a handful of minor unsourced claims remain.

---

## Criteria Scores

| Criterion | Score | Weight | Round 1 | Notes |
|-----------|-------|--------|---------|-------|
| **Completeness** | 10/10 | 20% | 10/10 | All 10 sections + appendices present |
| **Accuracy** | 9/10 | 30% | 6/10 | **+3 points.** Nearly all data traceable; only minor unsourced claims remain |
| **Format Compliance** | 10/10 | 15% | 10/10 | Perfect template adherence |
| **Terminology** | 10/10 | 10% | 10/10 | All CM/GC terminology used correctly |
| **No External Data** | 9/10 | 25% | 7/10 | **+2 points.** 23 honest placeholders; very few remaining issues |

**Weighted Score: 9.4 / 10** (Round 1: 8.1 / 10)

---

## What Improved From Round 1

### Personnel Fabrication: FIXED
Round 1 invented 6 complete personnel profiles (Kevin Barrett, Jeff Carpenter, Lisa Nguyen, Dan Romero, Maria Santos, Tom Haskins) with fabricated bios, certifications, and project histories. Round 2 correctly uses `[TODO]` placeholders for all personnel names, experience, certifications, and dedication percentages. The org chart shows the structure with `[TODO: Name]` in each box. This is exactly what we wanted.

### Safety Metrics: FIXED
Round 1 invented EMR 0.74, TRIR 1.0, DART 0.5. Round 2 correctly states "EMR consistently below 0.80" (which is what the source docs say) and adds `[TODO: Insert firm's actual 3-year EMR, TRIR, and DART rates from corporate safety records]`. Perfect.

### Pricing: FIXED
Round 1 invented $4,500,000 preconstruction fee, 4.50% management fee, and specific hourly rates. Round 2 uses `[TODO]` placeholders for all pricing, citing the market ranges from source docs so a human has context. The fee assumptions section still includes sourced data (18-month duration, 3 OPCC deliverables, 60-day CAP negotiation).

### Contact Info: FIXED
Round 1 invented Mark Olson, phone number, and email. Round 2 uses `[TODO: Authorized Representative name]`, `[TODO: Phone]`, `[TODO: Email]`.

### Inaccurate "I-70 Corridor" Claim: FIXED
Round 1 falsely claimed "three CM/GC contracts on the I-70 Mountain Corridor totaling over $1.1 billion" when two of those projects were on I-25. Round 2 correctly lists the three projects by name without misattributing them to I-70.

### Fabricated "$1B in CDOT Work" Claim: FIXED
Round 1 extrapolated "$1 billion in CDOT highway and bridge work over the past decade" from bonding capacity. Round 2 removes this unsourced claim entirely.

### Traceability Manifest: NEW
Round 2 produced `traceability.md` with ~170 source citations across all sections plus a summary table of all 23 `[TODO]` items. This is exactly the forcing function we hoped for — it caught gaps in real-time and drove placeholder usage.

---

## Remaining Issues (Minor)

### 1. CDOT Mailing Address (minor fabrication)
The cover letter includes "4201 E. Arkansas Avenue, Denver, CO 80222" which is not in any source document. This is CDOT's real public address, likely from training data. Should be `[TODO: CDOT mailing address]` or omitted.

### 2. "More than two decades" in I-70 corridor (unsourced claim)
The Executive Summary states: "Our Denver, Colorado office has been active in the I-70 Mountain Corridor for more than two decades." Source documents say Kraemer has a Denver office and list corridor projects, but never state how long the Denver office has been operating in the corridor. This is a plausible extrapolation, not a sourced fact.

### 3. Innovation feasibility claims slightly embellished
- Innovation 1 claims the heated formwork technique was "refined through our Veterans Memorial Tunnels and I-25 South Gap work" — the source docs confirm these projects but don't specifically say the heated formwork was used on both. The example proposal attributes it to "I-25 South Gap" only.
- Innovation 3 (BIM-4D) — the proposal doesn't claim specific RFI reduction percentages (good — Round 1 did), but also doesn't note that this innovation was sourced from the example rather than from Kraemer's documented capabilities.

### 4. Traceability manifest minor typo
Line 167 references `examples/cmmz_proposals/` instead of `examples/cmgc_proposals/` — a typo, not a substantive issue.

### 5. Some [TODO] placeholders could be more specific
A few placeholders like `[TODO: Specific inspection and testing protocols]` could reference what the source docs do provide (the example has detailed protocols). But this is a style nit, not a failure.

---

## Detailed Findings

### COMPLETENESS (10/10)

All required sections present with substantive content:

- [x] Cover Letter — proper format, `[TODO]` for signatory
- [x] Section 1: Executive Summary — firm overview, approach summary, innovations, commitment
- [x] Section 2: Key Personnel — org chart structure with `[TODO]` names, capabilities from source docs, resume format template
- [x] Section 3: Project Understanding — 7 challenges, all sourced, highly project-specific
- [x] Section 4: Project Approach — preconstruction + construction + subcontractor management, detailed and sourced
- [x] Section 5: Schedule — preconstruction milestones, construction phasing, risk/contingency
- [x] Section 6: Risk Management — 16 risks with scores from source risk register, prioritized by score
- [x] Section 7: Safety Plan — firm record (sourced range, not fabricated), project hazards, program elements
- [x] Section 8: Quality Management — org structure, testing protocols, documentation procedures
- [x] Section 9: Innovation — 4 innovations with descriptions, benefits, and feasibility
- [x] Section 10: Price Proposal — all `[TODO]` with market ranges cited, fee assumptions sourced
- [x] Appendices — listed with sourced details (bonding capacity, DBE, project references)

### ACCURACY (9/10)

**Round 1: 6/10 → Round 2: 9/10**

Vast improvement. The 23 `[TODO]` placeholders eliminate the entire category of fabricated data that drove Round 1 down. The remaining -1 is for the CDOT address, "two decades" claim, and minor innovation embellishments noted above.

Notable accuracy wins:
- The risk register now includes risk scores from the source risk register, prioritized correctly (T-1 and C-1 at 9, then the 8-score risks)
- Project phasing dates match source docs exactly
- Environmental details (FONSI date, 1041 permit, SWEEP ITF, UCCWA, Johnson Gulch station) all correctly cited
- Past project dollar values correctly attributed ($70M VMT, $700M+ I-25 North, $350M I-25 South Gap)
- No longer misattributes I-25 projects to the I-70 corridor

### FORMAT COMPLIANCE (10/10)

Identical structure to Round 1 (which was also 10/10). Template followed precisely.

### TERMINOLOGY (10/10)

All CDOT/CM/GC terms used correctly: CM/GC, OPCC, CAP, ICE, NTP, DBE, FONSI, open-book pricing, self-performance, constructability review, best value. No terminology misuse.

### NO EXTERNAL DATA (9/10)

**Round 1: 7/10 → Round 2: 9/10**

The placeholder strategy worked. Where Round 1 had ~15 fabricated data points, Round 2 has 23 honest `[TODO]` placeholders. The only external data leakage is the CDOT mailing address and the "two decades" claim — both minor.

---

## Traceability Manifest Assessment

The `traceability.md` file is well-structured and useful:

- **~170 source citations** across all proposal sections
- **Correct source file paths** (uses `reference_documents/` naming from the sanitized zip)
- **Section/line references** help locate the source data
- **Summary table** at the bottom cleanly lists all 23 `[TODO]` items with where they appear in the proposal
- **Self-consistent** — every `[TODO]` in the proposal has a corresponding "NOT IN SOURCE DOCS" row in the manifest

One minor issue: the manifest doesn't flag the CDOT address or "two decades" claim as unsourced, which means the self-check didn't catch everything. But it caught the major items.

---

## Round-over-Round Comparison

| Metric | Round 1 | Round 2 | Change |
|--------|---------|---------|--------|
| Weighted Score | 8.1/10 | 9.4/10 | **+1.3** |
| Fabricated personnel | 6 complete profiles | 0 (23 placeholders) | **Fixed** |
| Fabricated metrics | EMR 0.74, TRIR 1.0, DART 0.5 | "Below 0.80" + TODO | **Fixed** |
| Fabricated pricing | $4.5M fee, 4.50%, specific rates | All TODO with ranges | **Fixed** |
| Inaccurate claims | "I-70 corridor" misattribution | Removed | **Fixed** |
| Traceability manifest | Not produced | 170+ citations, 23 TODOs | **New** |
| Remaining issues | 15+ fabricated data points | 2-3 minor unsourced claims | **Major improvement** |

---

## Recommendation

The AGENTS.md changes worked. The combination of:
1. **Explicit placeholder guidance** ("A proposal with 15 honest placeholders is a success")
2. **Concrete fabrication examples** (the wrong-vs-right table)
3. **Traceability manifest requirement** (forcing function)
4. **Source inventory step** (gap identification before writing)

...effectively eliminated the fabrication problem. The remaining issues (CDOT address, "two decades" claim) are minor and could likely be addressed by adding one more line to the no-fabrication guidance: "Do not include addresses, durations, or other incidental details from your training data — if it's not in a source file, leave it out or use a placeholder."

For Round 3 (with the latest AGENTS.md that adds the "What to Look For" section and explicit output folder), we would expect comparable or slightly better results.
