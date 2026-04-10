# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repository contains **documentation only** — no code. It serves two purposes:

1. **Document Collection**: A curated set of source documents related to CDOT (Colorado Department of Transportation) highway construction procurement, specifically the CM/GC (Construction Manager/General Contractor) process. These documents will be fed to an OpenCode CLI instance to test its ability to synthesize a final deliverable.

2. **Output Verification**: After OpenCode generates its output, the result is placed in `output_from_opencode_to_verify/` and Claude Code evaluates it against the source documents, producing a graded summary file.

## Project Context: CDOT Highway Construction Procurement

CDOT uses several project delivery methods for highway and bridge construction. The primary one relevant here is **CM/GC (Construction Manager/General Contractor)**, an alternative delivery method where a contractor is engaged during the design phase to provide constructability input, then transitions to general contractor for construction. The I-70 Floyd Hill project (Floyd Hill to Veterans Memorial Tunnels, ~$905M) is the reference project, delivered via CM/GC by Kraemer North America.

Key terminology is defined in `terms_and_definitions.md`.

## Document Structure

```
.
├── terms_and_definitions.md         # Key procurement/bidding terminology
│
├── source_documents/                # Real-world reference material
│   ├── project_specs/               # Project scope, plans, environmental docs
│   ├── rfp_and_procurement/         # RFP excerpts, solicitation requirements
│   ├── evaluation_criteria/         # How proposals are scored/ranked
│   └── regulatory_and_federal/      # FHWA rules, state statutes, CDOT policies
│
├── templates/                       # Shows OpenCode the expected output format
│   ├── proposal_format/             # Overall proposal structure and layout
│   └── section_guides/              # How to write each section of a proposal
│
├── examples/                        # Real or reconstructed proposal examples
│   ├── cmgc_proposals/              # Full CM/GC proposal examples
│   ├── technical_proposals/         # Technical proposal section examples
│   └── price_proposals/             # Price/cost proposal section examples
│
├── backward_engineered/             # Source docs reverse-engineered from proposals
│   ├── floyd_hill/                  # Docs derived from I-70 Floyd Hill project
│   └── other_projects/              # Docs derived from other CDOT projects
│
└── output_from_opencode_to_verify/  # OpenCode's output goes here for grading
```

- Summary/grading files in `output_from_opencode_to_verify/` follow the naming pattern: `summary_DESCRIPTION_DATE.md`

## Key Workflow

### Phase 1: Document Gathering
1. Research CDOT CM/GC procurement process, terminology, and requirements
2. Find real proposal examples (particularly for I-70 Floyd Hill or similar CDOT projects)
3. If full proposals aren't publicly available, backward-engineer source documents from whatever proposal fragments are found
4. Include templates/examples that demonstrate the expected output format

### Phase 2: OpenCode Testing (external)
Documents from this repo are given to an OpenCode CLI instance (on a different machine) which synthesizes them into a `cmgc_proposal.md` — using **only** the provided documents, not the web.

### Phase 3: Verification
1. OpenCode's output is placed in `output_from_opencode_to_verify/`
2. Claude Code reviews the output against all source documents in this repo
3. A `summary_DESCRIPTION_DATE.md` grading file is produced evaluating completeness, accuracy, and adherence to the templates/examples

## Verification Grading Criteria

When evaluating OpenCode's output:
- **Completeness**: Does it cover all sections present in the template/example documents?
- **Accuracy**: Is all content traceable to the provided source documents (no fabricated data)?
- **Format Compliance**: Does it follow the structure shown in the template/example files?
- **Terminology**: Are CDOT-specific terms used correctly per `terms_and_definitions.md`?
- **No External Data**: The output should contain nothing that couldn't be derived from the provided documents

### TODO Placeholders: When to Credit, When to Penalize

A `[TODO]` placeholder is **only appropriate when no source data exists** to fill that section. When grading:
- **Legitimate TODO** (credit for honesty): The section requires data that genuinely does not appear in any source document. Example: leaving Quality Manager name as TODO when no name exists in the source docs.
- **Lazy TODO** (penalize as incomplete work): The section has a TODO but source data IS available in the provided documents. Example: leaving the Risk Register section as TODO when `project_risk_register.md` exists with full risk data.
- **False traceability claim**: If the traceability manifest states "NOT IN SOURCE DOCS" for data that IS in the source documents, this is an accuracy error in the manifest itself and should be penalized under Accuracy.

A proposal that leaves everything as TODO would score perfectly on "No External Data" but fail on Completeness. The grader must cross-reference each TODO against the actual source documents to determine which type it is.

### The `temp/` Directory: Optional Forensic Evidence

OpenCode runs that follow the Short-Context Execution Protocol in `AGENTS.md` fan work out across per-unit workers and stage their intermediate files in `output_from_opencode_to_verify/<run>/temp/` (a `plan.md`, plus `<slug>_proposal.md` and `<slug>_traceability.md` per unit). The user may or may not commit this directory for a given run. Both cases are legitimate and neither affects the grade on its own.

When grading:

- **Grade the final merged files first.** `cmgc_proposal.md` and `traceability.md` at the root of the run's folder are the deliverable. Completeness, Accuracy, Format Compliance, Terminology, and No External Data are all judged against those files, exactly as before. The absence of `temp/` is never a penalty — the user simply did not check it in.
- **If `temp/` is present, use it as forensic context, not as additional scored content.** It lets you answer questions the final files cannot, such as:
  - Which specific units completed vs. failed, when the final deliverable is partial or missing entries.
  - Whether `plan.md` correctly enumerated every template-required unit (including unnumbered ones like cover letters, appendices, signature blocks). A plan that omitted required units is a Completeness failure even if every planned unit was produced well.
  - Whether a unit that looks wrong in the merged file was already wrong in its `<slug>_proposal.md`, or was corrupted during merge. This helps separate worker failures from merger failures in the written summary, but both still count against the same Completeness/Accuracy criteria.
  - Whether retry files (`<slug>_retry.md`) or sub-unit files (`<slug>__<child>_...md`) exist, indicating the run hit context pressure and how the worker handled it.
- **Do not double-count.** If a unit is complete in `temp/` but missing from the merged `cmgc_proposal.md`, grade it as missing from the deliverable — the merger is part of the run. You may note in the written summary that the worker did produce the content and the merger dropped it, which is useful diagnostic information for the user, but the Completeness score still reflects the final merged file.
- **Do not penalize runs that did not use the protocol at all.** Older runs (pre-protocol) have no `temp/` directory and produce their deliverable in a single pass. Grade them normally against the same criteria.

## Important: Keeping Files in Sync

- **`AGENTS.md` and `agents_md_templates/AGENTS_TEMPLATE.md` must stay in sync.** When you change `AGENTS.md`, always propagate the same structural/behavioral changes to the template (replacing domain-specific content with `{{placeholders}}`). The template is the reusable version of `AGENTS.md` for future projects.
- **`package_for_opencode.sh` controls what OpenCode sees.** If you add/rename/remove folders in the repo, check whether the script's exclude list or renaming logic needs updating.
- **`CLAUDE.md` document structure** (the tree diagram below) should be updated if folders are added or renamed.

## Reference Project

- **Project**: I-70 Floyd Hill to Veterans Memorial Tunnels
- **URL**: https://www.codot.gov/projects/i70floydhill
- **Scope**: 8-mile stretch of I-70, westbound Express Lane, highway realignment, bridge rebuilds, frontage road, interchange improvements
- **Delivery Method**: CM/GC (approved June 2021 by Transportation Commission)
- **Contractor**: Kraemer North America
- **Budget**: ~$905M (2025 adjusted)
- **CDOT Bidding Portal**: https://www.codot.gov/business/bidding
- **Alternative Delivery Program**: https://www.codot.gov/business/designsupport/adp-db-cmgc
