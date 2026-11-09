#!/usr/bin/env bash
# Builds ren-chatgpt.zip for Platform → Plugins → Upload.
# Packages chatgpt/.codex-plugin, chatgpt/.mcp.json and chatgpt/assets
# together with the shared skills/ from the repo root, so the Claude and
# ChatGPT plugins always ship the same skills.
set -euo pipefail
cd "$(dirname "$0")/.."
if grep -q DEMO_URL_TODO chatgpt/.codex-plugin/plugin.json; then
  echo "Set extensions.com.openai.review.demo_recording_url in chatgpt/.codex-plugin/plugin.json first." >&2
  exit 1
fi
out="$PWD/ren-chatgpt.zip"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
mkdir -p "$tmp/ren"
cp -R chatgpt/.codex-plugin chatgpt/.mcp.json chatgpt/assets skills LICENSE "$tmp/ren/"
rm -f "$out"
(cd "$tmp/ren" && zip -qr -X "$out" . -x '.DS_Store' '*/.DS_Store')
echo "Built $out"
