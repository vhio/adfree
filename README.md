# AdFree Hosts

Modul KernelSU untuk memilih dan mengunduh berbagai daftar hosts adblock langsung dari tombol **Action** di KernelSU Manager. Tanpa perlu download file hosts secara manual.

## Fitur
- **Menu pemilihan** - Pilih daftar hosts langsung dari tombol Action
- **Banyak pilihan** - Tersedia dari StevenBlack, AdAway, OISD, 1Hosts, HaGeZi, GoodbyeAds, AWAvenue, dan AdRules
- **Backup otomatis** - Hosts lama otomatis di-backup ke `hosts.bak`
- **Auto-konversi** - Mendukung format `127.0.0.1` dan `dnsmasq` (`address=/domain/`)
- **Validasi ketat** - Hanya menerapkan jika file valid
- **Kompatibel** - Mendukung KernelSU dan fallback Magisk

## Daftar Hosts yang Tersedia

### StevenBlack
| No | Nama | Keterangan |
|---|---|---|
| 1 | Unified | Adware/Malware - Paling ringan |
| 2 | Unified + Fake News | +Fake News |
| 3 | Unified + Gambling | +Gamping?
| 4 | Unified + Porn | +Porn
| 5 | Unified + Social | +Social
| 6 | Unified + FakeNews + Gambling | +FakeNews + Gambling
| 7 | Unified + FakeNews + Gambling + Porn | +FakeNews + Gambling + Porn
| 8 | Unified + FakeNews + Gambling + Porn + Social (MAX) | Paling lengkap
| 9 | Unified + Social + Gambling | +Social + Gambling
| 10 | Unified + Porn + Social | +Porn + Social

### AdFree / Independent
| No | Nama | Keterangan |
|---|---|---|
| 11 | AdAway Official | Fokus adblock + tracker (sangat ringan) | 
| 12 | OISD Small | Seimbang, stabil untuk daily use
| 13 | OISD Big | Lebih agresif, lebih banyak domain diblokir
| 14 | 1Hosts Lite | Ringan & minim false positive
| 15 | 1Hosts Pro | Agresif, lebih lengkap

### HaGeZi / GoodbyeAds
| No | Nama | Keterangan |
|---|---|---|
| 16 | HaGeZi Light | Paling ringan & amaan?
| 17 HaGeZi Normal | Seimbang 
| 18) HaGeZi Pro | Agresif
| 19) HaGeZi Ultimate | Paling agressif
| 20) GoodbyeAds | Ringan & simpel

### AWAvenue / AdRules
| No | Nama | Keterangan |
|---|---|---|
| 21 | AWAvenue Ads Rule | Ringan, modern & minim false positive |
| 22 | AdRules (DNS) - Cats-Team | Seimbang, cakupan luas
| 23 | AdRules (Strict) - Cats-Team | Agresif, cakupan lebih luas

## Cara Install
1. Download `adfree-hosts.zip` dari [Releases](https://github.com/vhio/adfree/releases/latest)
2. Install via **KernelSU Manager > Modules > Install from storage**
3. Buka modul **AdFree Hosts** di KernelSU Manager
4. Tekan tombol **Action**
5. Pilih nomor list yang diinginkan
6. Tunggu proses download & penerapan selesai
7. **Reboot**

## Rekomendasi
- **Daily Use:** `HaGeZi Light (16)` or `AWAvenue Ads Rule (21)`
- **Super Ringan:** `AdAway Official (11)` or `Unified (1)`
- **Agresif:** `HaGeZi Pro (18)` or `AdRules (Strict) (23)`
- **Maksimal Blocking:** `HaGeZi Ultimate (19)`

## Catatan
- Backup otomatis tersimpan at `system/etc/hosts.bak`
- Butuh koneksi internet saat menjalankan Action

## Credits
- [StevenBlack/hosts](https://github.com/StevenBlack/hosts)
- [AdAway](https://github.com/AdAway/AdAway)
- [OISD](https://oisd.nl/)
- [1Hosts](https://github.com/badmojr/1Hosts)
- [HaGeZi/dns-blocklists](https://github.com/hagezi/dns-blocklists)
- [GoodbyeAds](https://github.com/GoodbyeAds/GoodbyeAds)
- [AWAvenue-Ads-Rule](https://github.com/TG-Twilight/AWAvenue-Ads-Rule)
- [Cats-Team/AdRules](https://github.com/Cats-Team/AdRules)
