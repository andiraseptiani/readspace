<?php 
//Tambahkan Koneksi Databases
include '../koneksi.php';

//menerima data dari form
$id_kamar = $_POST['id_kamar'];
$harga = $_POST['harga'];

//mengirim ke databases
mysqli_query($koneksi, "insert into harga values('','$id_kamar','$harga')");

//Sesudah Menginput Di alihkan Ke halaman index
header("location:harga.php");
?>