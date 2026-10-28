# Memoria persistente

Este repositorio es la memoria de Claude para este usuario. Al iniciar la sesión, el hook
`SessionStart` carga `memory/contexto.md` y los últimos prompts de `memory/prompts.md`.

## Reglas
- Usa esa memoria como contexto en cada respuesta. No le pidas al usuario que repita algo que ya está ahí.
- Cuando el usuario comparta algo duradero (empresa, rol, proyectos, clientes, preferencias, decisiones),
  actualiza la sección correspondiente de `memory/contexto.md`. Mantenlo breve y sin duplicados.
- `memory/prompts.md` se llena solo (hook `UserPromptSubmit`); no lo edites a mano.
- Al terminar cada respuesta, el hook `Stop` hace commit y push de `memory/`.
- No guardes contraseñas, tokens ni datos de tarjetas en la memoria.
- Responde en español.
