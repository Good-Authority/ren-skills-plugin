---
name: transcript-to-ren-context
description: Use when the user has a meeting transcript (from Zoom, Granola, or anywhere else) they want Ren to know about. Sends it to Ren with upload_transcript so coaching reflects the real conversation.
---

# Transcript to Ren Context

Use this when the user has a meeting transcript (from Zoom, Granola, or anywhere else) they want Ren to know about.

1. Gather the four required pieces:
   - `title` — the meeting's name.
   - `startTime` — an ISO datetime, must be within the last 6 months and not in the future.
   - `attendeeEmails` — everyone else who was there. Every email must already be a member of this organization; do not include the caller's own email.
   - `transcriptText` — the full transcript text, up to about 900KB.
2. Call **upload_transcript** with those four fields.
3. Ren screens the transcript for personal information and automatically generates a meeting brief for every attendee, delivered the same way their other briefs are (for example a Slack DM) — this happens immediately on upload, so only call this once you have the user's go-ahead to share the transcript with Ren.
4. If an attendee isn't yet a member of the organization, they can't be included — tell the user, don't silently drop them without mentioning it.
