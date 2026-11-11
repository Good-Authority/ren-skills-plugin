---
name: one-on-one-prep-and-close-out
description: Use when someone has a 1:1 coming up with Ren, or just had one. Prepares with the user's calendar, Slack, Granola and Linear context, then logs the outcome back to Ren.
---

# 1:1 Prep and Close-Out

Use this instead of starting from scratch each time someone has a 1:1 coming up — it replaces three overlapping prep flows with one.

## Prep

1. Call **prep_one_on_one** with `person` (their name as the user says it) and `focus` (anything the user already wants to cover, in their own words).
2. If the response's status is 'needs_consent', Ren is asking to read a few of the user's other connected tools for this task (its context_for_agent.work_context_request names which ones and why). Relay the ask as written, and get the user's answer: this time, for every 1:1 like this, or not at all.
3. If they say yes, read only the tools they approved — typically calendar (the upcoming meeting), Slack (recent DMs with this person), Granola (notes from past 1:1s), and for engineering or dev directs, Linear (what they're actually working on). Summarize what you find: counts and short titles only, never raw message content, never anything about people outside this 1:1.
4. Call **provide_work_context** with their consent answer and your summarized work_context. Ren continues the same conversation with that context folded in.
5. If status was 'needs_context' instead, the user already said yes to this kind of task before — skip the ask, read the same tools, and call provide_work_context directly.

## Close-out

6. After the 1:1 actually happens, log what came of it back to Ren via **provide_work_context** (or **continue_with_ren** if the conversation is still open) so the next prep has real history to draw on, not just the calendar invite.
