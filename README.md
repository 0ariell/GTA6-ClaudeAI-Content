# GTA 6 Secretos (@gta6secretos)

Página de fans sin cara de GTA 6: **trucos, secretos y lugares ocultos**, en español, en TikTok, YouTube Shorts e Instagram Reels.

| Archivo | Qué es |
|---|---|
| `playbook.md` | Identidad, plataformas, volumen, horarios, reglas. **Empezar acá.** |
| `facts.md` | Datos verificados con fuente. Solo se publica lo que está ahí. |
| `idea-bank.md` | Borradores listos para publicar |
| `watchlist.md` | Cuentas oficiales, subreddits y creadores |
| `log.md` · `scoreboard.csv` · `learning.md` · `takedowns.md` | Registro, métricas, aprendizajes, pedidos de baja |
| `brand/` | Foto de perfil y banners |
| `scripts/vertical.sh` | Pasa un clip horizontal a vertical 1080x1920 con gancho y crédito |
| `media/official` · `media/raw` · `media/edits` | Arte oficial, clips originales, videos terminados |

## Plan de lanzamiento (todo en hora argentina)

### Hoy, martes 17
1. Crear las cuentas con el usuario **@gta6secretos** (o el siguiente libre de la lista del playbook): TikTok, Instagram (pasarla a **Profesional → Creador**) y un canal de YouTube.
2. En cada una: foto `brand/avatar.png`, banner y la bio del playbook.
3. Crear cuenta gratis en Buffer y conectar los 3 canales. Horario de Buffer: **Argentina**.
4. Bajar arte oficial de [rockstargames.com/VI](https://www.rockstargames.com/VI) a `media/official/`.
5. Publicar los borradores 1 y 2 de `idea-bank.md` (si no llegás a las 12:30, publicá el 1 apenas puedas).

### Mañana, miércoles 18
- **08:00**: Nueva Zelanda ya está jugando (vos dormís, no pasa nada).
- **10:00**: Australia desbloquea. Buscá streams en vivo de allá; tomá momentos que **no** sean de la historia (manejo, mapa, gráficos, gente de la calle, cosas graciosas).
- 12:30 y 19:00: borradores 3 y 4. Entre medio, 1 o 2 clips con crédito.
- **20:00**: desbloquea España. Más streams en español.
- 22:30: borrador 5. Dejar la cola de Buffer **vacía** cerca de la medianoche.

### Jueves 19, 00:00: sale en Argentina
- **00:00**: borrador 6 con "Compartir ahora" (no programado).
- Hasta las 03:00 y todo el jueves y viernes: un video cada 2 h. Prioridad: primer gameplay, mapa, detalles ocultos, tutoriales.
- Cada pregunta repetida en comentarios → un tutorial ese mismo día.

### Desde el 21
Rutina normal del `playbook.md`: 2 videos por día, métricas a las 22:30, revisión el domingo.

## Editar un clip

```bash
scripts/vertical.sh media/raw/clip.mp4 00:01:12 18 "NADIE ENCONTRÓ|ESTE LUGAR" "@creador" media/edits/lugar.mp4
```

Sin PC: usá CapCut gratis (formato 9:16, texto grande arriba, subtítulos automáticos, texto a voz en español).
