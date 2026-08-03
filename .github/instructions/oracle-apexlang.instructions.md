---
applyTo: "**/*.{apx,json}"
---

# Oracle APEXLang Workspace Routing

For Oracle APEX export work in this repository:

- Prefer the local skill at `.github/skills/apexlang/SKILL.md`.
- Treat `application.apx`, `page-groups.apx`, `pages/`, `shared-components/`, and `deployments/` as the primary local context.
- Keep edits small and preserve Oracle APEX export structure.
- Use PL/SQL for business logic.
- For live validation or import workflows, require both `db_connection_name` and the matching APEX workspace name.
- Default to check-only behavior before import.