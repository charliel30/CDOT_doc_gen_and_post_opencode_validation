# Grading Summary — Run 7 (qwen3, single-pass)

**Graded:** 2026-04-10
**Run folder:** `output_from_opencode_to_verify/7_run_qwen3/`
**AGENTS.md state at time of run:** pre-protocol (no fan-out instructions, no "GIANT WARNING" section)
**Execution mode:** Single pass, no temp/ directory, no worker fan-out

---

## Overall Grade: **B (8.0 / 10)**

Solid structure and coverage, but two specific fabrication patterns hurt Accuracy: fictional personnel copied from the example deliverable and an unsourced CDOT project reference. The management fee and several hourly rates are also outside or off the sourced ranges. The output is nonetheless the cleanest of any run reviewed to date — 594 lines, every template section present, correct heading hierarchy, and one properly-formatted TODO placeholder.

---

## Per-Criterion Scores

### Completeness — **A− (9.0)**

All ten template sections are present with substantive content. Template subsections are honored:

| Template element | Present? | Notes |
|---|---|---|
| Cover Letter | ✅ | Proper format, dated April 2026 |
| Section 1: Executive Summary | ✅ | Three-priority framing, innovations previewed |
| Section 2.1 Org Chart | ✅ | ASCII org chart with named roles |
| Section 2.2 Key Personnel Resumes | ✅ | 6 people with resume-style bios (but see Accuracy) |
| Section 2.3 Team Availability | ✅ | Brief |
| Section 3: Project Understanding | ✅ | 7 challenges enumerated |
| Section 4.1 Preconstruction Approach | ✅ | |
| Section 4.2 Construction Approach | ✅ | Detailed |
| Section 4.3 Subcontractor Management | ✅ | Present (Run 10 omits this) |
| Section 5.1 Preconstruction Schedule | ✅ | Milestone table with dates |
| Section 5.2 Construction Schedule | ✅ | |
| Section 5.3 Schedule Risk and Contingency | ✅ | |
| Section 6.1 Risk Identification | ✅ | **Full 32-risk register** organized by 7 categories with ID codes (G-1, E-1, T-1, S-1, C-1, D-1, K-1 families) matching `project_risk_register.md` |
| Section 6.2 Risk Mitigation Strategies | ✅ | Mitigation grouped by category |
| Section 7: Safety Plan | ✅ | Includes Public Safety Plan subsection |
| Section 8: Quality Management | ✅ | |
| Section 9: Innovation and VE | ✅ | 2 specific innovations |
| Section 10.1 Preconstruction Services Fee | ✅ | Legit TODO placeholder for total fee |
| Section 10.2 CM/GC Management Fee Percentage | ✅ | (see Accuracy) |
| Section 10.3 Fee Assumptions | ✅ | |

**Minor gap:** No Appendices section. Template lists these as "not counted toward page limit" so it's a soft miss.

### Accuracy — **C+ (7.0)**

Two significant fabrications and several range-miss issues. Core project facts are sourced correctly.

**Correctly sourced (spot-verified):**

| Claim | Source |
|---|---|
| Kraemer HQ Plain, Wisconsin; 100+ years | `backward_engineered/floyd_hill/contractor_qualifications_profile.md` |
| Mark Olson VP / (303) 742-3200 / molson@kraemerna.com | `backward_engineered/floyd_hill/kraemer_key_personnel_staffing.md` |
| Kevin Barrett, PE #42871, University of Wisconsin-Madison, 24 yrs, $255/hr, 3,200 hrs | same |
| Jeff Carpenter 28 yrs, 200 blasts, Certified Blaster | same |
| Lisa Nguyen 16 yrs, 7 yrs CM/GC, CCP | same |
| Dan Romero, CSP, 14 yrs | same |
| I-25 North Express Lanes ~$700M, I-25 South Gap ~$350M, VMT ~$70M | `contractor_qualifications_profile.md` |
| EMR 0.74, TRIR 1.02 vs. 1.00 / 3.0 industry | `kraemer_safety_performance.md` |
| 135 blasts, 600,000+ tons, 7% east grade, 115-ft bridge | `floyd_hill_project_overview.md` |
| FONSI, 1041 permit, SWEEP ITF, AtkinsRealis designer | `floyd_hill_project_overview.md`, `floyd_hill_environmental_constraints.md` |
| Three-section phasing dates (East July 2023–Sum 2026, etc.) | `floyd_hill_project_overview.md` |

**Fabrications (each is a direct AGENTS.md rule violation):**

1. **Rachel Torres (Quality Manager) and Mike Sandoval (Environmental Compliance Manager)** — both are **fictional names from the example proposal**, `examples/cmgc_proposals/example_cmgc_proposal_floyd_hill.md` lines 117 and 124. The example's fictional contractor is "Mountain West." AGENTS.md explicitly states: *"The examples use fictional contractor names and personnel. Do NOT copy those fictional names into your output."* Run 7 copied both names and then invented resume details around them:
   - "Rachel Torres — 12 years QA/QC… Led quality program on CDOT US 550/160 Connection — zero structural non-conformances… ACI certifications, NICET Level III." None of this is in any source.
   - "Mike Sandoval — 14 years… MS Environmental Science, University of Colorado… led US 6 Clear Creek Canyon compliance." None of this is in any source.

   The correct behavior would have been `[TODO: Quality Manager name, experience, certifications — not specified in source docs]` and likewise for ECM. The source personnel file explicitly says QM/ECM *"are staffed from the firm's project management group based on project requirements and individual availability at time of award"* — i.e., the source is telling the agent to use a placeholder.

2. **"US 550/160 Connection ($475M)"** referenced in the Executive Summary as one of Kraemer's three CDOT CM/GC projects, and again attributed to Rachel Torres. No such project exists in any source file; Kraemer's three actual CDOT CM/GC projects per source are VMT, I-25 North, and I-25 South. This is fabricated, likely from training data.

**Range misses (less severe, but still not grounded):**

3. **CM/GC management fee = 7.5%.** Sourced range for $500M+ projects is 3.5–5.5% (`examples/price_proposals/price_proposal_structure_notes.md`). 7.5% is in the $50–200M bracket, not Floyd Hill's $905M bracket. The example used 4.75%. Run 7's figure is outside the applicable range.
4. **Lisa Nguyen $185/hr, Dan Romero $175/hr, Rachel Torres $175/hr, Mike Sandoval $175/hr** — these are picks within sourced ranges ($175–$210 for Estimating, $150–$190 for Safety, $150–$185 for QM, $160–$190 for ECM), not exact sourced values. Per the grading rubric and AGENTS.md guidance, these should have been `[TODO: <role> hourly rate — market range $X-$Y per source docs]` rather than committed specific numbers.
5. **Preconstruction hour estimates for non-PM roles** (Estimating 2,800, Safety 1,200, Quality 800, ECM 1,000) — only Kevin's 3,200 hours are in the source. The others are fabricated.

### Format Compliance — **A (9.5)**

- Clean heading hierarchy: `#` title, `##` sections, `###` subsections.
- Every numbered section has a visible top-level header.
- Template subsection numbering (2.1, 2.2, 4.1, 4.2, 4.3, 5.1, 5.2, 5.3, 6.1, 6.2, 10.1, 10.2, 10.3) is preserved.
- Section 1 incorrectly placed *after* the cover letter in the rendered order — this is what the template specifies, so correct.
- Tables in Section 4 phasing, Section 5 schedule, and Section 10 pricing are readable.
- Minor nit: Section 9 drops a blank line separator between it and Section 8's last paragraph.

### Terminology — **A (9.5)**

CDOT-specific terms used correctly and consistently throughout: FONSI, 1041 permit, SWEEP ITF, OPCC, CAP, CM/GC, NTP, EMR, TRIR, DBE, CSP, NCR. No misuse detected.

### No External Data — **B (8.0)**

Most content is sourced. The Rachel Torres / Mike Sandoval fabrications, the US 550/160 project, and the 7.5% fee are the cases where content comes from either the example (explicitly prohibited) or training data. The traceability manifest does not include any row for the fabricated personnel, which would have caught the issue per the rubric's "NOT IN SOURCE DOCS" self-check rule.

### Honest Gaps / TODO Usage — **A (9.5)**

One TODO placeholder, correctly formatted:
> `[TODO: Insert actual preconstruction fee — comparable projects range $3M-$6M per source docs]`

This is textbook — it cites the sourced range so a human has context. Credit for honesty.

**What's missing:** Should have used TODOs for Quality Manager and Environmental Compliance Manager personnel and for individual hourly rates. Instead those gaps were filled with fabricated specifics, which is the failure mode the rubric penalizes most heavily.

---

## Traceability Manifest Review

`traceability.md` has rows for Sections 1, 3, 5, 6, 7, 9, and 10. **Missing sections: 2 (Key Personnel), 4 (Project Approach), 8 (Quality Management).** Section 2 is the most glaring omission because that is where the fabricated personnel appear — a complete manifest would have been forced to mark Rachel Torres and Mike Sandoval as "NOT IN SOURCE DOCS" and triggered the self-check. The incomplete manifest allowed the fabrication to slip through.

All present rows appear plausible and consistent with the claims they cite.

---

## What Went Right

- Clean single-pass execution without a merge step, so no structural damage.
- Proper heading hierarchy and subsection numbering throughout.
- Full 32-entry risk register matching the source `project_risk_register.md` structure — this is the strongest section of any run reviewed so far.
- Correct use of TODO placeholder for the total preconstruction fee.
- Extensive Section 4 construction approach with specific techniques traceable to the example and contractor profile.
- Proper Public Safety Plan subsection in Section 7 that Run 10 drops.

## What Went Wrong

1. **Copied fictional personnel names from the example proposal** — a direct violation of an explicit AGENTS.md rule. Two fabricated key personnel with invented resumes.
2. **Invented a fourth CDOT CM/GC project** ("US 550/160 Connection, $475M") that does not exist in sources.
3. **Management fee (7.5%) picked from wrong sourced bracket.**
4. **Traceability manifest is incomplete** (missing Sections 2, 4, 8), which disabled the self-check that would have caught the fabricated personnel.

---

## Verdict

Run 7 is the strongest run reviewed so far on structure and coverage. It is held back from an A by a pair of specific fabrications that are entirely preventable — the agent had the right rule in front of it ("do not copy fictional names") and violated it anyway. If the traceability manifest had been built as the proposal was written (as AGENTS.md instructs), the rule would likely have caught the fabrication because there would have been no source to cite for Rachel Torres or Mike Sandoval.

**Net grade: B (8.0 / 10)**
