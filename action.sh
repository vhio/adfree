#!/system/bin/sh
# AdFree Hosts Selector untuk KernelSU Action
MODDIR=${0%/*}
BASE_SB="https://raw.githubusercontent.com/StevenBlack/hosts/master"
TMP="$MODDIR/hosts.tmp"
BACKUP="$MODDIR/system/etc/hosts.bak"
HOSTS="$MODDIR/system/etc/hosts"

echo "====================================="
echo "          AdFree Hosts Menu         "
echo "====================================="
echo ""
echo "[ STEVENBLACK ]"
echo " 1) Unified (adware/malware) - Paling ringan"
echo " 2) Unified + Fake News"
echo " 3) Unified + Gambling"
echo " 4) Unified + Porn"
echo " 5) Unified + Social"
echo " 6) Unified + FakeNews + Gambling"
echo " 7) Unified + FakeNews + Gambling + Porn"
echo " 8) Unified + FakeNews + Gambling + Porn + Social (MAX)"
echo " 9) Unified + Social + Gambling"
echo "10) Unified + Porn + Social"
echo ""
echo "[ ADFREE / INDEPENDENT ]"
echo "11) AdAway Official (hosts.txt)"
echo "12) OISD Small (Seimbang & stabil)"
echo "13) OISD Big (Lebih agresif)"
echo "14) 1Hosts Lite (Ringan)"
echo "15) 1Hosts Pro (Agresif)"
echo ""
echo "[ HAGEZI / GOODBYEADS ]"
echo "16) HaGeZi Light (Paling ringan & aman)"
echo "17) HaGeZi Normal (Seimbang)"
echo "18) HaGeZi Pro (Agresif)"
echo "19) HaGeZi Ultimate (Paling agressif)"
echo "20) GoodbyeAds (Ringan & simpel)"
echo ""
echo "[ AWAvenue / AdRules ]"
echo "21) AWAvenue Ads Rule (Ringan & modern)"
echo "22) AdRules (DNS) - Cats-Team (Seimbang)"
echo "23) AdRules (Strict) - Cats-Team (Agresif)"
echo ""
echo -n "Masukkan pilihan [1-23] (default: 1): "
read -r choice 2>/dev/null
[ -z "$choice" ] && choice=1

case "$choice" in
  1) URL="$BASE_SB/hosts" ;;
  2) URL="$BASE_SB/alternates/fakenews/hosts" ;;
  3) URL="$BASE_SB/alternates/gambling/hosts" ;;
  4) URL="$BASE_SB/alternates/porn/hosts" ;;
  5) URL="$BASE_SB/alternates/social/hosts" ;;
  6) URL="$BASE_SB/alternates/fakenews-gambling/hosts" ;;
  7) URL="$BASE_SB/alternates/fakenews-gambling-porn/hosts" ;;
  8) URL="$BASE_SB/alternates/fakenews-gambling-porn-social/hosts" ;;
  9) URL="$BASE_SB/alternates/gambling-social/hosts" ;;
  10) URL="$BASE_SB/alternates/porn-social/hosts" ;;
  11) URL="https://raw.githubusercontent.com/AdAway/adaway.github.io/master/hosts.txt" ;;
  12) URL="https://small.oisd.nl/dnsmasq2" ;;
  13) URL="https://big.oisd.nl/dnsmasq2" ;;
  14) URL="https://raw.githubusercontent.com/badmojr/1Hosts/master/Lite/hosts.txt" ;;
  15) URL="https://raw.githubusercontent.com/badmojr/1Hosts/master/Pro/hosts.txt" ;;
  16) URL="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/light.txt" ;;
  17) URL="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/multi.txt" ;;
  18) URL="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/pro.txt" ;;
  19) URL="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/ultimate.txt" ;;
  20) URL="https://raw.githubusercontent.com/GoodbyeAds/GoodbyeAds/master/Hosts/GoodbyeAds.txt" ;;
  21) URL="https://raw.githubusercontent.com/TG-Twilight/AWAvenue-Ads-Rule/main/AWAvenue-Ads-Rule-Hosts.txt" ;;
  22) URL="https://raw.githubusercontent.com/Cats-Team/AdRules/main/dns.txt" ;;
  23) URL="https://raw.githubusercontent.com/Cats-Team/AdRules/main/strict-dns.txt" ;;
  *) echo "! Pilihan tidak valid. Menggunakan Unified."; URL="$BASE_SB/hosts" ;;
esac

echo ""
echo "- Mengunduh dari:"
echo "  $URL"
echo ""

if command -v curl >/dev/null 2>&1; then
  curl -fsSL "$URL" -o "$TMP"
elif command -v wget >/dev/null 2>&1; then
  wget -q -O "$TMP" "$URL"
else
  busybox wget -q -O "$TMP" "$URL" 2>/dev/null
fi

mkdir -p "$MODDIR/system/etc"

# Normalisasi format 127.0.0.1 -> 0.0.0.0
if [ -s "$TMP" ] && grep -q '^127\.0\.0\.1[[:space:]]' "$TMP" && ! grep -q '^0\.0\.0\.0[[:space:]]' "$TMP"; then
  echo "- Menyesuaikan format hosts ke 0.0.0.0..."
  sed -i 's/^127\.0\.0\.1[[:space:]]\+/0.0.0.0 /g' "$TMP"
fi

# Hapus baris non-hosts biar lebih aman buat OISD (dnsmasq2)
if grep -q '^address=' "$TMP"; then
  echo "- Mengonversi format dnsmasq ke format hosts..."
  grep '^address=/' "$TMP" | sed 's|address=/||g; s|/$||g' | awk '{print "0.0.0.0 " $0}' > "$TMP.clean" && mv "$TMP.clean" "$TMP"
fi

if [ -s "$TMP" ] && grep -qE '^0\.0\.0\.0[[:space:]]' "$TMP"; then
  [ -f "$HOSTS" ] && cp "$HOSTS" "$BACKUP" 2>/dev/null && echo "- Backup hosts lama disimpan ke hosts.bak"
  mv "$TMP" "$HOSTS" || { rm -f "$TMP"; echo "! Gagal menerapkan hosts."; exit 1; }
  chmod 644 "$HOSTS"
  echo "- Berhasil menerapkan daftar hosts terpilih."
  echo "- Reboot untuk menerapkan ke sistem."
else
  rm -f "$TMP" "$TMP.clean" 2>/dev/null
  echo "! Gagal mengunduh atau file tidak valid."
  echo "! Cek koneksi internet kamu."
  exit 1
fi
