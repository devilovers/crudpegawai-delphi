# 🧑‍💻 CRUD Data Pegawai - Delphi

Aplikasi CRUD (Create, Read, Update, Delete) sederhana untuk mengelola data pegawai menggunakan Delphi dan database MySQL melalui koneksi ODBC.

---

## ✨ Fitur

* ➕ Tambah data pegawai
* ✏️ Edit data pegawai
* 🗑️ Hapus data pegawai
* 📋 Menampilkan data di DBGrid

---

## 🛠️ Teknologi yang Digunakan

* Delphi (VCL Forms Application)
* MySQL (XAMPP)
* ODBC (MySQL ODBC Driver)

---

## 🗄️ Struktur Database

Nama database: `db_pegawai`

Tabel: `pegawai`

```sql
CREATE TABLE pegawai (
  nip VARCHAR(20) PRIMARY KEY,
  nama VARCHAR(50),
  golongan VARCHAR(10),
  tgl_lahir DATE,
  gaji_pokok INT
);
```

---

## ⚙️ Cara Menjalankan Project

1. Jalankan XAMPP (Apache & MySQL)

2. Import / buat database `db_pegawai` di phpMyAdmin

3. Setup ODBC:

   * Data Source Name: `pegawai_db`
   * Server: `localhost`
   * User: `root`
   * Password: (kosong)
   * Database: `db_pegawai`

4. Buka file project di Delphi:

   ```
   pPegawai.dpr
   ```

5. Jalankan aplikasi ▶️

---

## 📁 Struktur Project

```
pPegawai/
├── pPegawai.dpr
├── Unit1.pas
├── Unit1.dfm
├── README.md
```

---

## 🎯 Tujuan Project

Project ini dibuat untuk memenuhi tugas / ujian praktik dalam pembuatan aplikasi CRUD menggunakan Delphi dan database MySQL.

---

## 🚀 Catatan

Project ini masih sederhana dan dapat dikembangkan lebih lanjut seperti:

* Validasi input
* Pencarian data
* Tampilan UI yang lebih menarik
