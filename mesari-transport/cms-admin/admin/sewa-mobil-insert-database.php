<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{
$lokasi_file1=$_FILES[gambar1][tmp_name];
$nama_file1=$_FILES[gambar1][name];
$direktori1="../../mobil/$nama_file1";
move_uploaded_file($lokasi_file1,"$direktori1");
$lokasi_file2=$_FILES[gambar2][tmp_name];
$nama_file2=$_FILES[gambar2][name];
$direktori2="../../mobil/$nama_file2";
move_uploaded_file($lokasi_file2,"$direktori2");
$query=mysql_query("insert into car_list (nama_mobil, gambar, spesifikasi, harga_sewa_tanpa_sopir, harga_sewa_dengan_sopir_max_2hari_dgn_bensin, harga_sewa_dengan_sopir_diatas_2hari_dgn_bensin, harga_sewa_dengan_sopir_max_2hari_tanpa_bensin, harga_sewa_dengan_sopir_diatas_2hari_tanpa_bensin, biaya_overtime_dgn_bensin, biaya_overtime_tanpa_bensin, status, gambar_2, direktori1, direktori2) values ('$_POST[nama_mobil]', '$nama_file1', '$_POST[spesifikasi]', '$_POST[harga_sewa_tanpa_sopir]', '$_POST[harga_sewa_dengan_sopir_max_2hari_dgn_bensin]', '$_POST[harga_sewa_dengan_sopir_diatas_2hari_dgn_bensin]', '$_POST[harga_sewa_dengan_sopir_max_2hari_tanpa_bensin]', '$_POST[harga_sewa_dengan_sopir_diatas_2hari_tanpa_bensin]', '$_POST[biaya_overtime_dgn_bensin]', '$_POST[biaya_overtime_tanpa_bensin]', '$_POST[status]', '$nama_file2', '$direktori1', '$direktori2')") or die (mysql_error());
if($query)
header("location:sewa-mobil.php");
}
?>