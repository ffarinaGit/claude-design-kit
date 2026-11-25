#!/usr/bin/env bash
# Instala el kit de diseño a nivel usuario (~/.claude) para todos los proyectos.
set -u
KIT="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/.claude/agents"

# 1) Skills oficiales (gratis, código abierto)
for repo in emilkowalski/skills pbakaus/impeccable leonxlnx/taste-skill; do
  npx -y skills add "$repo" --agent claude-code -g -y >/dev/null 2>&1 \
    && echo "ok skills: $repo" || echo "FALLO skills: $repo (sigo igual)"
done

# 2) Subagente revisor
cp "$KIT/agents/"*.md "$HOME/.claude/agents/"

# 3) Reglas globales (reemplaza el bloque del kit si ya estaba)
touch "$HOME/.claude/CLAUDE.md"
sed -i '/<!-- claude-design-kit:start -->/,/<!-- claude-design-kit:end -->/d' "$HOME/.claude/CLAUDE.md"
cat "$KIT/global-CLAUDE.md" >> "$HOME/.claude/CLAUDE.md"

# 4) MCP de Playwright (usa el Chromium preinstalado si existe)
ARGS=(-y @playwright/mcp@latest --headless --isolated --no-sandbox)
[ -x /opt/pw-browsers/chromium ] && ARGS+=(--executable-path /opt/pw-browsers/chromium)
claude mcp remove playwright -s user >/dev/null 2>&1 || true
claude mcp add playwright -s user -- npx "${ARGS[@]}" && echo "ok mcp: playwright"
npx -y @playwright/mcp@latest --help >/dev/null 2>&1 || true   # precalienta la descarga

echo "Kit de diseño instalado."
exit 0
