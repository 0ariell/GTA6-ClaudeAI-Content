#!/usr/bin/env bash
# Converts a horizontal clip into a 1080x1920 vertical video with a hook at the top and a credit at the bottom.
#
# Usage:
#   scripts/vertical.sh INPUT START DURATION "HOOK" "@credit" OUTPUT [blur|crop] [subtitles.srt]
#
# Example:
#   scripts/vertical.sh media/raw/clip.mp4 00:01:12 18 "NADIE ENCONTRÓ|ESTE LUGAR 👀" "@creador" media/edits/lugar.mp4
#
# - Use "|" in the hook to start a new line (2 short lines read best).
# - blur (default): the full frame sits in the middle over a blurred copy. Good for gameplay.
# - crop: cuts the centre to 9:16. Good when the action is in the middle.
# - Optional .srt: burns large subtitles.
set -euo pipefail

if [ $# -lt 6 ]; then
  sed -n '2,15p' "$0"; exit 1
fi

IN=$1; START=$2; DUR=$3; HOOK=$4; CREDIT=$5; OUT=$6; MODE=${7:-blur}; SRT=${8:-}
FONT=${FONT:-/usr/share/fonts/opentype/inter/Inter-ExtraBold.otf}
[ -f "$FONT" ] || FONT=$(fc-match -f '%{file}' 'sans:bold')

TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT
# ffmpeg cannot draw emoji: strip them from on-screen text (keep them in the caption).
strip() { perl -CSD -pe 's/[\x{1F000}-\x{1FAFF}\x{2600}-\x{27BF}\x{FE0F}\x{200D}]//g; s/ +$//mg'; }
printf '%s' "$HOOK" | tr '|' '\n' | strip > "$TMP/hook.txt"
printf 'vía %s' "$CREDIT" | strip > "$TMP/credit.txt"

if [ "$MODE" = crop ]; then
  BASE="[0:v]scale=-2:1920,crop=1080:1920[v0]"
else
  BASE="[0:v]split[a][b];[a]scale=1080:1920:force_original_aspect_ratio=increase,crop=1080:1920,boxblur=30:2,eq=brightness=-0.15[bg];[b]scale=1080:-2[fg];[bg][fg]overlay=(W-w)/2:(H-h)/2[v0]"
fi

TEXT="drawtext=fontfile=$FONT:textfile=$TMP/hook.txt:fontsize=72:fontcolor=white:borderw=6:bordercolor=black:line_spacing=12:x=(w-text_w)/2:y=260"
[ -n "$CREDIT" ] && TEXT="$TEXT,drawtext=fontfile=$FONT:textfile=$TMP/credit.txt:fontsize=40:fontcolor=white:borderw=4:bordercolor=black:x=(w-text_w)/2:y=h-380"
if [ -n "$SRT" ]; then
  cp "$SRT" "$TMP/subs.srt"
  TEXT="$TEXT,subtitles=$TMP/subs.srt:force_style='FontName=Inter,FontSize=16,Bold=1,Outline=3,Alignment=2,MarginV=180'"
fi

ffmpeg -hide_banner -loglevel error -y -ss "$START" -t "$DUR" -i "$IN" \
  -filter_complex "$BASE;[v0]$TEXT,fps=30,format=yuv420p[v]" \
  -map "[v]" -map 0:a? -c:v libx264 -preset medium -crf 20 -c:a aac -b:a 160k -movflags +faststart "$OUT"
echo "Listo: $OUT"
