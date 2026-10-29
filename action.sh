#!/system/bin/sh
# Update daftar hosts dari StevenBlack (butuh internet)
MODDIR=${0%/*}
URL="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
TMP="$MODDIR/hosts.tmp"

echo "- Mengunduh daftar hosts..."
if command -v curl >/dev/null 2>&1; then
  curl -fsSL "$URL" -o "$TMP"
elif command -v wget >/dev/null 2>&1; then
  wget -q -O "$TMP" "$URL"
else
  busybox wget -q -O "$TMP" "$URL" 2>/dev/null
fi

mkdir -p "$MODDIR/system/etc"

if [ -s "$TMP" ] && grep -qE '^0\.0\.0\.0[[:space:]]' "$TMP"; then
  mv "$TMP" "$MODDIR/system/etc/hosts" || { rm -f "$TMP"; echo "! Gagal menerapkan hosts."; exit 1; }
  chmod 644 "$MODDIR/system/etc/hosts"
  echo "- Berhasil. Reboot untuk menerapkan."
else
  rm -f "$TMP"
  echo "! Gagal mengunduh. Cek koneksi."
fi
