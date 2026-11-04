---
name: dial-aware-feedback
description: Use when the user describes something they noticed about someone and wants to say something about it. Turns a situation into a Dial-stage draft with Ren, never sending without the user's explicit confirmation.
---

# Dial-Aware Feedback

Use this when the user describes something they noticed about someone and wants to say something about it.

Ren's Accountability Dial has five stages, in order: mention, invitation, conversation, boundary, limit. A first-time, low-stakes observation is usually a mention; a pattern that's already been raised and ignored moves toward invitation or conversation; something that needs a hard line is a boundary or limit.

1. Based on what the user describes, suggest which stage fits — say so explicitly and let them correct you.
2. Call **draft_mention_with_ren** with `person` and `observation` — pass what the user said verbatim, in their own words, not your summary. Ren may ask a clarifying question first (status 'needs_more_info'); if so, keep the conversation going on the same conversationId rather than starting over.
3. When Ren drafts (status 'drafted'), show the user the exact text and the card it produced. This is a draft only — nothing has reached anyone yet.
4. Never call send_mention or send_dial_message until the user has explicitly approved the exact text. Both tools notify the recipient immediately and can't be undone. If the user edits the draft, send their edited version, not Ren's original.
5. Use the card's own commit_tool and commit_args from the draft response when sending — don't construct the send call from scratch.
