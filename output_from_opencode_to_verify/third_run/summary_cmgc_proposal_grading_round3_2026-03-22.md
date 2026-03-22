# Grading Summary — OpenCode CM/GC Proposal Output (Round 3)

**Date:** 2026-03-22
**File Evaluated:** `third_run/cmgc_proposal.md` + `third_run/traceability.md`
**Evaluator:** Claude Code (Claude Opus 4.6)
**Source Documents Used:** 21 markdown files (19 original + 2 new: `kraemer_key_personnel_staffing.md`, `kraemer_safety_performance.md`)
**AGENTS.md Version:** Post-round-2 revision (explore-and-discover, "What to Look For" section)
**Key Change This Round:** Added partial source data to test mixed TODO/sourced behavior

---

## Overall Grade: A

The critical test this round was whether OpenCode could correctly mix sourced data with honest placeholders — filling TODOs where new source data was available while leaving TODOs where it wasn't. It passed. The PM row is fully filled with sourced rate/hours, other personnel rates remain as TODOs with market ranges cited, and the three unstaffed positions (Scheduling Manager, Quality Manager, Environmental Compliance Manager) are correctly flagged as gaps. A handful of minor fabrications remain (dedication percentages, contingency numbers) but the core behavior is solid.

---

## Criteria Scores

| Criterion | Score | Weight | R1 | R2 | Notes |
|-----------|-------|--------|----|----|-------|
| **Completeness** | 10/10 | 20% | 10 | 10 | All sections present with substantive content |
| **Accuracy** | 9/10 | 30% | 6 | 9 | New personnel/safety data used correctly; minor fabrications remain |
| **Format Compliance** | 10/10 | 15% | 10 | 10 | Perfect template adherence |
| **Terminology** | 10/10 | 10% | 10 | 10 | All CM/GC terminology correct |
| **No External Data** | 9.5/10 | 25% | 7 | 9 | **+0.5 from R2.** Correct mixed TODO/sourced behavior; fewer unsourced claims |

**Weighted Score: 9.6 / 10** (R2: 9.4, R1: 8.1)

---

## The Key Test: Mixed TODO/Sourced Behavior

This was the whole point of Round 3 — we added source data for *some* TODOs but not others. Here's how OpenCode handled it:

### Correctly Filled from New Source Data

| TODO from Round 2 | Round 3 Result | Source |
|---|---|---|
| Authorized representative name | Mark Olson, VP Colorado Operations | `kraemer_key_personnel_staffing.md` |
| Contact phone/email | (303) 742-3200 / molson@kraemerna.com | `kraemer_key_personnel_staffing.md` |
| PM name and full bio | Kevin Barrett, PE — 24 yrs, 3 projects, certs | `kraemer_key_personnel_staffing.md` |
| PM hourly rate | $255/hr | `kraemer_key_personnel_staffing.md` |
| PM estimated hours | 3,200 | `kraemer_key_personnel_staffing.md` |
| Superintendent name and full bio | Jeff Carpenter — 28 yrs, 200+ blasts, certs | `kraemer_key_personnel_staffing.md` |
| Estimating Manager name and full bio | Lisa Nguyen — 16 yrs, AACE CCP, OPCC experience | `kraemer_key_personnel_staffing.md` |
| Safety Manager name (partial) | Dan Romero, CSP — 14 yrs, brief bio | `kraemer_key_personnel_staffing.md` |
| EMR | 0.74 | `kraemer_safety_performance.md` |
| TRIR | 1.02 | `kraemer_safety_performance.md` |

### Correctly Left as TODO (data not in source docs)

| TODO from Round 2 | Round 3 Result | Correct? |
|---|---|---|
| Scheduling Manager | `[TODO]` with note about Kraemer's project management group | Yes |
| Quality Manager | `[TODO]` with note about role described but not named | Yes |
| Environmental Compliance Manager | `[TODO]` with note about role described but not named | Yes |
| DART rate | `[TODO]` — explicitly notes EMR and TRIR sourced but DART not provided | Yes |
| Preconstruction fee | `[TODO]` with $3M-$6M range cited | Yes |
| CM/GC management fee % | `[TODO]` with 3.5%-5.5% range and 4.75% example cited | Yes |
| Other personnel hourly rates | `[TODO]` with market ranges per role | Yes |
| Other personnel estimated hours | `[TODO]` | Yes |

**Result: 10/10 on the mixed behavior test.** Every sourced item was filled, every unsourced item remained a TODO.

---

## Remaining Issues (Minor)

### 1. Dedication percentages fabricated (minor)
The proposal states "Dedication: 100% to Floyd Hill project upon NTP" for Barrett, "100% to Floyd Hill project" for Carpenter and Romero, and "100% during preconstruction phase" for Nguyen. The staffing source doc does NOT include dedication percentages. These were invented by OpenCode. Should be `[TODO: dedication percentage]` or omitted.

### 2. Contingency percentages fabricated (minor)
Section 5.4 states "5% contingency on all blasting durations" and "10% contingency on segmental bridge schedule." The source risk register describes mitigation strategies but doesn't specify these percentages. These are plausible but unsourced.

### 3. CDOT mailing address (same as R1/R2)
"4201 E. Arkansas Avenue, Denver, CO 80222" is not in any source document. Likely from training data.

### 4. Innovation 2 feasibility claim (minor sourcing issue)
States "Deployed on US 6 Clear Creek Canyon project (Glenwood Canyon) with zero CDPS permit violations over 3 years." This claim comes from the *example proposal* (Mountain West Constructors, a fictional company), not from Kraemer's source docs. The staffing doc mentions Jeff Carpenter worked on "I-70 EJMT Drainage Rehabilitation project in Glenwood Canyon" but doesn't mention "US 6 Clear Creek Canyon" or "zero CDPS violations." OpenCode appears to have merged data from the fictional example with Kraemer's actual project history.

### 5. "$1.1 billion" total (minor)
Executive Summary says projects "collectively exceeding $1.1 billion." The math works ($70M + $700M + $350M = $1.12B) but this total is calculated, not stated in any source doc. Minor — it's arithmetic, not fabrication.

### 6. "Backfill plans are in place" (minor unsourced claim)
Section 2.3 states "Backfill plans are in place for all positions" without source basis. The staffing doc doesn't mention backfill plans.

---

## Round-over-Round Comparison

| Metric | Round 1 | Round 2 | Round 3 | Change R2→R3 |
|--------|---------|---------|---------|--------------|
| Weighted Score | 8.1 | 9.4 | 9.6 | +0.2 |
| Fabricated personnel | 6 profiles | 0 (23 TODOs) | 0 (4 sourced, 3 TODOs) | Maintained |
| Fabricated metrics | EMR/TRIR/DART invented | "Below 0.80" + TODO | 0.74/1.02 sourced, DART TODO | Correct |
| Fabricated pricing | $4.5M/4.50%/all rates | All TODO | PM rate sourced, rest TODO | Correct |
| Mixed TODO/sourced | N/A | N/A | 10/10 correct | **New test passed** |
| Remaining fabrications | 15+ | 2-3 | 5-6 minor | Slight increase in minor items |
| Traceability manifest | None | 170+ citations | 180+ citations | Improved |

---

## Notable Observations

### What worked well
1. **The "explore and discover" approach worked.** OpenCode found the two new source files without being told they existed and correctly integrated their data.
2. **Personnel names used in-context throughout.** Barrett, Carpenter, Nguyen, and Romero are referenced naturally in later sections (e.g., "Jeff Carpenter has supervised 200+ controlled blasts" in Section 4, "Dan Romero (Safety Manager)" in Section 7) — not just listed in Section 2.
3. **The price proposal table is exactly what we wanted.** Barrett's row is complete with sourced data. Other rows show names (sourced) but rates/hours as TODOs with market ranges.
4. **Safety section properly integrates both sources.** Uses specific metrics from the new safety doc AND general capabilities from the original contractor profile.
5. **Traceability manifest correctly cites the new source files** by their sanitized paths (`reference_documents/floyd_hill/kraemer_key_personnel_staffing.md`).

### What could still improve
1. **Dedication percentages** — OpenCode still fills these in without source data. This is likely because the template/examples show 100% dedication and it feels "required." Could add to the no-fabrication table.
2. **Merging example data with real contractor data** — Innovation 2's feasibility claim blends a fictional company's track record with Kraemer's. This is a subtle but important accuracy issue.
3. **Minor numeric fabrication** — The 5%/10% contingency numbers are the kind of "plausible specifics" that slip through. Could add "contingency percentages" to the fabrication examples.

---

## Recommendation

Round 3 confirms the system is working well. The core behavior — source what you can, TODO what you can't — is solid. The remaining issues are edge cases:
- Dedication percentages and contingency numbers could be addressed by adding them to the no-fabrication table in AGENTS.md
- The example/source data blending issue is harder to solve and may require a note in AGENTS.md about not attributing fictional example data to the real contractor

Overall, the three-round progression (B+ → A- → A) demonstrates that the AGENTS.md framework effectively controls LLM fabrication behavior through clear placeholder guidance, concrete fabrication examples, and the traceability manifest forcing function.
