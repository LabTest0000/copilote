---
name: apex
description: Oracle APEX skills for Oracle APEX application development. Use when working on APEX export files, pages, shared components, or routing Oracle APEXLang requests.
---

# Oracle APEX Skills

This workspace exposes a local Oracle APEX skill entrypoint derived from the public Oracle skills catalog.

## Routing

- Use this skill for Oracle APEX export work in this repository.
- Route APEXlang generation, validation, and import requests to `../apexlang/SKILL.md`.
- Keep edits bounded to the current application export unless the user explicitly asks for broader changes.

## Workspace Shape

The current project is an Oracle APEX export rooted at files and folders such as:

- `application.apx`
- `page-groups.apx`
- `pages/`
- `shared-components/`
- `deployments/`

## Rules

- Use PL/SQL for business logic.
- Prefer APEX APIs and existing export conventions for component changes.
- Do not invent schema facts, page structure, or runtime metadata.
- For live validation or import workflows, require both `db_connection_name` and the matching APEX workspace name.
- Default to check-only guidance before any import action.