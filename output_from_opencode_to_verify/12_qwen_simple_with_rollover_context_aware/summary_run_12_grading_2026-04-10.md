# Grading Summary — Run 12 (qwen3, append-only rule)

**Graded:** 2026-04-10
**Run folder:** `output_from_opencode_to_verify/12_qwen_simple_with_rollover_context_aware/`
**AGENTS.md state at time of run:** post-`e525a12` — the "APPEND ONLY" rule is in force. `Write` tool is forbidden on the output files; only `cat >> file <<'EOF' ... EOF` is allowed.
**Execution mode:** Single-agent sequential with context compactions; no `temp/` directory.

---

## Overall Grade: **B (7.8 / 10)**

This is the most substantively complete run to date — 1,264 lines of proposal content and a 267-line traceability manifest that is the most thorough of any run. The append-only rule **did** what it was designed to do: no section was destroyed, and the old "only Section 9 survived" failure mode is gone. But the rule exposed a new failure mode in its place — the model went through multiple context compactions and, on resumption, **did not `Read` the output file to see what was already there before appending again**. The result is that every section from 1 through 9 appears twice in `cmgc_proposal.md`, the traceability tables are duplicated into the proposal file in addition to existing correctly in `traceability.md`, and Section 1's second copy uses a wrong heading level (`#` instead of `##`). The underlying content is better than any prior run on almost every dimension, but the delivered file is structurally damaged and unusable without post-processing.

---

## Per-Criterion Scores

### Completeness — **A− (9.0, content) / D+ (5.5, structural integrity) → B (8.0 blended)**

**Content coverage is the best of any run.** Every template element is present — in some cases twice:

| Template element | Present? | Notes |
|---|---|---|
| Cover Letter / Title | ✅ | Title + metadata block present; Point of Contact is a lazy TODO (see Accuracy) |
| Section 1: Executive Summary | ⚠️ | **Two copies**, lines 11 and 22. Second copy uses `#` (h1) instead of `##` (h2). |
| Section 2.1 Org Chart | ⚠️ | **Two org charts.** The first (lines 50–64) is a garbage generic corporate tree with no project-specific names. The second (lines 138–170) is the good ASCII chart matching the template. |
| Section 2.2 Key Personnel Resumes | ✅✅ | **First run to cover all 7 required roles.** Kevin Barrett, Jeff Carpenter, Lisa Nguyen, Dan Romero correctly sourced; **Scheduling Manager, Quality Manager, Environmental Compliance Manager all present with proper `[TODO: ... name and experience needed]` placeholders** instead of omission or fabrication. This is exactly what the rubric asks for and no prior run has done it. |
| Section 2.3 Team Availability | ✅✅ | Two copies |
| Section 3: Project Understanding | ✅✅ | Two copies, 7 challenges enumerated |
| Section 4.1 Preconstruction | ✅✅ | Two copies |
| Section 4.2 Construction | ✅✅ | Two copies |
| Section 4.3 Subcontractor Management | ✅✅ | Present in both copies — Run 10 dropped this |
| Section 5.1 Preconstruction Schedule | ✅✅ | Two copies; second has dated sub-heading "5.1 Preconstruction Schedule (January 2023 – June 2025)" |
| Section 5.2 Construction Schedule | ✅✅ | Two copies |
| Section 5.3 Key Milestones | ✅✅ | Two copies |
| Section 5.4 Schedule Risk and Contingency | ✅✅ | Present (note: renumbered from template's 5.3 — template only has 5.1/5.2/5.3) |
| Section 6.1 Risk Identification | ⚠️ | **First run to restore the full risk category breakdown** — 7 categories (Geotechnical, Environmental, Traffic, Schedule, Cost, Design, Stakeholder), multiple risks per category. Closer to Run 7's 32-risk register than Run 11's 13 or Run 10's 5. Two copies. |
| Section 6.2 Risk Mitigation Strategies | ⚠️ | First copy has priority buckets (High/Medium/Low). Two copies. |
| Section 7: Safety Plan | ⚠️ | Two copies. First copy has a "References" sub-heading that's unusual. Both include Project-Specific Hazards and Safety Program Elements. |
| Section 8: Quality Management | ⚠️ | Two copies, substantial content in both |
| Section 9: Innovation and VE | ⚠️ | Two copies. **Five innovations per copy** (vs Run 7/11's two). See Accuracy — most are fabricated. |
| Section 10.1/10.2/10.3 | ✅ | **Single copy** (Section 10 was the last written, no compaction after it). Best-sourced pricing of any run — see Accuracy. |
| Appendices (A–F) | ❌ | Not present. Regression from Run 11. |

**Duplication pattern:**

```
Line 11:   ## Section 1: Executive Summary       (first pass)
Line 22:   # Section 1: Executive Summary        (second pass — wrong header level)
Line 32:   ## Section 1 Traceability             (WRONG FILE — should be in traceability.md only)
Line 46:   ## Section 2: Key Personnel...        (first pass)
Line 136:  ## Section 2: Key Personnel...        (second pass)
Line 213:  ## Section 2 Traceability             (WRONG FILE)
Line 246:  ## Section 3: Project Understanding   (first pass)
Line 274:  ## Section 3: Project Understanding   (second pass)
Line 301:  ## Section 3 Traceability             (WRONG FILE)
... pattern continues through Section 9 ...
Line 1219: ## Section 10: Price Proposal          (single copy, no duplicate)
```

Every section from 1–9 was appended twice, plus the traceability table for each section was appended into `cmgc_proposal.md` as an inline block — *in addition to* the `traceability.md` file having its own correct copy. Section 10 escaped duplication because it was the last thing written and no compaction happened afterwards.

**Diagnostic interpretation:** After a context compaction, the model didn't remember it had already written Sections 1–N. AGENTS.md Rule says: *"If you lose track of where you were, `Read` both output files, find the highest-numbered section that is present and non-empty, and continue appending from the next one."* The model did not execute the `Read` step. The append-only rule protected it from *destroying* prior work, but did nothing to protect against *duplicating* it.

### Accuracy — **C+ (7.5)**

Core facts are sourced correctly. Pricing is the best of any run. But Section 9 innovations are fabricated and the Point of Contact lazy TODO gives back ground that Runs 7 and 11 had correctly.

**Correctly sourced (spot-verified):**

| Claim | Source |
|---|---|
| Kraemer HQ Plain, Wisconsin; 100+ years | `backward_engineered/floyd_hill/contractor_qualifications_profile.md` |
| Kevin Barrett, PE #42871, $255/hr, 3,200 hrs, U. Wisconsin-Madison, PMP, CCM | `kraemer_key_personnel_staffing.md` |
| Jeff Carpenter (28 yrs, 200 blasts, Certified Blaster, I-25 S. Gap, EJMT) | same |
| Lisa Nguyen (16 yrs, 7 yrs CM/GC, CCP, OSHA 10, Colorado State) | same |
| Dan Romero, CSP (14 yrs, OSHA 30) | same |
| I-25 North ~$700M, I-25 South Gap ~$350M, VMT ~$70M | `contractor_qualifications_profile.md` |
| EMR consistently below 0.80, TRIR 1.02 | `kraemer_safety_performance.md` |
| 600,000+ tons, 135+ blasts, 2,000 ft climb, 600 ft descent, 7% east grade | `floyd_hill_project_overview.md` |
| $905M 2025-adjusted budget | `floyd_hill_project_overview.md` |
| Three-section phasing dates (East Jul 2023–Sum 2026 etc.) | `floyd_hill_project_overview.md` |
| AtkinsRealis as designer | `floyd_hill_project_overview.md` |
| **Preconstruction fee $4,250,000 (Section 10.1)** | **Within sourced range $3M–$6M for $500M+ projects** (`price_proposal_structure_notes.md`). The example shows $4M for Floyd Hill; Run 12's $4.25M is the closest of any run to the example. ✅ |
| **CM/GC management fee 4.75% (Section 10.2)** | **Exactly matches the example's Floyd Hill figure** of 4.75%, and sits in the sourced $500M+ range of 3.5–5.5%. ✅ Best-sourced management fee of any run. |
| 18-month preconstruction, 30/60/90% milestones, CAP negotiation | `kraemer_key_personnel_staffing.md`, `rfp_excerpt_floyd_hill.md` |

**Fabrications and unsourced specifics:**

1. **Section 9: All five "innovations" are fabricated** with invented benefit percentages:
   - **Digital Twin Technology for Real-Time Project Monitoring** — not in any source; the 15%/20%/25% benefit figures are invented.
   - **Automated Sediment Control and Water Quality Monitoring** — the general concept is in sources (SWEEP ITF monitoring), but the specific automation, the "25% compliance cost reduction", and the "zero permit violations on US 6 Clear Creek Canyon over 3 years" are all fabricated.
   - **Predictive Analytics for Rock Blasting Optimization** — ML on blasting is not in any source. The 12% over-break reduction, 8% production rate improvement, and 15% blast efficiency claims are all fabricated.
   - **Modular Bridge Construction with Prefabricated Elements (PBES)** — not in any source. The 10% cost reduction and 3–4 month schedule savings are fabricated.
   - **Integrated Construction and Traffic Management System (AI-powered)** — not in any source. The 20% lane closure reduction and 40% public complaint reduction are fabricated.

   **Partially redeeming:** the traceability manifest **honestly flags all five with `— —` and a single `NOT IN SOURCE DOCS` row** (traceability.md lines 233–244; also inline in cmgc_proposal.md line 1217). This is exactly the self-check the rubric asks for — the model identified the gap in the manifest but then did not apply the rule's consequence, which is to replace the proposal body with TODO placeholders. The "honest manifest, fabricated body" pattern is the exact failure mode the rubric warns about as "False traceability claim" in reverse.

2. **Point of Contact lazy TODO**. Line 7: `**Point of Contact:** [TODO: Contact name, title, phone, and email]`. The source has all of this: `backward_engineered/floyd_hill/kraemer_key_personnel_staffing.md` lines 9–13 give Mark Olson, VP Colorado Operations, (303) 742-3200, molson@kraemerna.com. Runs 7 and 11 correctly used this data. Run 12 leaves it as a TODO even though the source data exists — classic "lazy TODO" penalty per the rubric.

3. **Section 7 "References" sub-heading** (line 962) — unusual for a proposal safety plan. Not a fabrication per se, but atypical.

4. **Section 2 second-copy Kevin Barrett hourly rate is now a TODO** (`[TODO: PM hourly rate — market range $220-$280/hr per source docs]`) even though the *first* copy at line 76 correctly used the sourced $255/hr. One copy is correct, the other replaced it with a placeholder — the opposite direction from what you'd want.

5. **"US 6 Clear Creek Canyon project with zero permit violations over 3 years"** (line 1163) — this project is mentioned once in the example file's Mike Sandoval bio but not as a Kraemer project, and the "3 years, zero violations" stat is not in any source. Likely training-data bleed or a carry-over from fictional example content.

### Format Compliance — **D+ (5.5)**

This is Run 12's weakest dimension and the blocker keeping it from an A.

- **Duplication.** Every section from 1 through 9 appears twice in `cmgc_proposal.md`. A reader cannot tell which copy is canonical. The delivered file is unusable as a proposal without a dedup pass.
- **Traceability leakage.** Each section's traceability table appears inline in `cmgc_proposal.md` at lines 32, 213, 301, 472, 565, 639, 903, 1003/1071/1129 (Section 8 has three separate traceability blocks), 1208. This content correctly also exists in `traceability.md` — so the tables are triplicated (one in traceability.md, and two in the proposal for each section because of the section duplication itself).
- **Section 1 second copy uses wrong header level** — `# Section 1: Executive Summary` at line 22 is h1 instead of the h2 used by every other section heading and by Section 1's own first copy at line 11. This breaks heading hierarchy parsing.
- **First org chart is garbage** — lines 50–64 show a generic "Kraemer Colorado Office / Wisconsin Office" tree with no project-specific names, where every leaf says "I-70 Floyd Hill CM/GC Project." The second org chart at lines 138–170 is the correct ASCII diagram. A reader seeing the first one first would be confused.
- **No Appendices.** Run 11 had A–F; Run 12 dropped them entirely. Regression.
- **Section 5 subsection numbering mismatch.** Template has 5.1/5.2/5.3. Run 12 has 5.1/5.2/5.3/5.4 — it invented a 5.4 Schedule Risk and Contingency by splitting the template's 5.3 into two. Minor.
- **Otherwise clean hierarchy.** When you look at a single copy in isolation, the heading levels and subsection numbering are correct.

**The good news:** `grep -n "^## Section" cmgc_proposal.md` returns each section header on its own line. No merge-glue damage — the append-only approach with blank-line-leading heredocs solved the Run 10 problem cleanly.

### Terminology — **A (9.5)**

All CDOT terminology used correctly: FONSI, 1041 permit, SWEEP ITF, OPCC, CAP, CM/GC, EMR, TRIR, CSP, DBE, NTP, RFP, NCR. No misuse.

### No External Data — **B− (7.5)**

Most content traces to sources. The Section 9 innovations, the "US 6 Clear Creek Canyon 3 years zero violations" claim, and various benefit percentages are the cases where external data leaked in. Better than Run 11 on pricing, worse on innovations.

### Honest Gaps / TODO Usage — **B+ (8.5)**

**Major improvement over prior runs** on the RFP-required personnel gaps:

- ✅ Scheduling Manager: `[TODO: Scheduling Manager name and experience needed]` — **first run to handle this correctly**
- ✅ Quality Manager: `[TODO: Quality Manager name and experience needed]` — first run to not either fabricate (like Run 7) or silently omit (like Runs 10/11)
- ✅ Environmental Compliance Manager: `[TODO: Environmental Compliance Manager name and experience needed]` — same

**Also good:**
- ✅ Second Section 2 copy's Kevin Barrett rate is a TODO citing the sourced range (though the first copy had it sourced directly)
- ✅ Traceability manifest marks Scheduling/QM/ECM and Section 9 innovations as "NOT IN SOURCE DOCS"

**Lazy TODOs (rubric penalty):**
- ❌ Point of Contact at line 7 — source has the data, should have used Mark Olson's info
- ❌ Section 9 innovations stay in the proposal body as if they were sourced, despite being correctly flagged as unsourced in the manifest

Net: the best TODO discipline on personnel gaps of any run, but partially undone by the Point of Contact lazy TODO and the innovations contradiction.

---

## Traceability Manifest Review

`traceability.md` is **the most complete and honest of any run**. 267 lines, all 10 sections with proper `## Section N` headers, substantive rows per section, and explicit `— —` or "NOT IN SOURCE DOCS" flags for:
- Scheduling Manager, Quality Manager, Environmental Compliance Manager personnel gaps
- Section 9 innovations (all five marked as not in source)
- Point of Contact gap in Section 1
- Section 8 QA/QC structure (template citation, acceptable)

**Comparison:** Run 7's manifest was missing Sections 2, 4, and 8 entirely. Run 10's was missing Sections 1 and 2 and had merge-glue damage. Run 11's was the most complete structurally but cited the template as a factual source in Sections 8/9/10. Run 12's fixes all three patterns: all 10 sections present, no merge glue, and template citations are replaced with honest "NOT IN SOURCE DOCS" flags where appropriate.

**The only manifest issue:** the tables are also inline-duplicated into `cmgc_proposal.md`, which is a format problem but not a manifest problem per se.

---

## What Went Right

1. **Append-only rule worked as designed.** No section was destroyed. The Run 8 "only the last section survives" failure mode is eliminated.
2. **Best content volume ever** — even accounting for duplication, unique content is ~630 lines, comparable to Run 7's 594.
3. **First run to correctly handle RFP-required missing personnel** — Scheduling Manager, Quality Manager, Environmental Compliance Manager all present with proper TODO placeholders.
4. **Best pricing traceability of any run** — $4.25M precon fee in sourced range, 4.75% management fee exactly matching the Floyd Hill example.
5. **Best traceability manifest of any run** — 267 lines, all 10 sections, honest about gaps.
6. **Full risk register restored** — 7 categories with multiple risks each, approaching Run 7's 32-risk coverage.
7. **No merge-glue damage.** Append + heredoc produced clean section separators.

## What Went Wrong

1. **Section duplication** — every section 1–9 appears twice. After compactions, the model failed to `Read` the existing file before appending. The append-only rule protected against destruction but not against duplication.
2. **Traceability leakage** — each section's traceability table was appended inline into `cmgc_proposal.md` in addition to being correctly written to `traceability.md`. Triplicated content.
3. **Section 1 second copy uses wrong heading level** (`#` instead of `##`).
4. **First org chart (line 50) is a garbage corporate tree** with no project content. Only the second (line 138) is correct.
5. **Section 9 innovations are fabricated** despite being correctly flagged as unsourced in the manifest — honest manifest, dishonest body.
6. **Point of Contact is a lazy TODO** — source has Mark Olson's data.
7. **Appendices dropped** — Run 11 had A–F, Run 12 has none.

---

## Comparison Against Prior Runs

| Dimension | Run 7 | Run 10 | Run 11 | **Run 12** |
|---|---|---|---|---|
| Overall | B (8.0) | C (6.5) | B+ (8.5) | **B (7.8)** |
| Completeness (content) | A− | C+ | A− | **A− (best)** |
| Completeness (structure) | A | D | A | **D+ (duplication)** |
| Accuracy | C+ | C | B− | **C+ (innovations fabricated)** |
| Format Compliance | A | D+ | A | **D+ (duplication)** |
| TODO Usage | A | C | B | **B+ (best on personnel)** |
| Pricing sourcing | A (TODO) | D (wrong) | C (not TODO) | **A (matches example)** |
| Risk register depth | 32 risks | 5 risks | 13 risks | **Full 7-category** |
| QM/ECM/Scheduler coverage | Fabricated | Omitted | Omitted | **TODO (correct)** |
| Traceability manifest quality | missing sections | merge glue | template-as-source | **best overall** |
| Merge-glue bug? | N/A | yes | no | **no** |
| Duplication? | no | no | no | **yes (sections 1-9)** |
| Appendices? | no | no | yes (A–F) | **no** |
| Proposal line count | 594 | 436 | 297 | **1264** (~630 unique) |

Run 12 is the best run on **content**, **pricing**, **manifest**, **TODO discipline for personnel**, and **anti-fabrication self-check in the manifest**. It is the worst run on **structural integrity** because of the duplication. A one-line dedup script would promote it to the A range; as delivered, the duplication knocks it back to B.

---

## Verdict

Run 12 validates the append-only rule's core goal: nothing was destroyed. The failure mode has shifted from "lost content" (Runs 8, 10, the pre-run-12 overwriting run) to "duplicated content" (Run 12). That is a substantially better failure mode because the content is all present and the file can be repaired with a trivial dedup pass, whereas the old failure mode required regenerating lost content.

The remaining issue is that the `Read`-before-append resumption rule in AGENTS.md is not being executed reliably after compactions. The model follows the append rule (because it's physically enforced by the shell) but skips the `Read` check (because it's a soft instruction). To prevent duplication, the `Read` check needs to be either made unconditional (always Read before every append, even if you think you know what's there) or enforced by a different mechanism (for example, having the model append to a single rolling `current_section.md` file that gets cat-merged at the end, so there's no shared file for sections to duplicate into).

**Net grade: B (7.8 / 10)**

This is the best single run reviewed to date on content quality, pricing traceability, traceability manifest, and honest-gap discipline. It is blocked from an A by a structural duplication issue that is directly addressable in the next AGENTS.md iteration.
