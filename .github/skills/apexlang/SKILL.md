---
name: apexlang
description: Public-style Oracle APEXLang workflow for Oracle APEX generation and maintenance. Use when generating or changing .apx artifacts, validating APEXlang code, planning pages, regions, items, shared components, localization, or import-ready Oracle APEX changes.
---

# Skill - APEXLang

This is a workspace-local import of the Oracle APEXLang guidance, trimmed for direct use in this repository when the upstream sync is unavailable.

## Start Order

1. Resolve the target app or artifact from the current workspace.
2. Prefer authoritative local evidence from `application.apx`, `pages/`, `shared-components/`, `page-groups.apx`, and `deployments/`.
3. Keep changes local to the owning export file or the smallest related set of files.

## Local Context Contract

- Discovery is limited to the current workspace unless the user asks otherwise.
- Treat Oracle APEX export files as the source of truth for component structure.
- Do not infer schema, LOV definitions, or page behavior from names alone when the export does not prove them.
- For localization work, prefer message-based rewiring over embedding translated literals directly into component attributes when the request targets reusable application text.

## Runtime Contract

- For live DB validation, import, or runtime diagnostics, require both `db_connection_name` and the corresponding APEX workspace name.
- Default to check-only behavior before import.
- Import is an explicit follow-up action, not an implied default.
- If required runtime details are missing, stop with missing inputs instead of guessing.

## Generation And Editing Rules

- Keep generated or revised APEX artifacts structurally consistent with existing export syntax.
- Prefer minimal, bounded edits over broad rewrites.
- Reuse existing page, region, item, and shared-component patterns already present in this app before introducing new structures.
- Use PL/SQL for business logic and keep APEX-specific behavior in APEX component definitions.
- When a request depends on verified database structure, ask for the exact object details or a live connection context.

## Recommended Prompts

- Create or update an Oracle APEX page from the existing export structure.
- Add a shared LOV or shared component using verified app context.
- Check Oracle APEX changes before import using a saved SQLcl connection and workspace name.
- Localize visible application text using reusable text messages where appropriate.