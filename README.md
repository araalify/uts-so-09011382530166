# uts-so-09011382530166

## 1. Identitas
- **Nama:** Ara Afidah Alifiya
- **NIM:** 09011382530166
- **Kelas:** SKU3B

## 2. Deskripsi
Script ini dirancang untuk mengotomatisasi proses pencarian file catatan praktikum berformat `.txt` (termasuk di dalam subdirektori) menggunakan utilitas `find`, kemudian mengarsip dan mengompresnya ke dalam format `.tar.gz` dengan penamaan berbasis waktu (`timestamp`), serta mencatat riwayat eksekusi ke dalam file `backup.log`[cite: 1, 2].

## 3. Cara Menjalankan
- **Menjalankan backup manual:**
  ```bash
  ./script/backup.sh
  ```
- **Menjalankan backup otomatis berulang di background:**
  ```bash
  ./script/backup_loop.sh &
  ```[cite: 2, 3]
- **Menjalankan backup menggunakan alias:**
  ```bash
  bk166
  ```[cite: 1, 3]

## 4. Fitur Pengembangan (Rotasi Arsip)
Fitur pengembangan yang dipilih adalah **Rotasi Arsip**. Fitur ini memastikan bahwa direktori tujuan hanya menyimpan maksimal 5 file arsip `.tar.gz` terbaru, dan secara otomatis menghapus arsip yang lebih lama agar tidak membuang ruang penyimpanan.
- **Cara mencobanya:** Jalankan script backup berkali-kali hingga menghasilkan lebih dari 5 file arsip, lalu periksa direktori backup untuk memastikan hanya 5 arsip terbaru yang tersisa.

## 5. Bukti Job Control
Berikut adalah salinan teks keluaran dari pengujian *job control* di terminal:
```text
ara@ara-VirtualBox:~/uts-so-09011382530166$ ./script/backup_loop.sh &
[1] 4442
ara@ara-VirtualBox:~/uts-so-09011382530166$ jobs
[1]+  Running                 ./script/backup_loop.sh &
ara@ara-VirtualBox:~/uts-so-09011382530166$ fg 1
./script/backup_loop.sh
^Z
[1]+  Stopped                 ./script/backup_loop.sh
ara@ara-VirtualBox:~/uts-so-09011382530166$ bg
[1]+ ./script/backup_loop.sh &
ara@ara-VirtualBox:~/uts-so-09011382530166$ ps x
  PID TTY      STAT   TIME COMMAND
 4442 pts/0    S      0:00 /bin/bash ./script/backup_loop.sh
ara@ara-VirtualBox:~/uts-so-09011382530166$ kill %1
[1]+  Terminated              ./script/backup_loop.sh
```[cite: 3]
