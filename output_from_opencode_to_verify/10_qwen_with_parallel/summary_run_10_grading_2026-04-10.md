# Grading Summary — Run 10 (qwen3, parallel protocol)

**Graded:** 2026-04-10
**Run folder:** `output_from_opencode_to_verify/10_qwen_with_parallel/`
**AGENTS.md state at time of run:** post-protocol (coordinator → per-unit worker → merger fan-out instructions present)
**Execution mode:** The protocol ran — merger concatenated per-unit files — but no `temp/` directory was committed, so the intermediate artifacts are not available for forensics. Possibly sequential rather than truly parallel.

---

## Overall Grade: **C (6.5 / 10)**

The protocol mechanically executed (files were assembled in order, headers were emitted per unit) but two independent problems damaged the output: a merger newline bug that glued every section header onto the previous paragraph, and thinner/incomplete content in several sections compared to Run 7 on the same model. Accuracy is also hurt by a misassigned preconstruction fee computation and generic innovations not attributable to Kraemer in any source.

---

## Per-Criterion Scores

### Completeness — **C+ (7.0)**

All ten top-level sections exist by content, but several are missing required subsections or omit RFP-mandated key personnel:

| Template element | Present? | Notes |
|---|---|---|
| Cover Letter | ✅ | Dated "October 15, 2021" — unsourced |
| Section 1: Executive Summary | ⚠️ | Content present but header is **glued to the cover letter's last line** (`Kraemer North America, LLC# Section 1: Executive Summary` on line 30) |
| Section 2.1 Org Chart | ✅ | ASCII chart with 4 named roles |
| Section 2.2 Key Personnel Resumes | ⚠️ | **Only 4 personnel named (Kevin, Jeff, Lisa, Dan). RFP explicitly requires Quality Manager and Environmental Compliance Manager as key personnel** (`backward_engineered/floyd_hill/rfp_excerpt_floyd_hill.md` lines 108–109). These positions are omitted entirely — not even as TODO placeholders. |
| Section 2.3 Team Availability | ✅ | Brief |
| Section 3: Project Understanding | ✅ | 7 challenges, but header glued mid-line |
| Section 4.1 Preconstruction Approach | ✅ | Labeled "Preconstruction Services Approach" |
| Section 4.2 Construction Approach | ✅ | Labeled "Construction Approach" |
| Section 4.3 Subcontractor Management | ❌ | **Missing entirely.** Template requires it. |
| Section 5.1 Preconstruction Schedule | ❌ | **No milestone/date table.** Run 7 has this. |
| Section 5.2 Construction Schedule | ✅ | Abbreviated table |
| Section 5.3 Schedule Risk and Contingency | ⚠️ | Light — no weather float methodology or specific risk items |
| Section 6.1 Risk Identification | ⚠️ | **Only 5 risks listed in a top-5 table.** Source `project_risk_register.md` has 30+ risks across 7 categories. Run 7 included the full register. |
| Section 6.2 Risk Mitigation Strategies | ⚠️ | Condensed, no category breakdown |
| Section 7: Safety Plan | ⚠️ | Missing Public Safety Plan subsection that Run 7 includes |
| Section 8: Quality Management | ✅ | Complete but generic |
| Section 9: Innovation and VE | ✅ | 4 innovations proposed (but see Accuracy) |
| Section 10.1 Preconstruction Services Fee | ⚠️ | Has a breakdown table but the total ($816K) is wrong — see Accuracy |
| Section 10.2 CM/GC Management Fee Percentage | ✅ | 8.5% (see Accuracy) |
| Section 10.3 Fee Assumptions | ✅ | |
| Appendices | ❌ | Missing |

### Accuracy — **C (6.5)**

Core facts about Kraemer personnel, EMR, blast counts, and project milestones are correctly sourced. The main issues cluster in Section 10 and Section 9.

**Correctly sourced (spot-verified):** Same as Run 7 — Mark Olson, Kevin Barrett (including PE #42871 and $255/hr), Jeff Carpenter, Lisa Nguyen, Dan Romero, EMR 0.74, TRIR 1.02, Kraemer HQ, I-25 North/South Gap/VMT project values, 600,000+ tons, 135 blasts, 40,000+ tons central/west as of late 2024, 7% east grade, FONSI, 1041 permit, SWEEP ITF. Section 3 is particularly well-grounded.

**Fabrications and methodological errors:**

1. **Preconstruction services fee total of $816,000 is wrong.** Run 10 builds a table where every category (Constructability Reviews 800 hrs, Cost Estimating 1,200 hrs, VE 600 hrs, Risk Mgmt 400 hrs, PM 200 hrs) is billed at $255/hr — the PM rate — regardless of which role would actually perform the work. The total happens to equal Kevin Barrett's sourced 3,200 hrs × $255 = $816,000, but that is *Kevin's personal precon time*, not the total precon services fee. The sourced reality check: `examples/price_proposals/price_proposal_structure_notes.md` lines 39–41 give the preconstruction fee range for $500M+ projects as **$3M–$6M+**, and line 43 states *"Floyd Hill example: $4M precon fee on a $905M project."* Run 10's $816K figure is ~5× too low and directly contradicts the sourced range without any TODO or acknowledgment.

2. **Personnel Cost Estimates table fabricates hours and rates for non-PM roles.**
   - Lisa Nguyen: 1,200 hrs at $180/hr → $216,000. Neither number is sourced. (Source range for Estimating Manager is $175–$210; $180 is within range but not a sourced value.)
   - Jeff Carpenter: 1,000 hrs at $170/hr → $170,000. Hours fabricated; rate is bottom of $170–$200 superintendent range.
   - Dan Romero: 600 hrs at $150/hr → $90,000. Hours fabricated; rate is bottom of $150–$190 safety manager range.
   - Grand total $1,292,000 is derived from these fabricated inputs.

3. **CM/GC management fee = 8.5%.** Sourced range for $500M+ projects is **3.5–5.5%** (`price_proposal_structure_notes.md` lines 60–62); the Floyd Hill example uses 4.75%. 8.5% is outside the applicable range. Run 7 also missed this (used 7.5%) but Run 10's error is larger.

4. **Section 9 innovations are not attributable to Kraemer in any source.** Run 10 proposes:
   - Advanced formwork systems for segmental bridges
   - Drone-based survey and progress monitoring
   - BIM coordination for utility conflicts
   - Precast concrete elements for retaining walls

   None of these are named as Kraemer innovations anywhere in `source_documents/`, `backward_engineered/`, or the example proposal. Worse, `backward_engineered/other_projects/cmgc_comparison_across_projects.md` line 72 explicitly warns: *"Be specific about innovations — generic 'we'll use BIM' scores lower than 'we used BIM on [specific project] and reduced RFIs by 30%'."* Run 10 used exactly the generic "we will utilize BIM" pattern the source warns against.

5. **Cover letter dated "October 15, 2021"** — unsourced and implausible (the source material is all from 2021–2025 and the proposal is supposedly being submitted in 2026). Likely training-data bleed.

6. **Quality Manager and Environmental Compliance Manager omitted without placeholders.** The RFP requires them. Per the grading rubric this is a "lazy TODO" failure flipped inside-out — instead of an unjustified TODO, it's a required section silently dropped. Under Completeness this shows up above; under Accuracy it is at least honest in that nothing was fabricated here.

**Good news:** Unlike Run 7, Run 10 did not copy Rachel Torres or Mike Sandoval from the example proposal. On that specific fabrication vector, Run 10 followed the rule where Run 7 did not.

### Format Compliance — **D+ (5.5)**

This is Run 10's weakest dimension and the single most fixable one.

**The merge-glue bug.** A `grep -n "Section [0-9]" cmgc_proposal.md` reveals that every one of Sections 1 through 10 has its header glued directly to the last line of the previous section with no newline separator. Examples:

- Line 30: `Kraemer North America, LLC# Section 1: Executive Summary`
- Line 38: `...full project completion in 2029.# Section 2: Key Personnel and Organization`
- Line 112: `...would compromise their Floyd Hill commitment.# Section 3: Project Understanding`
- Line 136: `...stakeholder satisfaction.# Section 4: Project Approach`
- Line 182: `...sediment during blasting operations# Section 5: Schedule`
- Line 224: `...resource allocation and coordination challenges.# Section 6: Risk Management`
- Line 256: `...collaborative problem-solving throughout the project lifecycle.# Section 7: Safety Plan`
- Line 295: `...for projects adjacent to waterways# Section 8: Quality Management`
- Line 353: `...I-70 Veterans Memorial Tunnels Expansion and I-25 South Gap.# Section 9: Innovation and Value Engineering`
- Line 387: `...mountain corridor projects in the I-70 corridor.# Section 10: Price Proposal`

All ten top-level headers are invisible to any tool that looks for `^## Section` or `^# Section` at line start. The traceability manifest has identical damage: `| Stakeholder complexity | ... |## Section 4: Project Approach` on a single line.

**Root cause:** the merger used an unsafe concatenation (equivalent to `cat f1 f2 f3 > out`) without guaranteeing a newline separator between files, and the worker files did not end in a trailing blank line. The AGENTS.md version active at the time of this run specified the merger step but did not yet spell out the shell recipe that guarantees separators. That guidance was added post-run-10 in commit `927994b`.

**Other format issues:**

- No document title at all — no `# CM/GC Proposal — …` h1 anywhere. The file opens directly with `# Cover Letter`.
- Heading hierarchy is inconsistent: Cover Letter and Sections 1–10 use `#` (h1); subsections use `##` (h2); sub-subsections use `###`. That makes every top-level section parse as a new document title, not a section of one document.
- Missing Appendices.

### Terminology — **A− (9.0)**

Correct use of FONSI, 1041 permit, SWEEP ITF, OPCC, CAP, CM/GC, EMR, CSP. One nit: the document uses "CAP (Construction Agreed-upon Price)" in Section 10 which is correct, but also says "Construction Agreed-upon Price" without the CM/GC acronym explanation in places where it would help a reader new to the domain. Not a penalty.

### No External Data — **B− (7.0)**

The October 15, 2021 cover letter date and the generic drone/BIM/precast innovations are the main cases where content appears to come from training data rather than the source files. Core project facts are all sourced.

### Honest Gaps / TODO Usage — **C (6.5)**

Zero TODO placeholders in the document. Given the gaps the rubric considers legitimate (Quality Manager name, Environmental Compliance Manager name, exact preconstruction fee, individual hourly rates for non-PM roles), Run 10 should have produced at least 4–6 TODOs. Instead it silently omitted some fields and fabricated others.

---

## Traceability Manifest Review

`traceability.md` has rows for Sections 3, 4, 5, 6, 7, 8, 9, 10. **Missing: Section 1 (Executive Summary) and Section 2 (Key Personnel).** Section 2 is the more serious gap because it's where personnel claims sit. The manifest also suffers the same merge-glue damage as the proposal file — every `## Section N:` header after the first is glued to the previous table's final row.

All present rows appear plausible against the files they cite, but the manifest never flags the $816K total, the 8.5% management fee, or the generic innovations as "NOT IN SOURCE DOCS" — which would have caught them.

---

## What Went Right

- Core project facts (topography, scope, milestones, environmental constraints, stakeholder list, Kraemer personnel, safety record) are correctly sourced.
- Section 3 Project Understanding is genuinely good — traceable to `floyd_hill_project_overview.md` throughout.
- The protocol mechanically executed: every top-level section is present in content, every worker appears to have written its own file with its own header, and a merger ran. This is evidence the fan-out pattern is viable.
- Did not fabricate Rachel Torres or Mike Sandoval — avoided Run 7's worst fabrication by simply omitting those positions instead of copying from the example.

## What Went Wrong

1. **Merge-glue bug:** every section header is hidden mid-paragraph. Purely cosmetic in the sense that the content is there, but devastating for any downstream reader or grader.
2. **Incomplete coverage:** Section 4.3 missing, 5.1 missing, 6.1/6.2 heavily truncated (5 risks vs. 32 in source), Public Safety Plan missing from Section 7, Appendices missing entirely.
3. **Key Personnel incomplete:** only 4 of 6+ required roles named, with no placeholders for the missing ones.
4. **Section 10 Preconstruction Fee methodology is wrong** and produces a figure (~$816K) that is ~5× below the sourced range ($3M–$6M for $500M+ projects) and ~5× below the example's own Floyd Hill figure ($4M).
5. **Management fee (8.5%) further outside sourced range** than Run 7 was.
6. **Generic innovations** that the source docs explicitly warn will score lower.

---

## Verdict

Run 10 is weaker than Run 7 on the same base model. The protocol that was added to AGENTS.md between the two runs appears to have *reduced* content quality — sections are thinner, required subsections are missing, and the model appears to have spent more context budget on process compliance than on synthesis. The only dimension where Run 10 beats Run 7 is that it avoided the Rachel Torres / Mike Sandoval fabrication; everything else regressed.

The merge-glue bug is fixed in the AGENTS.md state after commit `927994b` and should not recur in future runs. The content thinness, however, is an unsolved problem that may point to the protocol overhead itself being a cost rather than a benefit for short-context models.

**Net grade: C (6.5 / 10)**
