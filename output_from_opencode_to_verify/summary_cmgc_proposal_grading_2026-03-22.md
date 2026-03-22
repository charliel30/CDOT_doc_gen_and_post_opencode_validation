# Grading Summary — OpenCode CM/GC Proposal Output

**Date:** 2026-03-22
**File Evaluated:** `cmgc_proposal.md`
**Evaluator:** Claude Code (Claude Opus 4.6)
**Source Documents Used:** 19 markdown files across `source_documents/`, `examples/`, `backward_engineered/`, `templates/`, and `terms_and_definitions.md`

---

## Overall Grade: B+

OpenCode produced a well-structured, project-specific proposal that closely follows the template and draws heavily from the source documents. The proposal reads as a credible CM/GC submission and demonstrates strong synthesis of the provided material. However, it fabricated personnel identities, specific safety metrics, and several claims that cannot be traced to any source document — violating the core constraint of the exercise.

---

## Criteria Scores

| Criterion | Score | Weight | Notes |
|-----------|-------|--------|-------|
| **Completeness** | 10/10 | 20% | All 10 sections + appendices present, matching template exactly |
| **Accuracy** | 6/10 | 30% | Most data traceable; significant fabrication in personnel and some claims |
| **Format Compliance** | 10/10 | 15% | Perfect adherence to template structure, section ordering, and layout |
| **Terminology** | 10/10 | 10% | CM/GC, OPCC, CAP, ICE, NTP, DBE, FONSI all used correctly and consistently |
| **No External Data** | 7/10 | 25% | Most content sourced from docs, but fabricated data fills gaps rather than using placeholders |

**Weighted Score: 8.1 / 10**

---

## Detailed Findings

### COMPLETENESS (10/10)

All sections required by the template are present:

- [x] Cover Letter
- [x] Section 1: Executive Summary
- [x] Section 2: Key Personnel and Organization (org chart + resumes + availability)
- [x] Section 3: Project Understanding (7 challenges identified, matching the 5-7 recommendation)
- [x] Section 4: Project Approach (preconstruction + construction + subcontractor management)
- [x] Section 5: Schedule (preconstruction + construction + milestones + risk/contingency)
- [x] Section 6: Risk Management (15-risk register + process description)
- [x] Section 7: Safety Plan (firm record + project hazards + program elements)
- [x] Section 8: Quality Management (org structure + testing protocols + documentation)
- [x] Section 9: Innovation and Value Engineering (4 innovations with descriptions, benefits, feasibility)
- [x] Section 10: Price Proposal (preconstruction fee + personnel rates + management fee + assumptions)
- [x] Appendices (listed, appropriately noted as "would be attached")

No sections are missing or truncated.

---

### ACCURACY (6/10)

#### Correctly Sourced Data (examples)

These claims are directly traceable to source documents:

| Claim in Proposal | Source Document |
|---|---|
| 8-mile stretch, MM 241-248, Clear Creek County | `floyd_hill_project_overview.md` |
| $905M (2025 adjusted), $700M (2020) | `floyd_hill_project_overview.md` |
| FONSI signed January 12, 2023 | `floyd_hill_environmental_constraints.md` |
| 10,000+ ft new bridges, 115-ft tall, 1+ mile main bridge | `floyd_hill_project_overview.md` |
| 135 blasts, 600,000+ tons removed, 97,000 tons East Section | `floyd_hill_project_overview.md` |
| 2,000 ft climb, 600 ft descent in <2 miles, 7% grade | `floyd_hill_project_overview.md` |
| Wildlife crossings at Genesee/Empire, 2 mi fencing, 7 escape ramps, 1 deer guard | `floyd_hill_environmental_constraints.md` |
| 90% reduction in wildlife-vehicle collisions | `floyd_hill_environmental_constraints.md` |
| East/Central/West phasing with correct dates | `floyd_hill_project_overview.md` |
| Text "floydhill" to 21000 | `floyd_hill_project_overview.md` |
| SWEEP ITF, UCCWA, 1041 permit, Section 106 | `floyd_hill_environmental_constraints.md`, `stakeholder_requirements.md` |
| DBE goal 12.5% | `rfp_excerpt_floyd_hill.md` |
| 30% self-performance requirement | `cdot_cmgc_procurement_process.md` |
| Kraemer NA: VMT ~$70M, I-25 North ~$700M, I-25 South Gap ~$350M | `contractor_qualifications_profile.md` |
| 1,200 field employees, 550,000 work hours, 162 subcontractors (152 CO-based) | `contractor_qualifications_profile.md` |
| Bonding capacity >$1 billion | `contractor_qualifications_profile.md` |
| Courtesy shuttle service | `floyd_hill_project_overview.md` |
| Detour routes (US 6 Exit 244, Homestead Rd Exit 247) | `floyd_hill_project_overview.md` |
| 5,600 linear feet drainage pipe | `floyd_hill_project_overview.md` |
| Nighttime closures 9 PM-5 AM | `floyd_hill_project_overview.md` |
| 4 innovations (accelerated casting, water quality monitoring, BIM-4D, optimized blasting) | `example_cmgc_proposal_floyd_hill.md` |
| 25% RFI reduction from BIM | `example_cmgc_proposal_floyd_hill.md` |
| 12% over-break reduction from blast optimization | `example_cmgc_proposal_floyd_hill.md` |

#### Fabricated Data

These claims **cannot be traced to any source document** and appear to be invented by OpenCode:

| Fabricated Claim | Issue | What Source Docs Actually Say |
|---|---|---|
| **Mark Olson, Vice President — Colorado Operations** | Name and title invented | No Kraemer personnel named in any source doc |
| **Phone (303) 555-0178, email molson@kraemer-na.com** | Contact info invented | No contact info for Kraemer in source docs |
| **Kevin Barrett, PE — Project Manager** (and all bio details) | Entire person fabricated | No Kraemer personnel named; example used fictional "Mountain West Constructors" with different names |
| **Jeff Carpenter — Superintendent** (and all bio details) | Entire person fabricated | Same as above |
| **Lisa Nguyen — Estimating Manager** (and all bio details) | Entire person fabricated | Same as above |
| **Dan Romero — Safety Manager** (and all bio details) | Entire person fabricated | Same as above |
| **Maria Santos — Quality Manager** (and all bio details) | Entire person fabricated | Same as above |
| **Tom Haskins — Environmental Compliance Manager** (and all bio details) | Entire person fabricated | Same as above |
| **EMR 0.74, TRIR 1.0, DART 0.5** | Specific metrics invented | Source says only "EMR consistently <0.80"; example proposals use 0.72/1.1/0.6 and 0.68/0.9/0.4 for fictional firms |
| **"zero lost-time incidents over combined 800,000 work hours"** | Fabricated safety claim for Dan Romero | Not in any source doc |
| **"$1 billion in CDOT highway and bridge work over the past decade"** | Extrapolated/fabricated | Source says "$1 billion bonding capacity" — different claim |
| **"three CM/GC contracts on the I-70 Mountain Corridor totaling over $1.1 billion"** | **Inaccurate and fabricated** | I-25 North (~$700M) and I-25 South Gap (~$350M) are on **I-25**, not I-70. Only VMT (~$70M) is I-70. |
| **Preconstruction fee $4,500,000** | Modified from source | Example uses $4,000,000; this is a different number without source basis |
| **CM/GC management fee 4.50%** | Modified from source | Example uses 4.75%; within documented range but not sourced |
| **All personnel hourly rates** ($250, $200, $190, $180, $175/hr) | Fabricated | Different from example rates ($245, $195, $185, $175, $170); within documented ranges but not sourced |
| **All personnel estimated hours** (3,400, 2,900, 1,700, 1,300, 900) | Fabricated | Different from example (3,200, 2,800, 1,600, 1,200, 800) |
| **Specific certifications for fabricated personnel** (PE Colorado, PMP, CCM, etc.) | Fabricated | Certifications are plausible but assigned to non-existent people |

#### Inaccurate Claims

| Claim | Problem |
|---|---|
| "three CM/GC contracts on the I-70 Mountain Corridor totaling over $1.1 billion" | I-25 North and I-25 South Gap are on I-25, not in the I-70 Mountain Corridor. Only VMT is I-70. The $1.1B total also doesn't add up correctly ($70M + $700M + $350M = $1.12B — close but presented misleadingly as "I-70 corridor"). |

---

### FORMAT COMPLIANCE (10/10)

- Template section structure followed exactly
- Cover letter → Executive Summary → Key Personnel → Project Understanding → Project Approach → Schedule → Risk Management → Safety → Quality → Innovation → Price Proposal → Appendices
- Organizational chart included (ASCII art format — appropriate for markdown)
- Risk register in table format per template guidance
- Safety record in table format
- QA/QC testing protocols in table format
- Price proposal with breakdowns in tables
- Schedule presented as both tables and ASCII Gantt chart
- Appendices appropriately noted as "would be attached"

---

### TERMINOLOGY (10/10)

All CDOT and CM/GC terminology used correctly:

- CM/GC (Construction Manager/General Contractor) — correct usage throughout
- OPCC (Opinion of Probable Construction Cost) — correctly described as periodic estimates at 30/60/90% design
- CAP (Construction Agreed-upon Price) — correctly described as negotiated price
- ICE (Independent Cost Estimate) — correctly referenced as benchmark
- NTP (Notice to Proceed) — correct usage
- DBE (Disadvantaged Business Enterprise) — correct participation goal cited
- FONSI — correctly identified as environmental clearance
- Open-book pricing — correctly described
- Self-performance — correct percentage requirements (30% construction, 75% preconstruction implied)
- Best Value Selection — correctly implied through the proposal structure
- Constructability Review — correctly described process

No terminology misuse detected.

---

### NO EXTERNAL DATA (7/10)

**Sourced correctly:** The vast majority of project-specific data (scope, budget, environmental requirements, phasing, stakeholders, milestones, traffic management, innovations) comes directly from source documents.

**Problematic areas:**

1. **Personnel fabrication is the largest violation.** The AGENTS.md explicitly stated: *"If a piece of information is not in the provided documents, do not fabricate it. Either omit it or note that it was not available in the source material."* OpenCode fabricated 6 complete personnel profiles with names, years of experience, certifications, project histories, and dedication percentages. It should have used placeholders like `[Key Personnel Name — Not available in source documents]`.

2. **Safety metrics were invented** rather than stating "EMR consistently below 0.80" (which is what the source docs say) or using the metrics from the example proposal with proper attribution.

3. **Pricing was modified** from the example rather than sourced. The changes appear designed to make the proposal look "original" rather than copied, but they result in unsourced numbers.

4. **The inaccurate "I-70 Mountain Corridor" claim** suggests the model was synthesizing/embellishing rather than strictly reporting source data.

**Mitigating factor:** The template and examples essentially *demand* personnel details and specific pricing. There is genuine tension between "follow the template" (which requires named personnel with resumes) and "only use source data" (which doesn't include Kraemer personnel names). A more careful approach would have been to note this gap explicitly.

---

## Summary of Strengths

1. **Excellent structure** — Perfect template adherence with all required sections
2. **Highly project-specific** — Uses real Floyd Hill data throughout (mile markers, tonnage, elevation, creek names, stakeholder names, wildlife specifics, phasing dates)
3. **Strong environmental/stakeholder detail** — Accurately captures FONSI, 1041 permit, SWEEP ITF, UCCWA, CPW requirements
4. **Well-sourced innovations** — All 4 innovations traceable to example proposals with quantified benefits
5. **Comprehensive risk register** — 15 risks covering all required categories with specific mitigations
6. **Professional tone** — Reads as a credible CM/GC proposal; avoids generic boilerplate
7. **Good synthesis** — Successfully weaves data from multiple source documents into a coherent narrative

## Summary of Weaknesses

1. **Personnel fabrication** — The single largest issue. Six complete fictional personnel profiles violate the core "no fabrication" constraint
2. **Inaccurate corridor claim** — Misattributing I-25 projects to the "I-70 Mountain Corridor" is both fabricated and factually wrong
3. **Modified pricing** — Changed numbers from the example without source basis, creating untraceable data
4. **Invented safety metrics** — Specific EMR/TRIR/DART numbers not in source docs
5. **No placeholders used** — When source data was missing, OpenCode fabricated rather than flagging the gap as instructed

---

## Recommendation

The proposal demonstrates that OpenCode can effectively synthesize structured source material into a professional deliverable. The structure, terminology, and project-specific detail are strong. The primary failure mode is **fabrication when source data is missing** — OpenCode chose to fill gaps with plausible-sounding invented data rather than using placeholders as instructed. This is the most important behavior to address in future iterations, either through stronger prompting in AGENTS.md or by providing source documents that cover all required data points (e.g., including a personnel roster for Kraemer).
