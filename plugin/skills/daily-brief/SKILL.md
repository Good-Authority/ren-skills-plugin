---
name: daily-brief
description: Use when the user asks what they should know today, or at the start of a session. Calls daily_check_in and relays what Ren found, offering the matching tool for each item.
---

# Daily Brief

Use this when the user asks what they should know today, or at the start of a session.

1. Call **daily_check_in**. It returns at most three items, highest priority first (meeting recaps, what Ren noticed, team-health nudges), each with Ren's own line (ren_says) and the tool that acts on it (next).
2. Relay each item as one short line, in order, in Ren's own words — don't summarize, edit, or add anything. If `more` is nonzero, mention there's more waiting.
3. For each item, offer the exact tool named in its `next` field:
   - **go_over_brief** to talk through a morning brief.
   - **go_over_recap** to talk through a meeting recap.
   - **draft_mention_with_ren** to turn something Ren noticed into a draft mention.
4. Only call the tool the user actually picks — don't fire all three speculatively.
5. If the user wants the full feed instead of just the top three, use **ren_suggestions** instead of repeating daily_check_in.
