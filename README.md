# CDOT_doc_gen_and_post_opencode_validation

This repo contains curated documentation for CDOT (Colorado Department of Transportation) CM/GC highway construction procurement. It serves as input for testing OpenCode CLI's document synthesis capabilities, and as a verification harness for grading the output.

## Folder Structure

```
.
├── CLAUDE.md                        # Instructions for Claude Code
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

## Workflow

1. **Gather docs** — Populate `source_documents/`, `templates/`, `examples/`, and `backward_engineered/`
2. **Feed to OpenCode** — Copy this repo to another machine and have OpenCode synthesize a `cmgc_proposal.md` from the local docs only (no web)
3. **Verify** — Place OpenCode's output in `output_from_opencode_to_verify/` and use Claude Code to grade it, producing a `summary_DESCRIPTION_DATE.md`
