# Ren AI for ChatGPT

The ChatGPT plugin package for Ren, in OpenAI's Codex plugin layout. It reuses the shared `skills/` at the repo root and connects to Ren's MCP server at `https://mcp.tryren.com/mcp` (OAuth with dynamic client registration, so there's no client secret).

- `.codex-plugin/plugin.json`: manifest, listing copy, review test cases (5 positive, 3 negative) and publication settings
- `.mcp.json`: the Ren MCP server
- `assets/logo.png`: icon

## Submit

1. Set `extensions.com.openai.review.demo_recording_url` to a public recording of Ren working in ChatGPT.
2. Run `./chatgpt/build.sh` to create `ren-chatgpt.zip` (it is git-ignored).
3. In platform.openai.com go to **Plugins**, upload the ZIP and clear the automated checks.
4. Under **Review details**, enter the reviewer test account (password login, no MFA) privately. Never put credentials in this repo.
5. Submit for review.

Docs: https://developers.openai.com/plugins/deploy/submission
