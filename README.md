# AdFree Hosts

Modul KernelSU untuk memilih dan mengunduh berbagai daftar hosts adblock langsung dari tombol **Action** di KernelSU Manager. Tanpa perlu download file hosts secara manual.

## Fitur
- **Menu pemilihan** - Pilih daftar hosts langsung dari tombol Action
- **Banyak pilihan** - Tersedia dari StevenBlack, AdAway, OISD, dan 1Hosts
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

## Cara Install
1. Download `adfree-hosts.zip` dari [Releases](https://github.com/vhio/adfree/releases/latest)
2. Install melalui **KernelSU Manager > Modules > Install from storage**
3. Buka modul **AdFree Hosts** di KernelSU Manager
4. Tekan tombol **Action**
5. Pilih nomor list yang kamu inginkan (contoh: `12` untuk OISD Small)
6. Tunggu proses download & penerapan selesai
7. **Reboot** perangkat

## Rekomendasi
- **Daily Use:** `OISD Small (12)` - Seimbang antara blocking & kompatibilitas
- **Super Ringan:** `AdAway Official (11)` atau `Unified (1)`
- **Maksimal Blocking:** `OISD Big (13)` atau `1Hosts Pro (15)` - Bisa menyebabkan false positive pada beberapa situs/layanan

## Catatan
- Jika kamu mengganti dari modul `stevenblack-hosts` sebelumnya, lebih aman untuk **uninstall modul lama** terlebih dahulu karena ID modul berbeda (`adfree-hosts`)
- Backup hosts lama otomatis disimpan di `system/etc/hosts.bak` di dalam folder modul
- Butuh koneksi internet saat menjalankan Action

## Credits
- [StevenBlack/hosts](https://github.com/StevenBlack/hosts)
- [AdAway](https://github.com/AdAway/AdAway)
- [OISD](https://oisd.nl/)
- [1Hosts](https://github.com/badmojr/1Hosts)
