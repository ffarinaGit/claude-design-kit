# claude-design-kit

Kit para que Claude Code (web, celular y escritorio) diseñe con criterio en **todos** los proyectos.

| Pieza | Qué hace | Fuente |
|---|---|---|
| Skills de Emil Kowalski | Animación e interacción | [emilkowalski/skills](https://github.com/emilkowalski/skills) |
| Impeccable | Tipografía, contraste, estructura, espaciado | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| Taste | Evita diseños genéricos | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| Playwright MCP | Navegador real para revisar | [microsoft/playwright-mcp](https://github.com/microsoft/playwright-mcp) |
| `design-reviewer` | Subagente que revisa en el navegador y propone arreglos (pide OK antes de cambiar) | este repo |

## Cómo se instala
En la nube, el *setup script* del entorno corre esto en cada sesión nueva:

```bash
git clone --depth 1 https://github.com/ffarinagit/claude-design-kit /tmp/claude-design-kit && bash /tmp/claude-design-kit/install.sh
```

En una computadora: clonar y correr `bash install.sh`.

## Uso
Pedí cualquier cosa de UI normalmente. Claude usa las skills, lanza `design-reviewer`, te muestra el informe con capturas y **espera tu OK** antes de corregir.
