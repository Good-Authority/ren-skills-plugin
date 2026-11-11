---
name: getting-started-cold-start
description: Use when the caller has no team yet in Ren — a brand-new workspace, or you're not sure whether they do. Detects an empty workspace and walks a new user through inviting their team and reaching their first real brief.
---

# Getting Started with Ren (Cold Start)

Use this when the caller has no team yet — a brand-new workspace, or you're not sure whether they do.

1. Call **list_workspaces** first if you don't already know the organizationId. If the account belongs to more than one organization, every other call below needs organizationId explicitly.
2. Call **list_my_team**. An empty list means this is day one — there's no one to brief yet.
3. Ask who they want to add, then call either:
   - **add_directs** for someone who reports to them (requires manager or admin on the caller) — pick seatType: "private" (no login, doesn't count against the seat cap), "active" (normal member seat), or "manager".
   - **invite_team_member** for an org-level invite not tied to being a direct report (admin only).
4. After inviting, call **check_invitation_status** with their email to confirm the invite is pending, not silently failed.
5. If any coaching tool later returns status 'needs_consent' or 'needs_context' asking to read one of the user's other connected tools, relay the ask exactly, get a yes or no, and call **provide_work_context** with their answer — never read another tool for Ren without the user saying yes first.
6. Once there's at least one direct report, call **daily_check_in** to show them their first real brief — this is the moment they go from an empty workspace to an actual Ren habit.

Don't skip straight to daily_check_in on an empty team — it will have nothing to show, and the user won't understand what Ren does yet.
