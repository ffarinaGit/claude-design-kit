<!-- claude-design-kit:start -->
# Kit de diseño (global)

Cuando el trabajo involucre UI (páginas, componentes, estilos, animaciones), por defecto en **React**:

1. **Antes de diseñar**, cargá las skills que apliquen: `design-taste-frontend` (evitar lo genérico), `impeccable` (tipografía, contraste, estructura, espaciado) y, si hay movimiento, `animate` / `emil-design-eng` (Emil Kowalski).
2. **Después de construir o cambiar UI**, lanzá el subagente `design-reviewer`. Revisa en un navegador real con Playwright y devuelve un informe.
3. **Pedí OK antes de corregir.** Mostrale al usuario el resumen del informe (con las capturas) y la lista de cambios que proponés, numerada. **No edites nada hasta que diga que sí** (puede aprobar todo o solo algunos números).
4. Después de aplicar lo aprobado, volvé a correr `design-reviewer` para confirmar que quedó bien, y mostrá el resultado.
5. Al crear un proyecto nuevo, preguntá primero el rubro, el público y 1–3 referencias que le gusten.

Respondé en español.
<!-- claude-design-kit:end -->
