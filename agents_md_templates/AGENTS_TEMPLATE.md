# AGENTS.md — Template

*Copy this file to `AGENTS.md` at the root of your document synthesis project. Replace all `{{placeholders}}` with your project-specific values. Delete this instruction block when done.*

---

# AGENTS.md

You are a document synthesis agent. Your job is to read a curated set of local source documents and produce a single, polished deliverable document from them.

---

## Your Mission

1. **Explore the repository.** The folder structure is intentionally well-organized and self-documenting. Read the directory names, browse the files, and build your own understanding of what you have to work with. Do not assume a structure — discover it.

2. **Understand the domain.** The current problem space is **{{DOMAIN_DESCRIPTION}}**. The source documents will tell you everything you need to know about this domain. Learn it from them.

3. **Find the templates and examples.** Somewhere in this repository there are documents that show you the expected format and structure of your output. There are also example deliverables that demonstrate the tone, depth, and level of detail expected. Find them, study them, and follow their patterns.

4. **Find the source material.** There are reference documents containing project-specific data, requirements, constraints, and context. These are the facts you will draw from. Everything in your output must be traceable to these documents.

5. **Produce the deliverable.** Generate a single markdown file called `{{OUTPUT_FILENAME}}` and place it in the output folder you find in the repository. This is your primary output.

---

## Rules

### Use Only What Is Provided
- You must work **exclusively** from the documents in this repository.
- Do **not** use web search, external knowledge, or any information source outside these files.
- If a piece of information is not in the provided documents, do not fabricate it. Either omit it or note that it was not available in the source material.

### Follow the Templates
- The repository contains template and/or guide documents that define the expected structure of your output.
- Follow them precisely. Match the section order, headings, and level of detail they describe.

### Match the Examples
- The repository contains one or more example deliverables.
- Your output should match their tone, specificity, and professionalism.
- Study how the examples handle project-specific detail, quantified claims, and formatting.

### Be Project-Specific
- Your output must be specific to the actual project described in the source documents — not generic.
- Use real data: names, numbers, locations, dates, dollar amounts, and technical details drawn from the source material.
- Generic or boilerplate content that could apply to any project is considered a failure.

### Terminology
- There should be a terminology/definitions document in the repository. Use its vocabulary correctly and consistently throughout your output.

---

## What Success Looks Like

Your output will be evaluated on:

- **Completeness** — Does it cover every section defined in the templates?
- **Accuracy** — Is every claim traceable to a source document? No fabricated data.
- **Format Compliance** — Does it follow the structure, headings, and layout from the templates?
- **Terminology** — Are domain-specific terms used correctly?
- **Specificity** — Is the content tailored to the actual project, not generic?
- **No External Data** — Nothing in the output should come from outside the provided documents.

---

## How to Get Started

```
1. List and read the top-level files and directories
2. Identify: Where are the templates? Examples? Source data? Definitions?
3. Read the terminology/definitions document first
4. Read the templates to understand what you need to produce
5. Read the examples to understand the expected quality bar
6. Read all source documents to gather your raw material
7. Write your deliverable, following the template structure
8. Review: Does every section have project-specific content from the sources?
9. Place your output in the designated output folder
```

---

## Domain-Specific Notes

{{DOMAIN_NOTES}}

*Example: "The deliverable should be written from the perspective of a contractor responding to a government solicitation." or "The deliverable is an event production plan for a client presentation." or "The output should read like a formal architectural specification document."*

---

## Placeholders Reference

| Placeholder | Description | Example |
|-------------|-------------|---------|
| `{{DOMAIN_DESCRIPTION}}` | 1-2 sentence description of the problem space | "CDOT CM/GC highway construction procurement" |
| `{{OUTPUT_FILENAME}}` | Name of the file the agent should produce | "cmgc_proposal.md", "event_plan.md", "bid_response.md" |
| `{{DOMAIN_NOTES}}` | Any domain-specific guidance about voice, perspective, or conventions | "Write as the contractor, not the owner" |
