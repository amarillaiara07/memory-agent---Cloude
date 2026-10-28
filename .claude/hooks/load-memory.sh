#!/usr/bin/env bash
# SessionStart: trae la memoria más reciente del repo y la inyecta como contexto.
cd "$CLAUDE_PROJECT_DIR" || exit 0
git pull --quiet --rebase origin main >/dev/null 2>&1 || true
echo "=== MEMORIA PERSISTENTE (memory/contexto.md) ==="
cat memory/contexto.md 2>/dev/null
echo
echo "=== ÚLTIMOS PROMPTS DEL USUARIO (memory/prompts.md) ==="
tail -n 60 memory/prompts.md 2>/dev/null
exit 0
