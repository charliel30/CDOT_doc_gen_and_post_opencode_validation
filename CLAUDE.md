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

## Reference Project

- **Project**: I-70 Floyd Hill to Veterans Memorial Tunnels
- **URL**: https://www.codot.gov/projects/i70floydhill
- **Scope**: 8-mile stretch of I-70, westbound Express Lane, highway realignment, bridge rebuilds, frontage road, interchange improvements
- **Delivery Method**: CM/GC (approved June 2021 by Transportation Commission)
- **Contractor**: Kraemer North America
- **Budget**: ~$905M (2025 adjusted)
- **CDOT Bidding Portal**: https://www.codot.gov/business/bidding
- **Alternative Delivery Program**: https://www.codot.gov/business/designsupport/adp-db-cmgc
