# Grading Summary — OpenCode CM/GC Proposal Output (Round 4)

**Date:** 2026-04-07
**File Evaluated:** `cmgc_proposal.md` + `traceability.md` (root of `output_from_opencode_to_verify/`)
**Evaluator:** Claude Code (Claude Opus 4.6)
**Source Documents Used:** 21 markdown files (same corpus as Round 3)
**Key Change This Round:** New OpenCode run with same source documents — testing reproducibility and consistency

---

## Overall Grade: B-

Round 4 is a regression. The proposal leaves Sections 5, 6, 8, and 9 as TODOs — but two of those (Risk and Schedule) have source data available that was not used. This is not cautious honesty; it is incomplete work. The traceability manifest compounds the problem by claiming "NOT IN SOURCE DOCS" for data that IS in the source documents (notably the full risk register in `project_risk_register.md`). Meanwhile, the Executive Summary and Section 4 still contain content borrowed from the example proposal (Mountain West Constructors — a fictional company) and attributed to Kraemer, creating an inconsistency: the proposal is lazy in some sections while uncritically fabricating in others.

---

## Criteria Scores

| Criterion | Score | Weight | R1 | R2 | R3 | Notes |
|-----------|-------|--------|----|----|----|----|
| **Completeness** | 6/10 | 20% | 10 | 10 | 10 | Sections 5, 6, 8, 9 empty; risk register and schedule data available but unused |
| **Accuracy** | 8/10 | 30% | 6 | 9 | 9 | Personnel/safety correct; traceability manifest falsely claims "NOT IN SOURCE DOCS" for available data; example-to-Kraemer attribution errors |
| **Format Compliance** | 8/10 | 15% | 10 | 10 | 10 | Template structure followed but many hollow sections |
| **Terminology** | 10/10 | 10% | 10 | 10 | 10 | All CM/GC terminology correct |
| **No External Data** | 8/10 | 25% | 7 | 9 | 9.5 | Innovation claims from example attributed to Kraemer; dedication % fabricated; lazy TODOs don't earn credit for "avoiding fabrication" |

**Weighted Score: 7.7 / 10** (R3: 9.6, R2: 9.4, R1: 8.1)

---

## What Regressed from Round 3

### 1. Completeness — multiple sections now empty

Round 3 had substantive content in every section. Round 4 reduces these to bare TODOs:

| Section | Round 3 | Round 4 | Source Data Available? |
|---------|---------|---------|----------------------|
| 5.1 Preconstruction Schedule | Filled with milestones | `[TODO]` | Partial — project_overview.md has milestone dates |
| 5.2 Construction Schedule | Filled with visualization | `[TODO]` | Partial — phasing table in project_overview.md |
| 5.3 Schedule Risk/Contingency | Filled with contingency details | `[TODO]` | Yes — risk register has schedule risks (S-1 through S-5) |
| 6.1 Risk Register | Filled with risk table | `[TODO]` | **Yes — full risk register exists as source doc** |
| 6.2 Risk Management Process | Filled with process description | `[TODO]` | Partial — risk register has mitigation strategies |
| 8 Quality Management | Filled | `[TODO]` | No — fair to leave as TODO |
| 9 Innovation and VE | Filled with 2 innovations | `[TODO]` | No Kraemer-specific data — fair to leave as TODO |

The most notable miss: `project_risk_register.md` contains a complete, detailed risk register with 28 risks across 7 categories. OpenCode left Section 6 as a TODO despite having this source data available. This alone is a significant completeness gap.

### 2. Inconsistent conservatism

The proposal can't decide whether to use example-derived content or not:

- **Conservative (good):** Sections 8, 9 left as TODO because no Kraemer-specific quality or innovation data exists. This is correct.
- **Conservative (missed opportunity):** Section 6 left as TODO despite a risk register source doc existing. Section 5 left as TODO despite schedule data in project_overview.md.
- **Not conservative (problem):** Executive Summary still presents Mountain West's innovations as Kraemer's proposals. Section 4.2 still claims "Our team has completed 4 segmental bridge projects in mountain terrain" — a Mountain West claim, not sourced for Kraemer.

---

## What's Still Working

### 1. Personnel data correctly sourced (same as R3)

All four named personnel match `kraemer_key_personnel_staffing.md` exactly:

| Person | Data Match |
|--------|-----------|
| Kevin Barrett, PE — PM | 24 yrs, 3 projects, certs, $255/hr, 3,200 hrs ✓ |
| Jeff Carpenter — Superintendent | 28 yrs, 3 projects, blasting certs ✓ |
| Lisa Nguyen — Estimating Manager | 16 yrs, AACE CCP, OPCC experience ✓ |
| Dan Romero, CSP — Safety Manager | 14 yrs, CSP, OSHA 30 ✓ |

### 2. Safety metrics correctly sourced

| Metric | Proposal | Source | Match? |
|--------|----------|--------|--------|
| EMR | 0.74 | 0.74 | ✓ |
| TRIR | 1.02 | 1.02 | ✓ |
| Industry Avg EMR | 1.00 | 1.00 | ✓ |
| Industry Avg TRIR | 3.0 | 3.0 | ✓ |
| DART | Not included | Not in source | ✓ Correct to omit |

### 3. Project Understanding section (Section 3) is strong

All 7 challenges are traceable to `floyd_hill_project_overview.md`. Specific facts (10,000 ft of bridges, 115-ft bridge, wildlife crossings at Genesee/Empire, three-section phasing with dates) all verified against source.

### 4. Corporate point of contact correctly sourced

Mark Olson, VP Colorado Operations, (303) 742-3200, molson@kraemerna.com — all from `kraemer_key_personnel_staffing.md` ✓

### 5. Missing personnel correctly flagged as TODO

Quality Manager, Environmental Compliance Manager, and Scheduling Manager are noted as needing addition — consistent with the source doc noting these are "staffed from the firm's project management group based on project requirements."

---

## Remaining Issues

### 1. Example proposal content attributed to Kraemer (MEDIUM)

The Executive Summary states:
> "We propose two innovations... an accelerated segmental bridge casting cycle using traveling formwork that reduces the bridge schedule by approximately 4 months, and a real-time water quality monitoring system with automated sediment control that exceeds SWEEP ITF requirements."

These are Innovation 1 and Innovation 2 from the **example proposal** (Mountain West Constructors, a fictional company). No Kraemer source document describes these innovations. The traceability manifest does not cite a source for these claims.

Similarly, Section 4.2 states: "Our team has completed 4 segmental bridge projects in mountain terrain." This is Mountain West's claim from the example. The Kraemer source docs describe segmental bridge capability but don't state a project count.

### 2. Dedication percentages fabricated (MINOR — same as R3)

| Person | Claimed Dedication | In Source? |
|--------|-------------------|------------|
| Barrett | "100% to Floyd Hill project upon NTP" | No |
| Carpenter | "100% to Floyd Hill project" | No |
| Nguyen | "100% during preconstruction" | No |
| Romero | "100% to Floyd Hill project" | No |

The source doc has no dedication percentages. These are likely copied from the example proposal's pattern (which shows 100% for most personnel). Should be `[TODO: dedication percentage]`.

### 3. Specific approach numbers from example (MINOR)

Section 4.2 includes specific numbers that come from the example proposal, not Kraemer sources:
- "core samples every 50 feet"
- "Blast monitoring stations at 100-foot intervals"
- "7-day casting cycle per segment"

These are plausible but unsourced for Kraemer specifically.

### 4. Risk register data available but unused (COMPLETENESS)

`project_risk_register.md` contains 28 risks with likelihood, impact, scores, and mitigations across 7 categories (Geotechnical, Environmental, Traffic, Schedule, Cost, Design, Stakeholder). This could have directly populated Section 6. OpenCode left it as `[TODO]`.

### 5. Traceability manifest gaps

The manifest correctly identifies sourced claims and TODO gaps, but it does not flag the example-derived content in the Executive Summary or Section 4. Claims like "accelerated segmental bridge casting cycle" and "4 segmental bridge projects" appear in the proposal without traceability entries — they should either be traced to the example (with a note that it's from a fictional firm) or flagged as unsourced.

The manifest also has duplicate TODO sections (Quality Management appears twice, Innovation/VE appears twice, Schedule appears twice).

---

## Round-over-Round Comparison

| Metric | Round 1 | Round 2 | Round 3 | Round 4 | Change R3→R4 |
|--------|---------|---------|---------|---------|--------------|
| Weighted Score | 8.1 | 9.4 | 9.6 | 7.7 | **-1.9** |
| Fabricated personnel | 6 profiles | 0 (23 TODOs) | 0 (4 sourced, 3 TODOs) | 0 (4 sourced, 3 TODOs) | Same |
| Fabricated metrics | EMR/TRIR/DART | TODO | Sourced + TODO | Sourced (no DART) | Same |
| Example-to-Kraemer blending | Present | Reduced | Minor (Innovation 2) | Present (Exec Summary, S4.2) | Regressed |
| Sections with substantive content | 10/10 | 10/10 | 10/10 | 6/10 | **Regressed** |
| Available source data left unused | N/A | Minimal | Minimal | Risk register, schedule data | **Regressed** |
| Traceability manifest | None | 170+ | 180+ | ~37 + 30 TODO sections | Simpler but has gaps |

---

## Key Takeaway

Round 4 is the weakest result since Round 1 and exposes a scoring vulnerability: **a TODO-heavy proposal can appear "accurate" and "no external data" clean simply by not doing the work.** The grading criteria have been updated (in CLAUDE.md) to distinguish legitimate TODOs (no source data exists) from lazy TODOs (source data available but unused). Under the original criteria, Round 4 would have scored ~8.3; under the corrected criteria, it scores 7.7.

The core issues:
1. **OpenCode failed to discover or use the risk register source file** — leaving Section 6 empty despite `project_risk_register.md` containing 28 fully structured risks.
2. **The traceability manifest makes false claims** — stating "NOT IN SOURCE DOCS" for data that IS in the source documents.
3. **Inconsistent application of caution** — leaves Risk and Schedule as TODO while freely borrowing Mountain West's innovations for the Executive Summary.

Reproducibility is also a concern: same source documents, same AGENTS.md, but Round 4 scored 1.9 points lower than Round 3.

### Recommendations for AGENTS.md

1. **Explicit instruction to use the risk register:** If a risk register source document exists, Section 6 should be populated from it, not left as TODO.
2. **Clear boundary on example vs. source data:** AGENTS.md should state that example proposals demonstrate FORMAT only — their specific claims, innovations, and metrics must NEVER be attributed to the real contractor. Currently this is hinted at but not explicit.
3. **Consistency check instruction:** "If you include content in the Executive Summary, ensure the corresponding detail section also has content, or note it as a preview of forthcoming detail."
