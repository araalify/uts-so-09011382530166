# 6. Kendala

- **Kendala 1:** Sempat mengalami error Permission denied saat pertama kali menjalankan script di background.
  - **Solusi:** Memberikan izin eksekusi terlebih dahulu menggunakan perintah `chmod +x script/*.sh`.

- **Kendala 2:** Terjadi error jalur direktori saat script dijalankan dari luar folder repositori.
  - **Solusi:** Memastikan pemanggilan script selalu menggunakan jalur relatif yang benar atau menggunakan variabel direktori berbasis `$HOME`.
