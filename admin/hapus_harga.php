<?php 
//menambahkan koneksi
include '../koneksi.php';

//menangkap data yang di kirim dari url
$id_fasilitas=$_GET['id_harga'];

//menghapus data dari tabel databases
mysqli_query($koneksi, "delete from harga where id_harga='$id_harga'");
//mengalihkan ke halaman index setelah berhasil menghapus
header("location:harga.php");
?>