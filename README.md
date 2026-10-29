# AdFree Hosts

Modul KernelSU untuk memilih dan mengunduh berbagai daftar hosts adblock langsung dari tombol **Action** di KernelSU Manager. Tanpa perlu download file hosts secara manual.

## Fitur
- **Menu pemilihan** - Pilih daftar hosts langsung dari tombol Action
- **Banyak pilihan** - Tersedia dari StevenBlack, AdAway, OISD, 1Hosts, HaGeZi, dan GoodbyeAds
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
| 3 | Unified + Gambling | +Gambling |
| 4 | Unified + Porn | +Porn |
| 5 | Unified + Social | +Social |
| 6 | Unified + FakeNews + Gambling | +FakeNews + Gambling |
| 7 | Unified + FakeNews + Gambling + Porn | +FakeNews + Gambling + Porn |
| 8 | Unified + FakeNews + Gambling + Porn + Social (MAX) | Paling lengkap |
| 9 | Unified + Social + Gambling | +Social + Gambling |
| 10 | Unified + Porn + Social | +Porn + Social |

### AdFree / Independent
| No | Nama | Keterangan |
|---|---|---|
| 11 | AdAway Official | Fokus adblock + tracker (sangat ringan) |
| 12 | OISD Small | Seimbang, stabil untuk daily use |
| 13 | OISD Big | Lebih agresif, lebih banyak domain diblokir |
| 14 | 1Hosts Lite | Ringan & minim false positive |
| 15 | 1Hosts Pro | Agresif, lebih lengkap |

### HaGeZi / GoodbyeAds
| No | Nama | Keterangan |
|---|---|---|
| 16 | HaGeZi Light | Paling ringan & aman, minim false positive |
| 17 | HaGeZi Normal | Seimbang antara blocking & kompatibilitas |
| 18 | HaGezi Pro | Agresif, cakupan luas untuk ad/tracker |
| 19 | HaGeZi Ultimate | Paling agresif, cakupan sangat luas |
| 20 | GoodbyeAds | Ringan & simpel, cocok buat daily use |

## Cara Install
1. Download `adfree-hosts.zip` dari [Releases](https://github.com/vhio/adfree/releases/latest)
2. Install via **KernelSU Manager > Modules > Install from storage**
3. Buka modul **AdFree Hosts** di KernelSU Manager
4. Tekan tombol **Action**
5. Pilih nomor list yang kamu inginkan (contoh: `16` untuk HaGeZi Light)
6. Tunggu proses download & penerapan selesai
7. **Reboot** perangkat

## Rekomendasi
- **Daily Use:** `HaGeZi Light (16)` atau `OISD Small (12)` - Sangat stabil
- **Super Ringan:** `AdAway Official (11)` atau `Unified (1)`
- **Agresif:** `HaGeZi Pro (18)` atau `1Hosts Pro (15)` - Bisa menyebabkan false positive pada beberapa situs/layanan
- **Maksimal Blocking:** `HaGeZi Ultimate (19)` - Lebih agresif, cocok kalo pengen nutup banyak hal

## Catatan
- If you want to replace from the previous `stevenblack-hosts` module, uninstall the old module first since the module ID changed to `adfree-hosts`
- Backup otomatis tersimpan di `system/etc/hosts.bak` di dalam folder modul
- Butuh koneksi internet saat menjalankan Action

## Credits
- [StevenBlack/hosts](https://github.com/StevenBlack/hosts)
- [AdAway](https://github.com/AdAway/AdAway)
- [OISD](https://oisd.nl/)
- [1Hosts](https://github.com/badmojr/1Hosts)
- [HaGeZi/dns-blocklists](https://github.com/hagezi/dns-blocklists)
- [GoodbyeAds](https://github.com/GoodbyeAds/GoodbyeAds)
