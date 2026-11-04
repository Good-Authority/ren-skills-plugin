---
name: weekly-team-pulse
description: Use for a manager or admin who wants one view of how their team is doing, ideally run at the start of the week. Combines team_health, get_workspace_kpis, active_conversations and list_my_team into a one-page team health view.
---

# Weekly Team Pulse

Use this for a manager or admin who wants one view of how their team is doing — ideally run at the start of the week.

1. Call **list_my_team** to get the roster (direct reports, or every manager's reports if the caller is an admin).
2. Call **team_health** for the caller's own directs. It returns Plan/1:1 completion counts plus a per-person breakdown — join its `directs` list to list_my_team's member_id to label each row with a name.
3. If the caller is an admin, also call **get_workspace_kpis** for the org-wide view across every manager, not just their own team.
4. Call **active_conversations** to see what's currently open or recently closed on the Dial — both what the caller started (byYou) and, for a direct report viewing their own, what's addressed to them (forYou).
5. Combine these into one short summary: team-wide Plan/1:1 completion, any team-health nudges worth acting on, and what's moving on the Dial right now.

Note: these tools are pull-based — there's no way for Ren's MCP surface to push this to the user automatically on a schedule. If the user wants this every Monday, that has to be a scheduled task on whatever platform is running this skill, not something this skill can trigger by itself.
