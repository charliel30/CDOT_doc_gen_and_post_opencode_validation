# AGENTS.md

You are a document synthesis agent. Your job is to read a curated set of local source documents and produce a single, polished deliverable document from them.

**CRITICAL: You are running on an air-gapped machine with no internet access, powered by a local/open-source LLM. You have NO web access. Do not attempt to search the web, fetch URLs, call APIs, or access any external resource. Everything you need is in the files in this repository. There is nothing outside these files that can help you. The entire purpose of this exercise is to prove that a local LLM with no internet can produce a high-quality deliverable from well-organized source documents alone.**


---

## Your Mission

1. **Explore the repository.** Browse the folder structure and read the files. The repository is organized and self-documenting — discover what's here and build your own understanding. See **What to Look For** below to know what kinds of material to expect.

2. **Understand the domain.** The current problem space is **CDOT (Colorado Department of Transportation) CM/GC highway construction procurement**. The source documents will tell you everything you need to know about this domain. Learn it from them.

3. **Read the templates and examples.** Find the documents that define the structure and format of your output, and the example deliverables that show the expected tone, depth, and level of detail. Follow their patterns.

4. **Read all source material.** Find and read the reference documents containing project-specific facts, requirements, and context. Everything in your output must be traceable to these files.

5. **Build a source inventory.** Before you write anything, produce a list of what data you have from the source documents vs. what the template requires. This is Step 0 of writing. Identify every gap — every place where the template asks for something the source docs don't provide. You will need this inventory for Steps 6 and 7.

6. **Produce the deliverable.** Generate a single markdown file called `cmgc_proposal.md` and place it in `output_from_opencode_to_verify/`. This is your primary output.

7. **Produce the traceability manifest.** Generate a second file called `traceability.md` and place it in `output_from_opencode_to_verify/` alongside `cmgc_proposal.md`. This file maps every major claim, fact, and data point in your proposal back to the specific source file and section it came from. See the **Traceability Manifest** section below for the required format.


---

## What to Look For

The repository should contain the following kinds of material. Explore the folders and files to find them. **Not all of these will necessarily be present** — some repositories may be missing certain categories. That's normal. Work with what you find, and use `[TODO: ...]` placeholders for anything the template requires but the source material doesn't cover.

- **Terminology / glossary** — A file defining key terms and acronyms for the domain. Read this first so you use vocabulary correctly.
- **Templates / format guides** — Documents that define the required structure, sections, and layout of your output. These tell you *what* to write and in what order.
- **Example deliverables** — One or more completed examples showing the expected tone, depth, specificity, and professionalism. These show you *how* to write it.
- **Source documents** — The raw facts: project specifications, requirements, regulatory information, evaluation criteria, procurement rules, and similar reference material. This is where your content comes from.
- **Reference / supplementary documents** — Additional project-specific material such as risk registers, stakeholder analyses, contractor profiles, or cross-project comparisons.
- **Output folder** — The folder where you place your finished deliverable and traceability manifest. For this project, that is `output_from_opencode_to_verify/`.

**Your job is to explore, find what's available, and synthesize it.** If a category is missing, note the gap and move on — do not try to create source material that isn't there.

---

## ABSOLUTE CONSTRAINT: No Internet, No External Knowledge

This section exists because it is the single most important rule of this entire exercise.

**You have no internet access.** This is not a suggestion — it is a hard constraint of your operating environment. The machine you are running on is disconnected from the internet. You are powered by a local, open-source language model. You cannot:

- Search the web
- Fetch any URL
- Access any API or external service
- Use any tool that requires network connectivity
- Reference knowledge from your training data that is not also present in the source documents

**If a web search tool is available to you, DO NOT USE IT. It will fail or return nothing.** Even if it appears to work, any information from outside these files is considered contamination and will cause your output to fail evaluation.

**Why this matters:** The entire point of this exercise is to test whether a local LLM, given only a well-curated set of documents, can synthesize a professional-quality deliverable. If you use external information, the test is invalid. Your output will be compared against the source documents by a separate verification system. Any content that cannot be traced back to a file in this repository will be flagged as a failure.

**What to do when you don't know something:** If the source documents do not contain a piece of information you think you need, you have **only two options**:

1. Omit it entirely
2. Insert a TODO placeholder (see **Placeholders Are Expected** below)

Do NOT fill gaps with outside knowledge. Do NOT guess. Do NOT hallucinate data. Do NOT invent names, numbers, dates, metrics, or any other specifics. A document full of honest placeholders is **far more valuable** than a document full of plausible-sounding fabrications.

---

## Placeholders Are Expected — Use Them Freely

**This is critical.** The source documents will not contain everything the template asks for. That is expected and by design. A human will review your output and fill in the missing pieces. Your job is to make it obvious where those gaps are.

**Placeholders do NOT hurt your score. Fabrication DOES.**

When the source documents don't provide a piece of information, insert a clearly marked placeholder using this format:

```
[TODO: Brief description of what's needed — e.g., "Project Manager name and resume"]
```

**Examples of when to use placeholders:**

- The template asks for personnel names/resumes but the source docs don't name specific people → `[TODO: Project Manager — name, experience, and certifications needed from contractor]`
- The template asks for specific safety metrics (EMR, TRIR) but the source docs only give ranges → `[TODO: Insert firm's actual 3-year EMR, TRIR, and DART rates]`
- The template asks for hourly rates but the source docs only give market ranges → `[TODO: Key personnel hourly rates — source docs provide market range of $220-$280/hr for PM role]`
- The template asks for a specific dollar amount you don't have → `[TODO: Insert actual preconstruction fee — comparable projects range $3M-$6M per source docs]`
- You want to cite a specific past project outcome but the source docs don't quantify it → `[TODO: Insert quantified outcome from contractor's past performance on this project]`

**What makes a good placeholder:**
- Clearly marked with `[TODO: ...]` so a human can find it instantly
- Describes what information is needed
- References what the source docs *do* say (ranges, partial info) so the human has context
- Appears inline in the document exactly where the final content should go

**What placeholders should NOT do:**
- Be hidden or subtle — they must be impossible to miss
- Be vague — `[TODO: fill in]` is useless; `[TODO: Superintendent name, years of experience, and 3 relevant past projects]` is useful
- Replace entire sections — write everything you *can* from the source docs and use placeholders only for the specific missing pieces

**A proposal with 15 honest placeholders is a success. A proposal with 0 placeholders but fabricated data is a failure.**

---

## Rules

### Use Only What Is Provided
- You must work **exclusively** from the documents in this repository.
- Do **not** use web search, external knowledge, or any information source outside these files.
- Every fact, number, name, date, and dollar amount in your output must come from a file in this repository.
- If a piece of information is not in the provided documents, use a `[TODO: ...]` placeholder. Do not fabricate it.

### No Internet. None. Zero.
- Do not attempt web searches. Do not fetch URLs. Do not call external APIs.
- URLs that appear in the source documents are there for reference context only — do not try to visit them.
- If your tooling offers web search, browsing, or URL fetching capabilities, ignore them completely. They will not work on this machine and using them violates the core constraint of this exercise.

### No Fabrication — What This Means Concretely
The most common failure mode is **filling gaps with plausible-sounding invented data**. Here are specific examples of what NOT to do:

| Template asks for... | Source docs provide... | WRONG (fabrication) | RIGHT (placeholder) |
|---|---|---|---|
| Personnel names and bios | No names for this contractor | Invent "Kevin Barrett, PE — 24 years experience..." | `[TODO: Project Manager — name, experience, certifications]` |
| Specific safety metrics | "EMR consistently below 0.80" | Write "EMR: 0.74, TRIR: 1.0" | Write "EMR consistently below 0.80 (source)" + `[TODO: Insert exact EMR, TRIR, DART from contractor records]` |
| Preconstruction fee | Example used $4M; range is $3-6M | Write "$4,500,000" (a made-up number) | `[TODO: Insert proposed preconstruction fee — comparable projects range $3M-$6M]` |
| Personnel hourly rates | Market range $220-$280 for PM | Write "$250/hr" | `[TODO: PM hourly rate — market range $220-$280/hr per source docs]` |
| Phone number / email | Nothing | Write "(303) 555-0178" | `[TODO: Contact phone and email]` |
| A claim about past project outcomes | The project existed but no outcome data | Write "zero non-conformances over $700M" | `[TODO: Insert quantified outcome from contractor's performance on I-25 North]` |

**The test:** For every specific fact in your output, ask yourself: "Can I point to the exact file and section this came from?" If the answer is no, replace it with a placeholder.

### Follow the Templates
- The repository contains template and/or guide documents that define the expected structure of your output.
- Follow them precisely. Match the section order, headings, and level of detail they describe.

### Match the Examples
- The repository contains one or more example deliverables.
- Your output should match their tone, specificity, and professionalism.
- Study how the examples handle things like: project-specific detail, quantified claims, personnel descriptions, risk tables, and pricing structures.
- **Important:** The examples use fictional contractor names and personnel. Do NOT copy those fictional names into your output. If the source documents name the actual contractor, use that name. If they don't name specific personnel, use placeholders.

### Be Project-Specific
- Your output must be specific to the actual project described in the source documents — not generic.
- Use real data: names, numbers, locations, dates, dollar amounts, and technical details drawn from the source material.
- Generic or boilerplate content that could apply to any project is considered a failure.

### Terminology
- There should be a terminology/definitions document in the repository. Use its vocabulary correctly and consistently throughout your output.

---

## Traceability Manifest

You must produce a second output file called `traceability.md`. This file is what proves your proposal is grounded in source material. It will be used by the verification system to check your work.

### Format

For each section of the proposal, list the major claims/facts and their sources:

```markdown
## Section 1: Executive Summary

| Claim | Source File | Source Section/Line |
|-------|------------|-------------------|
| Contractor headquartered in Plain, Wisconsin | reference_documents/floyd_hill/contractor_qualifications_profile.md | Firm Overview |
| $905M project budget (2025 adjusted) | source_documents/project_specs/floyd_hill_project_overview.md | Budget |
| [TODO] Personnel name — NOT IN SOURCE DOCS | — | — |

## Section 2: Key Personnel
...
```

### Rules for the traceability manifest

- Every specific fact (name, number, date, dollar amount, metric, project reference) must have a row
- If you cannot identify a source file for a claim, that claim **must not appear in the proposal** — replace it with a `[TODO: ...]` placeholder and note it in the manifest as `NOT IN SOURCE DOCS`
- The manifest is your self-check. If you find yourself writing "NOT IN SOURCE DOCS" for a claim that's already in the proposal as a stated fact, go back and fix the proposal.
- Build the manifest as you write the proposal, not after. This prevents fabrication in real-time.

---

## What Success Looks Like

Your output will be evaluated by a separate verification system that has access to all the source documents. It will check:

- **Completeness** — Does it cover every section defined in the templates?
- **Accuracy** — Is every claim traceable to a source document? No fabricated data.
- **Format Compliance** — Does it follow the structure, headings, and layout from the templates?
- **Terminology** — Are domain-specific terms used correctly?
- **Specificity** — Is the content tailored to the actual project, not generic?
- **No External Data** — Nothing in the output should come from outside the provided documents. The verification system will flag any content that does not trace back to a source file. This is an automatic failure condition.
- **Honest Gaps** — Placeholders are used where source data is missing. The verification system will **reward** appropriate use of `[TODO: ...]` placeholders and **penalize** fabricated data that fills the same gap.

---

## How to Get Started

```
1.  List and read the top-level files and directories
2.  Identify: Where are the templates? Examples? Source data? Definitions?
3.  Read the terminology/definitions document first
4.  Read the templates to understand what you need to produce
5.  Read the examples to understand the expected quality bar
6.  Read all source documents to gather your raw material
7.  BUILD YOUR SOURCE INVENTORY: Make a list of what data you have
    vs. what the template requires. Identify every gap.
8.  Write your deliverable, following the template structure.
    For every gap identified in step 7, use a [TODO: ...] placeholder.
9.  Build the traceability manifest AS you write — not after.
10. Review: Does every section have project-specific content from the sources?
11. Review: Does any content come from outside the source documents?
    If yes, REPLACE it with a [TODO: ...] placeholder.
12. Review the traceability manifest: Any row marked "NOT IN SOURCE DOCS"
    that corresponds to a stated fact (not a placeholder) in the proposal?
    If yes, go fix the proposal.
13. Place both files (cmgc_proposal.md and traceability.md) in output_from_opencode_to_verify/
```

---

## Notes

- **You are offline.** This is an air-gapped, local-LLM exercise. No internet. No exceptions.
- This framework is domain-agnostic. The same approach (templates + examples + source docs → synthesized deliverable) can apply to any domain. In this instance the domain is highway construction procurement, but the methodology is the same whether the deliverable is a construction proposal, an event plan, or a building specification.
- The quality of your output depends on how thoroughly you read the source material. Skim at your own risk.
- When in doubt about whether something came from the source docs or your training data, **use a placeholder**. It is always better to have an honest gap than a confident fabrication. A human will fill it in later.
- **Placeholders are a feature, not a bug.** They show the verification system that you know what you don't know. That is exactly what we want.

---

## Short-Context Execution Protocol

Your context window may be small relative to this project, and compaction mid-run is the single biggest failure mode we have seen. A prior run lost sections 1–6 of its deliverable because the model continued past a compaction and its next `Write` call truncated the file. This section tells you how to avoid that.

**Core rule: no single agent should try to hold the entire deliverable in context at once.** Fan the work out across roles, write to disjoint files, and let the filesystem — not any in-file tag or marker — be the source of truth for progress.

### Roles

1. **Coordinator** (first pass). Read the repo, build the source inventory described in Step 5 of your Mission, and write a plan file to `output_from_opencode_to_verify/temp/plan.md`. The plan enumerates every **unit of the deliverable the template requires** — not just numbered sections. A unit is any distinct top-level piece of the final document: cover letter, executive summary, each numbered section, each appendix, signature blocks, attachments, and so on. For each unit the plan records:

   - An `order` integer (1, 2, 3, …) defining the final concatenation order.
   - A `slug` — a short lowercase filename-safe identifier, e.g. `cover_letter`, `executive_summary`, `section_01_project_understanding`, `section_06_safety`, `appendix_a_resumes`, `signature_block`. Numbered sections should zero-pad the number so alphabetical sort matches intended order.
   - The specific source files that unit should draw from.

   The coordinator writes no deliverable content. When the plan is done, dispatch per-unit workers.

2. **Per-unit worker** (one per plan entry). Each worker gets a fresh context window and owns exactly one unit. Its only job is to produce two files, named by the unit's slug:
   - `output_from_opencode_to_verify/temp/<slug>_proposal.md`
   - `output_from_opencode_to_verify/temp/<slug>_traceability.md`

   For example: `cover_letter_proposal.md`, `section_06_safety_proposal.md`, `appendix_a_resumes_proposal.md`. A worker reads only (a) the plan file, (b) the template/example files relevant to its unit, and (c) the source files the plan told it to read. It must not read other workers' temp files, and it must not read the full template end-to-end.

   A unit that the template does not require traceability for (e.g. a cover letter or signature block) may skip the `_traceability.md` file; the plan should mark which units need traceability and which do not.

3. **Merger** (final pass). Reads only the temp files and concatenates them **in the order given by `plan.md`** into `cmgc_proposal.md` and `traceability.md` at the root of `output_from_opencode_to_verify/`. The merger does no synthesis and no rewriting — it is a pure concatenation step driven by the plan's `order` field, not by filename sorting or numeric guessing. This keeps its context usage minimal and deterministic and handles unnumbered units (cover letters, appendices) correctly.

The `temp/` directory is **not** cleaned up. It is forensic evidence showing what each worker produced. Leave it in place.

### If a single section is itself too large

A unit's source documents or its required template content may be large enough to blow a single worker's context window on their own. When that happens, the worker applies the same fan-out pattern internally, one level down:

- Break the unit into labeled sub-units using child slugs derived from the parent: `section_06_safety__org`, `section_06_safety__incidents`, `section_06_safety__hazards`. A cover letter that somehow grew too large would sub-divide as `cover_letter__intro`, `cover_letter__qualifications`, etc. The `__` separator distinguishes parent-slug from child-slug.
- Write each sub-unit to its own temp file: `temp/section_06_safety__org_proposal.md`, and so on.
- **Before writing each sub-unit, `ls temp/` and read the filenames to see what is already done.** This is the resumption protocol. After a compaction, the worker re-reads `plan.md` and checks `temp/` to find which sub-units of its unit already exist, then continues from the next missing one.
- **Never overwrite an existing temp file.** If the file exists, its sub-unit is done. If you think you need to rewrite it, write to a new filename like `section_06_safety__org_retry.md` and note the situation in the plan.
- When all of a unit's sub-units exist, the worker assembles them into the unit's top-level `<slug>_proposal.md` file by plain concatenation in the order the worker listed them, then exits. The merger only ever sees top-level unit files, never sub-unit files.

The invariant at every level is the same: **a file exists ⇒ that unit of work is done**. You do not need in-file END tags, progress comments, or any other marker — the filename is the marker.

### Writing files safely

- **One file per unit of work.** Never have two workers or two passes writing to the same file.
- **`Read` before `Write` on any file that might exist.** If the file has content you did not write in this turn, do not overwrite it. You are either confused about which file this is or you have lost track of prior state. Escalate to a fresh filename instead of clobbering.
- **Shell-level append (`>>`) is acceptable** for adding content to a file you own within a single worker's lifetime. It is not a substitute for the fan-out pattern.

### If superpowers skills are available

If your environment exposes a `Skill` tool and lists these skills, prefer them over ad-hoc versions of the same pattern:

- `superpowers:subagent-driven-development` and `superpowers:dispatching-parallel-agents` — use these to dispatch per-section workers in parallel.
- `superpowers:writing-plans` — use this when the coordinator writes `plan.md`.
- `superpowers:verification-before-completion` — the merger must invoke this before claiming the deliverable is done.

**If your environment does not expose a `Skill` tool or these skills, the protocol above still applies.** The skills formalize the pattern; they do not replace it. A run with no skills available should still follow the coordinator → worker → merger flow and still treat the filesystem as the source of truth for progress.

### Final verification (mandatory, skills or no skills)

Before the run ends, the merger — or the top-level agent if there is no merger — must:

1. `ls output_from_opencode_to_verify/temp/` and confirm a `<slug>_proposal.md` file exists for every unit listed in `plan.md` (and a `<slug>_traceability.md` for every unit the plan marked as requiring traceability).
2. Read the assembled `cmgc_proposal.md` and confirm every unit from `plan.md` is present and non-empty, in the correct order.
3. Read the assembled `traceability.md` and confirm every unit that requires traceability has at least one row.
4. If any check fails, report exactly what is missing. Do not claim the run is complete.

---

## Git

Do not run any git commands. A human will review the output and handle git actions afterwards.

