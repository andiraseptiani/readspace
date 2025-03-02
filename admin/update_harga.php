<?php  
//tambahkan koneksi
include '../koneksi.php';

//ambil data dari form edit
$id_harga = $_POST['id_harga'];
$id_kamar = $_POST['id_kamar'];
$harga = $_POST['harga'];

//update data ke tabel databases
mysqli_query($koneksi, "update harga set id_kamar='$id_kamar', harga='$harga' where id_harga='$id_harga'");

//mengalihkan ke halaman index setelah berhail mengupdate
header("location:harga.php");
?>