# Grading Summary — Run 11 (qwen3, protocol + merge-recipe fix)

**Graded:** 2026-04-10
**Run folder:** `output_from_opencode_to_verify/11_qwen_better_cat/`
**AGENTS.md state at time of run:** post-`927994b` — the Short-Context Execution Protocol is present with the explicit merger shell recipe, worker file format rules (h2 header, trailing blank line), relative-path rule, and merge-glue verification step.
**Execution mode:** Protocol ran. No `temp/` directory was committed, so the intermediate artifacts are not available for forensics. Merge step clearly worked.

---

## Overall Grade: **B+ (8.5 / 10)**

This is the best-structured run reviewed so far. The merge-glue bug that sank Run 10 is fixed, every template section and subsection is present in the correct order, all six Appendices are included (no prior run had them), the traceability manifest covers all 10 sections plus all appendices, and the two most severe fabrication patterns from Run 7 (copying fictional personnel from the example proposal) are absent. What holds it back from an A is thin section bodies relative to Run 7 and a handful of specific fabrications in pricing, bonding, and the cover letter date, plus a pattern in the traceability manifest of citing the *template* as a source for factual claims.

---

## Per-Criterion Scores

### Completeness — **A− (9.0)**

Structurally the most complete run reviewed. Every template element is present and correctly ordered:

| Template element | Present? | Notes |
|---|---|---|
| Cover Letter | ✅ | Dated October 15, 2024 (unsourced — see Accuracy) |
| Section 1: Executive Summary | ✅ | Proper header, three-priority framing, innovations previewed |
| Section 2.1 Org Chart | ✅ | ASCII org chart with named roles |
| Section 2.2 Key Personnel Resumes | ⚠️ | Same gap as Run 10: **only 4 personnel (Kevin Barrett, Jeff Carpenter, Lisa Nguyen, Dan Romero)**. RFP requires Quality Manager and Environmental Compliance Manager (`backward_engineered/floyd_hill/rfp_excerpt_floyd_hill.md` lines 108–109). Neither is named nor shown as TODO. |
| Section 2.3 Team Availability | ✅ | |
| Section 3: Project Understanding | ⚠️ | 7 challenges enumerated, but body is about 15 lines — thinner than Run 7's 25+ lines. |
| Section 4.1 Preconstruction Approach | ✅ | |
| Section 4.2 Construction Approach | ✅ | |
| Section 4.3 Subcontractor Management | ✅ | **Present** (Run 10 dropped this) |
| Section 5.1 Preconstruction Schedule | ✅ | **Present but thin** — 3 bullet points, no milestone table with dates |
| Section 5.2 Construction Schedule | ✅ | |
| Section 5.3 Schedule Risk and Contingency | ✅ | |
| Section 6.1 Risk Identification | ✅ | Full risk table with **13 risks** and ID codes (G-1…G-5, E-1, E-2, T-1, T-2, S-1, S-2, C-1, D-1). Better than Run 10's 5, thinner than Run 7's 32 and the source register's 30+. |
| Section 6.2 Risk Mitigation Strategies | ⚠️ | Only a short paragraph — no category breakdown like Run 7's |
| Section 7: Safety Plan | ⚠️ | 14 lines. Missing the Public Safety Plan subsection. Run 7 has ~75 lines here. |
| Section 8: Quality Management | ⚠️ | 11 lines — a bullet list with no substantive detail |
| Section 9: Innovation and VE | ✅ | Two specific innovations, same as Run 7 |
| Section 10.1 Preconstruction Services Fee | ✅ | Specific $ figure (see Accuracy) |
| Section 10.2 CM/GC Management Fee Percentage | ✅ | Specific % (see Accuracy) |
| Section 10.3 Fee Assumptions | ✅ | |
| **Appendix A–F** | ✅ | **First run to include Appendices.** A (Prequalification), B (Bonding), C (Insurance — TODO), D (DBE), E (Project Experience — TODO), F (Safety Record) all present. |

**Net:** the scaffold is the fullest of any run. Body density is the soft spot — Sections 7 and 8 read like outlines rather than the 2–3 page narratives the template calls for.

### Accuracy — **B− (7.5)**

Substantial improvement over Runs 7 and 10 on the worst fabrication patterns (no Rachel Torres, no Mike Sandoval, no US 550/160 project), but several specific claims still don't trace to any source file.

**Correctly sourced (spot-verified):**

| Claim | Source |
|---|---|
| Kraemer HQ Wisconsin; 100+ years | `backward_engineered/floyd_hill/contractor_qualifications_profile.md` |
| Mark Olson VP / Kraemer | `backward_engineered/floyd_hill/kraemer_key_personnel_staffing.md` |
| Kevin Barrett, PE, all details (PE #42871, U. Wisconsin-Madison, 24 yrs, $255/hr, 3,200 hrs) | same |
| Jeff Carpenter (28 yrs, 200 blasts, Certified Blaster, I-25 South Gap and EJMT past projects) | same |
| Lisa Nguyen (16 yrs, 7 yrs CM/GC, CCP, Colorado State U.) | same |
| Dan Romero, CSP (14 yrs, OSHA 30) | same |
| I-25 North ~$700M, I-25 South Gap ~$350M, VMT ~$70M | `contractor_qualifications_profile.md` |
| EMR 0.74, TRIR 1.02 (3-yr rolling), EMR consistently below 0.80 | `kraemer_safety_performance.md` |
| **"Third westbound lane functioning as Express Lane"** | `floyd_hill_project_overview.md:26` ✅ |
| **"Nearly 4 miles of retaining walls"** | `floyd_hill_project_overview.md:37` ✅ |
| 600,000+ tons, 135+ blasts, 2,000 ft climb, 600 ft descent | `floyd_hill_project_overview.md` |
| $905M 2025-adjusted budget | `floyd_hill_project_overview.md` |
| Three-section phasing dates (East Jul 2023–Sum 2026 etc.) | `floyd_hill_project_overview.md` |
| **152 of 162 subcontractors Colorado-based** | `contractor_qualifications_profile.md:43` and `:117` ✅ (manifest cites wrong file but the fact is real) |
| Daily toolbox talks, weekly inspections, stop-work authority, OSHA 30/10 requirements | `kraemer_safety_performance.md` |
| 18-month preconstruction phase, 30/60/90% milestones | `kraemer_key_personnel_staffing.md` |

**Fabrications and unsourced specifics:**

1. **Bonding capacity "exceeding $1 billion for single projects"** (Appendix B). The source that mentions bonding is `backward_engineered/floyd_hill/rfp_excerpt_floyd_hill.md:68` — *"Minimum $500M bonding capacity (single project)"* — which is the RFP minimum, not Kraemer's actual capacity. "$1 billion" is not in any source file. This should have been `[TODO: Kraemer's actual bonding capacity — RFP requires minimum $500M]`.

2. **Cover letter dated "October 15, 2024"**. No October 2024 date appears in any source file. Run 10 used "October 15, 2021" (also unsourced); Run 11's variation on the same invented date strongly suggests it is from training data, not sources. Should have been a TODO or the run's actual date.

3. **Preconstruction fee of $3,500,000 (Section 10.1)**. Not in any source file. The sourced *range* for $500M+ projects is $3M–$6M+ (`examples/price_proposals/price_proposal_structure_notes.md:39–41`), and the example shows a Floyd Hill figure of $4M. Run 11's $3.5M is *within* the sourced range, which is better than Run 10's $816K (below range), but it's still a specific committed number with no source — the correct behavior per the rubric is a TODO that cites the range, exactly like Run 7 did. **The traceability manifest compounds the error by citing `templates/proposal_format/cmgc_proposal_template.md | Section 10.1` as the source**, which is wrong twice: the template is a format guide, not a fact source, and the template does not contain a $3.5M figure.

4. **CM/GC management fee of 6.5% (Section 10.2)**. Sourced range for $500M+ projects is 3.5–5.5% (`price_proposal_structure_notes.md:60–62`); the example uses 4.75%. 6.5% is outside the applicable range. Better than Run 10's 8.5% and Run 7's 7.5%, but still unsourced. Manifest again cites the template as source.

5. **"Dedicated safety department with full-time safety managers on each project"** (Appendix F). Source says *"Full-time Safety Managers on all projects exceeding $20M in construction value"* (`kraemer_safety_performance.md`). Floyd Hill is >$20M so the claim is effectively true but the phrasing drops the $20M qualifier. Minor.

6. **"Zero fatalities goal"** (Appendix F). Not found in source during verification. Possibly legitimate; flagged for review.

**Traceability manifest methodological issue:** Several rows in Sections 8, 9, and 10 cite `templates/proposal_format/cmgc_proposal_template.md` as the source for factual claims ("QA/QC organizational structure", "Accelerated segmental bridge casting using traveling formwork", "Preconstruction fee of $3,500,000", "CM/GC management fee percentage of 6.5%", etc.). This is a category error: the template file tells the agent what topics to cover, not what the facts are. A correctly-built manifest should either trace these back to source docs / backward-engineered files or mark them `[TODO] NOT IN SOURCE DOCS`. Citing the template is a way of dodging that self-check. This pattern appears to be where the run's fabrications accumulated — the model treated "the template says to include this" as equivalent to "the source docs prove this."

### Format Compliance — **A (9.5)**

- `grep -n "^## Section" cmgc_proposal.md` returns one line per section (26, 36, 113, 130, 163, 192, 216, 230, 241, 250). **No merge-glue damage.** The shell recipe from commit `927994b` worked.
- Clean heading hierarchy: one `#` document title, `##` sections and appendices, `###` subsections.
- All template subsection numbering honored (2.1/2.2/2.3, 4.1/4.2/4.3, 5.1/5.2/5.3, 6.1/6.2, 10.1/10.2/10.3).
- Appendices A–F present and consistently formatted.
- Traceability manifest has clean headers for every section and every appendix — the most complete manifest structure of any run.
- One nit: no blank line between the title and the Cover Letter header. Purely cosmetic.

### Terminology — **A (9.5)**

FONSI, SWEEP ITF, OPCC, CAP, CM/GC, EMR, TRIR, CSP, DBE, NTP all used correctly. "Express Lane" correctly identified as tolled/westbound. No misuse detected.

### No External Data — **B (8.0)**

Most content traces to source files. The "October 15, 2024" date, the "$1 billion bonding capacity", and to a lesser extent the specific pricing numbers are the cases where external or invented data leaked in. The run avoided the worst external-data failure of Run 7 (copying fictional names from the example).

### Honest Gaps / TODO Usage — **B (8.0)**

Two TODO placeholders used, both in appendices:

- Appendix C (Insurance): `[TODO: Insert current insurance certificates for Kraemer North America]` — well-formed
- Appendix E (Project Experience Detail Sheets): `[TODO: Insert detail sheets for I-70 Veterans Memorial Tunnels Expansion, I-25 North Express Lanes, and I-25 South Gap projects]` — well-formed

**What's missing:** Should have used TODOs for:
- Quality Manager and Environmental Compliance Manager personnel
- Total preconstruction fee (a la Run 7's handling)
- Individual hourly rates for non-PM roles
- Cover letter date
- Bonding capacity exact figure

This is much better than Run 10 (zero TODOs) but still below Run 7's handling of the precon fee. The pattern is: Run 11 only used TODOs in the Appendices where it was obvious the data wasn't present — it did not use them for the subtler gaps where partial data exists in source docs but the exact value doesn't.

---

## Traceability Manifest Review

The manifest is the most structurally complete of any run reviewed: 10 section headers plus 6 appendix headers, all in order, all with rows. Rows in Sections 1–7 are largely sound and cite real source files. Sections 8, 9, and parts of 10 start citing the template as a source — that is where fabrication accumulates. The Bonding Capacity row in Appendix B cites `contractor_qualifications_profile.md | Firm Overview` for a claim ($1 billion) that is not in that file (source only mentions the $500M RFP minimum) — a false traceability claim, which per the CLAUDE.md rubric is an Accuracy error in the manifest itself.

---

## What Went Right

1. **Merge-glue bug fixed.** The explicit shell recipe and trailing-blank-line rule added to AGENTS.md in commit `927994b` worked as designed. Every section header is on its own line.
2. **Most complete scaffold of any run.** All 10 sections + all subsections + all 6 appendices in correct order.
3. **No fabricated personnel from the example proposal.** Run 11 did not copy Rachel Torres or Mike Sandoval as Run 7 did.
4. **No invented CDOT projects.** Run 11 does not mention the "US 550/160 Connection" that Run 7 fabricated.
5. **Traceability manifest covers all sections and all appendices** — most complete of any run.
6. **Section 4.3 Subcontractor Management and all three subsections of Section 5 are present** (Run 10 dropped 4.3 and 5.1).
7. **TODOs used correctly** in Appendices C and E for truly missing data.
8. **Management fee of 6.5%** — still outside the sourced range but closer to it than Runs 7 (7.5%) or 10 (8.5%).
9. **Precon fee of $3.5M** — within the sourced range, unlike Run 10's $816K.

## What Went Wrong

1. **Quality Manager and Environmental Compliance Manager omitted without placeholders** — same gap as Run 10. Should have been TODOs.
2. **Section bodies are thin.** Section 7 Safety is 14 lines, Section 8 Quality is 11 lines, Section 6.2 Mitigation is a single paragraph, Section 3 is about half the length of Run 7's. The structural scaffold is complete but the flesh is lean. This continues the pattern observed in Run 10 where the protocol overhead appears to crowd out synthesis budget.
3. **Several specific values committed without source grounding** — $1 billion bonding, $3.5M precon fee, 6.5% management fee, October 15 2024 date. All should have been TODOs.
4. **Traceability manifest cites the template as source for factual claims** in Sections 8, 9, and 10. This is a category error that bypasses the self-check mechanism the manifest is supposed to provide.

---

## Comparison to Prior Runs

| Dimension | Run 7 | Run 10 | **Run 11** |
|---|---|---|---|
| Overall | B (8.0) | C (6.5) | **B+ (8.5)** |
| Completeness | A− (9.0) | C+ (7.0) | **A− (9.0)** |
| Accuracy | C+ (7.0) | C (6.5) | **B− (7.5)** |
| Format Compliance | A (9.5) | D+ (5.5) | **A (9.5)** |
| Terminology | A (9.5) | A− (9.0) | **A (9.5)** |
| No External Data | B (8.0) | B− (7.0) | **B (8.0)** |
| Honest Gaps / TODOs | A (9.5) | C (6.5) | **B (8.0)** |
| Proposal line count | 594 | 436 | 297 |
| Appendices present? | ❌ | ❌ | ✅ |
| Merge-glue bug? | N/A | yes | **no** |
| Fabricated personnel from example? | yes (Torres, Sandoval) | no | **no** |
| Section 4.3 present? | yes | no | **yes** |
| Full risk register? | 32 risks | 5 risks | **13 risks** |

Run 11 is the new leader on structure and accuracy hygiene. It is still thinner in body content than Run 7 (297 lines vs 594), which means the "protocol overhead steals synthesis budget" hypothesis from the Run 10 grade is not fully disproven — it is mitigated but not resolved. If we could get Run 7's content depth + Run 11's structural completeness, we would have an A-range run.

---

## Verdict

Run 11 is the best overall run reviewed to date. The specific technical fixes from commit `927994b` (merge shell recipe, trailing-blank-line rule, grep-based glue check) all worked: the merger damage from Run 10 is completely gone. The appendices show up for the first time. The traceability manifest structure is the most complete of any run. And the model avoided the two worst fabrication patterns from Run 7.

The remaining weaknesses are all in the "content depth" and "honest-gap discipline" dimensions, and they are consistent with the pattern observed across Runs 10 and 11: when the model is asked to follow a longer procedural protocol, it produces a more complete skeleton but thinner flesh, and it leans more heavily on the template as a crutch for factual claims.

**Net grade: B+ (8.5 / 10)**
