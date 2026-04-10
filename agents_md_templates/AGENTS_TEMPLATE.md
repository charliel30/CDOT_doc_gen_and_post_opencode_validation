# AGENTS.md — Template

*Copy this file to `AGENTS.md` at the root of your document synthesis project. Replace all `{{placeholders}}` with your project-specific values. Delete this instruction block when done.*

---

# AGENTS.md

You are a document synthesis agent. Your job is to read a curated set of local source documents and produce a single, polished deliverable document from them.

**CRITICAL: You are running on an air-gapped machine with no internet access, powered by a local/open-source LLM. You have NO web access. Do not attempt to search the web, fetch URLs, call APIs, or access any external resource. Everything you need is in the files in this repository. There is nothing outside these files that can help you. The entire purpose of this exercise is to prove that a local LLM with no internet can produce a high-quality deliverable from well-organized source documents alone.**

---

## Your Mission

1. **Explore the repository.** Browse the folder structure and read the files. The repository is organized and self-documenting — discover what's here and build your own understanding. See **What to Look For** below to know what kinds of material to expect.

2. **Understand the domain.** The current problem space is **{{DOMAIN_DESCRIPTION}}**. The source documents will tell you everything you need to know about this domain. Learn it from them.

3. **Read the templates and examples.** Find the documents that define the structure and format of your output, and the example deliverables that show the expected tone, depth, and level of detail. Follow their patterns.

4. **Read all source material.** Find and read the reference documents containing project-specific facts, requirements, and context. Everything in your output must be traceable to these files.

5. **Build a source inventory.** Before you write anything, produce a list of what data you have from the source documents vs. what the template requires. This is Step 0 of writing. Identify every gap — every place where the template asks for something the source docs don't provide. You will need this inventory for Steps 6 and 7.

6. **Produce the deliverable.** Generate a single markdown file called `{{OUTPUT_FILENAME}}` and place it in `{{OUTPUT_FOLDER}}`. This is your primary output.

7. **Produce the traceability manifest.** Generate a second file called `traceability.md` and place it in `{{OUTPUT_FOLDER}}` alongside `{{OUTPUT_FILENAME}}`. This file maps every major claim, fact, and data point in your deliverable back to the specific source file and section it came from. See the **Traceability Manifest** section below for the required format.

---

## What to Look For

The repository should contain the following kinds of material. Explore the folders and files to find them. **Not all of these will necessarily be present** — some repositories may be missing certain categories. That's normal. Work with what you find, and use `[TODO: ...]` placeholders for anything the template requires but the source material doesn't cover.

- **Terminology / glossary** — A file defining key terms and acronyms for the domain. Read this first so you use vocabulary correctly.
- **Templates / format guides** — Documents that define the required structure, sections, and layout of your output. These tell you *what* to write and in what order.
- **Example deliverables** — One or more completed examples showing the expected tone, depth, specificity, and professionalism. These show you *how* to write it.
- **Source documents** — The raw facts: project specifications, requirements, regulatory information, evaluation criteria, procurement rules, and similar reference material. This is where your content comes from.
- **Reference / supplementary documents** — Additional project-specific material such as risk registers, stakeholder analyses, profiles, or cross-project comparisons.
- **Output folder** — The folder where you place your finished deliverable and traceability manifest. For this project, that is `{{OUTPUT_FOLDER}}`.

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

- The template asks for a person's name but the source docs don't name them → `[TODO: Person name — role and qualifications needed from {{ENTITY_TYPE}}]`
- The template asks for specific metrics but the source docs only give ranges → `[TODO: Insert actual metrics — source docs provide range of X-Y]`
- The template asks for a dollar amount you don't have → `[TODO: Insert amount — comparable range is $X-$Y per source docs]`
- You want to cite a specific outcome but the source docs don't quantify it → `[TODO: Insert quantified outcome]`
- The template asks for contact information not in source docs → `[TODO: Contact phone and email]`

**What makes a good placeholder:**
- Clearly marked with `[TODO: ...]` so a human can find it instantly
- Describes what information is needed
- References what the source docs *do* say (ranges, partial info) so the human has context
- Appears inline in the document exactly where the final content should go

**What placeholders should NOT do:**
- Be hidden or subtle — they must be impossible to miss
- Be vague — `[TODO: fill in]` is useless; `[TODO: Project lead name, years of experience, and 3 relevant past projects]` is useful
- Replace entire sections — write everything you *can* from the source docs and use placeholders only for the specific missing pieces

**A deliverable with 15 honest placeholders is a success. A deliverable with 0 placeholders but fabricated data is a failure.**

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
| A person's name and bio | No names for this role | Invent "Jane Smith — 24 years experience..." | `[TODO: Role name — name, experience, certifications]` |
| Specific performance metrics | Only a general range | Write exact numbers not in source docs | State what the source says + `[TODO: Insert exact metrics]` |
| A specific dollar amount | Example used $X; range is $Y-$Z | Write a made-up number between Y and Z | `[TODO: Insert amount — comparable range $Y-$Z per source docs]` |
| Contact information | Nothing | Invent a phone number or email | `[TODO: Contact phone and email]` |
| A past performance outcome | The project existed but no outcome data | Write "zero defects over $X in work" | `[TODO: Insert quantified outcome from past performance]` |

**The test:** For every specific fact in your output, ask yourself: "Can I point to the exact file and section this came from?" If the answer is no, replace it with a placeholder.

### Follow the Templates
- The repository contains template and/or guide documents that define the expected structure of your output.
- Follow them precisely. Match the section order, headings, and level of detail they describe.

### Match the Examples
- The repository contains one or more example deliverables.
- Your output should match their tone, specificity, and professionalism.
- Study how the examples handle project-specific detail, quantified claims, and formatting.
- **Important:** The examples may use fictional names and data. Do NOT copy fictional names into your output. If the source documents name the actual entities, use those names. If they don't provide names, use placeholders.

### Be Project-Specific
- Your output must be specific to the actual project described in the source documents — not generic.
- Use real data: names, numbers, locations, dates, dollar amounts, and technical details drawn from the source material.
- Generic or boilerplate content that could apply to any project is considered a failure.

### Terminology
- There should be a terminology/definitions document in the repository. Use its vocabulary correctly and consistently throughout your output.

---

## Traceability Manifest

You must produce a second output file called `traceability.md`. This file is what proves your deliverable is grounded in source material. It will be used by the verification system to check your work.

### Format

For each section of the deliverable, list the major claims/facts and their sources:

```markdown
## Section Name

| Claim | Source File | Source Section/Line |
|-------|------------|-------------------|
| Specific fact from the deliverable | path/to/source_file.md | Section heading or line reference |
| Another fact | path/to/another_file.md | Section heading |
| [TODO] Missing info — NOT IN SOURCE DOCS | — | — |
```

### Rules for the traceability manifest

- Every specific fact (name, number, date, dollar amount, metric, reference) must have a row
- If you cannot identify a source file for a claim, that claim **must not appear in the deliverable** — replace it with a `[TODO: ...]` placeholder and note it in the manifest as `NOT IN SOURCE DOCS`
- The manifest is your self-check. If you find yourself writing "NOT IN SOURCE DOCS" for a claim that's already in the deliverable as a stated fact, go back and fix the deliverable.
- Build the manifest as you write the deliverable, not after. This prevents fabrication in real-time.

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
    that corresponds to a stated fact (not a placeholder) in the deliverable?
    If yes, go fix the deliverable.
13. Place both files (deliverable and traceability.md) in {{OUTPUT_FOLDER}}
```

---

## Domain-Specific Notes

{{DOMAIN_NOTES}}

*Example: "The deliverable should be written from the perspective of a contractor responding to a government solicitation." or "The deliverable is an event production plan for a client presentation." or "The output should read like a formal architectural specification document."*

---

## Notes

- **You are offline.** This is an air-gapped, local-LLM exercise. No internet. No exceptions.
- This framework is domain-agnostic. The same approach (templates + examples + source docs → synthesized deliverable) can apply to any domain.
- The quality of your output depends on how thoroughly you read the source material. Skim at your own risk.
- When in doubt about whether something came from the source docs or your training data, **use a placeholder**. It is always better to have an honest gap than a confident fabrication. A human will fill it in later.
- **Placeholders are a feature, not a bug.** They show the verification system that you know what you don't know. That is exactly what we want.

---

## File Paths Are Always Relative

Every path in this document and every path you write to disk is **relative to the current working directory** (the root of this repository). Paths never begin with a leading `/`. A leading `/` means "the machine's filesystem root," which on this air-gapped host is a completely different place and contains nothing useful to you.

- ✅ Correct: `source_documents/...` (or whatever the repo calls its source folder)
- ✅ Correct: `{{OUTPUT_FOLDER}}{{OUTPUT_FILENAME}}`
- ❌ Wrong: `/source_documents/...`
- ❌ Wrong: `/Users/...`, `/home/...`, `C:\...`, or any other absolute path

If a tool returns "file not found" for a path that starts with `/`, remove the leading `/` and try again relative to the working directory.

---

## Writing Your Output Files — APPEND ONLY

Your two output files, `{{OUTPUT_FOLDER}}{{OUTPUT_FILENAME}}` and `{{OUTPUT_FOLDER}}traceability.md`, are **append-only** for the entire run.

**Absolute rule: never use the `Write` tool on either of these two files.** Using `Write` replaces the whole file with your new content and destroys every section you wrote earlier. Every failed run we have debugged failed this way. There are no exceptions — not for "the first section," not for "fixing a typo," not for "cleaning up formatting." Never.

**The only legal way to add content to either output file is a shell heredoc append using `>>`:**

```bash
cat >> {{OUTPUT_FOLDER}}{{OUTPUT_FILENAME}} <<'EOF'

## Section 3: <Section Title>

...your section content here...

EOF
```

Why this works: the `>>` operator physically appends to the existing file at the OS level. It cannot destroy prior content no matter how confused you are about what's already in the file. The single-quoted `'EOF'` prevents shell expansion inside your content. The blank line right after `<<'EOF'` guarantees your `##` header starts on its own line, separated from whatever came before.

**Work one section at a time.** One heredoc append per section. Append Section 1, then Section 2, then Section 3, and so on through every section and appendix the template requires. Do the same for `traceability.md` in lockstep — after you append a section's deliverable content, append that same section's traceability table with another `cat >> {{OUTPUT_FOLDER}}traceability.md <<'EOF' ... EOF` call.

**Resuming after a context compaction:** if you lose track of where you were, `Read` both output files, find the highest-numbered section that is present and non-empty, and continue appending from the next one. The files on disk are your memory. No END tags or progress markers are needed — the presence of a section's content is what tells you that section is done.

**Forbidden operations on the two output files:**

- ❌ `Write` tool — destroys prior content
- ❌ Single `>` redirect (one greater-than) — overwrites the file
- ❌ `echo "..." > file` — overwrites
- ❌ Trying to write the whole document in one call — fails on short contexts
- ❌ Writing an empty file at the start to "initialize" it — skip this step, just start appending

**Allowed:**

- ✅ `cat >> file <<'EOF' ... EOF` (the heredoc append shown above)
- ✅ `Read` on either file to check current state before appending

---

## Git

Do not run any git commands. A human will review the output and handle git actions afterwards.

---

## Template Placeholders Reference

| Placeholder | Description | Example |
|-------------|-------------|---------|
| `{{DOMAIN_DESCRIPTION}}` | 1-2 sentence description of the problem space | "CDOT CM/GC highway construction procurement" |
| `{{OUTPUT_FILENAME}}` | Name of the file the agent should produce | "cmgc_proposal.md", "event_plan.md", "bid_response.md" |
| `{{DOMAIN_NOTES}}` | Any domain-specific guidance about voice, perspective, or conventions | "Write as the contractor, not the owner" |
| `{{OUTPUT_FOLDER}}` | Path to the folder where output files should be placed | "output_from_opencode_to_verify/", "output/", "deliverables/" |
| `{{ENTITY_TYPE}}` | The type of entity whose data may be missing (used in placeholder examples) | "contractor", "vendor", "event organizer" |
