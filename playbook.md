# Playbook — GTA 6 Secretos

Versión personalizada del "Faceless GTA 6 Clipping Page: Setup Prompt". Si algo de acá choca con el prompt original, manda este archivo.

## 1. Identidad

| Campo | Valor |
|---|---|
| Nombre | **GTA 6 Secretos** |
| Usuario | **@gta6secretos** (si está tomado, en este orden: `@gta6.secretos`, `@secretosgta6`, `@gta6secretos_`). Usar el mismo en todas las redes. |
| Idioma | Español neutro (tú), pensado para LATAM + España |
| Nicho | **Trucos, secretos y lugares ocultos** ("HOW TO" en español) |
| Zona horaria | Argentina, `America/Argentina/Buenos_Aires` (UTC-3) |
| Horario activo | 10:00 a 03:00 ART |
| Voz | Texto en pantalla siempre + voz IA gratis (texto a voz de CapCut, voz en español) en los tutoriales |

**Por qué este nicho:** los tutoriales se guardan y se comparten, y eso es lo que más empuja a gente que no te sigue. Además no dependen de llegar primero a una noticia (eso lo ganan cuentas grandes), sirven por meses y la semana de lanzamiento es cuando más se busca "cómo hacer X". En español hay mucha menos competencia que en inglés.

**Bio (todas las redes):**
> Trucos, secretos y lugares ocultos de GTA 6 🌴
> Página de fans. No afiliada a Rockstar Games.

**Foto de perfil:** `brand/avatar.png`. **Banner:** `brand/banner-youtube.png` (YouTube) y `brand/banner-1500x500.png` (X, si se abre después).

## 2. Plataformas (plan gratis de Buffer = 3 canales)

1. **TikTok**: el mejor alcance para cuentas nuevas.
2. **YouTube Shorts**: el mismo video; los Shorts siguen sumando vistas por semanas.
3. **Instagram Reels**: la cuenta tiene que ser **Profesional (Creador)** para que Buffer publique solo.

X y Threads quedan afuera al principio. X premia a quien ya tiene seguidores y llega primero con noticias, y el plan gratis no da para un cuarto canal. Se revisa en la semana 2.

**Límites de Buffer gratis (según fuentes de terceros; confirmalo en tu cuenta):** 3 canales y hasta 10 posts en cola por canal. Al publicarse uno, se libera el lugar. Con el volumen de abajo alcanza.

## 3. Volumen

Un mismo video vertical sale en las 3 redes. Se trabaja una vez y se publica tres veces.

| Período | Videos por día (en cada red) |
|---|---|
| Hoy y mañana (17–18 nov) | 2 |
| Lanzamiento (19–20 nov) | 4 a 5 |
| Desde el 21 nov | 2 (3 si hay buen material) |

Calidad antes que cantidad: si no hay nada bueno, se saltea el horario.

## 4. Horarios (ART)

| Horario | Qué |
|---|---|
| 12:30 | Tutorial ("CÓMO…") |
| 19:00 | Secreto o lugar oculto, o clip con crédito |
| 22:30 | Cuenta regresiva, pregunta o el mejor clip del día |

Por qué: a las 12:30 ART es mañana en México y mediodía en el Cono Sur; 19:00 a 23:00 ART es el pico de la tarde-noche en toda LATAM (y de noche en España). Ajustar con datos después de la semana 1.

## 5. Mezcla de contenido (nicho = tutoriales y secretos)

| Pilar | Peso | Ejemplo |
|---|---|---|
| Tutoriales "CÓMO…" | 40% | CÓMO GANAR DINERO RÁPIDO EN GTA 6 (3 pasos) |
| Secretos y lugares ocultos | 30% | EL LUGAR QUE NADIE ENCONTRÓ EN VICE CITY |
| Clips con crédito | 15% | Momento gracioso o increíble de un streamer |
| Cuenta regresiva / nostalgia / preguntas | 15% | "13 años de Los Santos." |

## 6. Reglas sin aprobación

No hace falta pedirte permiso para nada. A cambio, estas reglas son fijas y no se saltean nunca:

1. Cada dato tiene que estar en `facts.md` con fuente oficial. Si no está, no se publica.
2. Nada de rumores, filtraciones, piratería, "jugar antes" ni exploits.
3. Nada de "screenshots" o "gameplay" hechos con IA presentados como reales.
4. Nunca dar a entender que somos Rockstar. Nada de sorteos ni "copias gratis".
5. Crédito en cada clip ajeno (`🎥 @creador`). Si alguien pide bajarlo, se baja el mismo día y se anota en `takedowns.md`.
6. Sin spoilers de historia en el gancho ni en la portada. Si el clip tiene historia, la descripción arranca con "SPOILER".
7. Nunca pagar nada ni pasar a un plan pago.

## 7. Formato de cada video

- **Gancho en el primer segundo**, en mayúsculas, arriba: "CÓMO GANAR DINERO RÁPIDO EN GTA 6".
- **7 a 30 segundos.** Sin aire al principio. Termina en el remate.
- **Subtítulos grandes y centrados.** La mitad mira sin sonido.
- **Siempre algo nuestro:** pasos numerados, voz IA o comentario. Re-subir un clip sin cambios lo entierra Instagram.
- Exportar MP4, H.264, AAC, 1080x1920. Script listo: `scripts/vertical.sh`.

**Descripciones:**
- TikTok / Shorts: gancho corto + 3 hashtags (`#gta6 #gtavi #gta6tips`).
- Instagram: gancho, 1–2 frases de valor, crédito, 3–5 hashtags (`#gta6 #gtavi #gta6tips #vicecity #gaming`).

## 8. Rutina diaria (ART)

- **10:00**: revisar Rockstar Newswire y @RockstarGames, y lo que pasó de noche en r/GTA6. Mirar la cola de Buffer.
- **10:30–12:00**: editar los 2 videos del día y programarlos en Buffer.
- **Cada 2–3 h**: 15 min respondiendo comentarios propios; cada pregunta repetida va a `idea-bank.md`.
- **22:30**: anotar métricas a 12, 24 y 72 h en `scoreboard.csv`.
- **Antes de dormir**: una línea en `learning.md` (qué funcionó, qué no, prueba de mañana).

## 9. Bucle de aprendizaje

- **Una prueba por día:** cambiar una sola variable (largo, tipo de gancho, horario, con voz o sin voz). Se anota en `test_name`.
- Sin conclusiones antes de 24 h. Mejor la lectura de 72 h.
- Domingo: top 3 y bottom 3, mediana por pilar y por horario. Hacer más de lo que supera la mediana; cortar lo que estuvo abajo toda la semana.
