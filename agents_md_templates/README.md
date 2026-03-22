# AGENTS.md Templates

This folder contains reusable templates for creating `AGENTS.md` files for different document synthesis projects.

## How to Use

1. Copy `AGENTS_TEMPLATE.md` to the root of your new project as `AGENTS.md`
2. Replace the `{{placeholders}}` with your project-specific values
3. Delete the instruction block at the top
4. Populate your project with the same folder pattern:
   - `terms_and_definitions.md` — domain vocabulary
   - `source_documents/` — raw reference material
   - `templates/` — structure and format guides for the output
   - `examples/` — example deliverables showing the quality bar
   - `backward_engineered/` — source docs reverse-engineered from examples (if needed)
   - `output_from_opencode_to_verify/` — where the agent places its output

## Example Domains

| Domain | Output Filename | Domain Notes |
|--------|----------------|--------------|
| Highway construction procurement | `cmgc_proposal.md` | Write as the contractor responding to a government RFP |
| Concert/event production | `event_production_plan.md` | Write as the production company presenting to the venue/client |
| Commercial building construction | `building_bid_response.md` | Write as the general contractor responding to the owner's RFP |
| Software RFP response | `software_proposal.md` | Write as the vendor responding to the client's requirements |
| Government grant application | `grant_application.md` | Write as the applicant organization addressing evaluation criteria |
