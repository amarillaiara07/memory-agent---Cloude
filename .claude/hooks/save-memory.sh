#!/usr/bin/env bash
# Stop: hace commit y push de memory/ para que sobreviva al contenedor efímero.
cd "$CLAUDE_PROJECT_DIR" || exit 0
git add memory/ >/dev/null 2>&1
git diff --cached --quiet && exit 0
git commit --quiet -m "memoria: actualizar $(date -u '+%Y-%m-%d %H:%M')" >/dev/null 2>&1
git push --quiet origin HEAD:main >/dev/null 2>&1 || true
exit 0
