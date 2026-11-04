# Ren skills

Claude Code plugin bundling Ren's MCP skills — ready-made playbooks for cold
start, daily brief, 1:1 prep, Dial-aware feedback, weekly team pulse, and
transcript upload — plus the Ren MCP server connection, in one install.

These skills mirror the ones published in the Ren app's Connectors sidebar
("Ren skills" modal). The source of truth for their content is
[`packages/storage/src/migrations/1792700000004-SeedInitialLLMSkills.ts`](https://github.com/Good-Authority/satori-nextjs/blob/develop/packages/storage/src/migrations/1792700000004-SeedInitialLLMSkills.ts)
in the main `satori-nextjs` repo — update both places together when a skill
changes.

## Install

```
/plugin marketplace add Good-Authority/ren-skills-plugin
/plugin install ren-skills
```

This installs all six skills and connects the Ren MCP server
(`https://mcp.tryren.com/mcp`) in one step.

## Updating this repo when a skill changes

1. Edit the skill's content in the admin app (or the seed migration for the
   original six) in `satori-nextjs`.
2. Mirror the same change into the matching `skills/<name>/SKILL.md` file
   here.
3. Bump `version` in `.claude-plugin/plugin.json`.
4. Tag the release: `claude plugin tag .` from the repo root.

Not covered by this plugin: ChatGPT and Cursor users, who still use the
per-skill markdown downloads in the Ren app — Claude Code plugins aren't a
format those tools read.
