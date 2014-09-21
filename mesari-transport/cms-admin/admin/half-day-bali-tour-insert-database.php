<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{
$lokasi_file1=$_FILES[gambar1][tmp_name];
$nama_file1=$_FILES[gambar1][name];
$direktori1="../../paket-wisata/$nama_file1";
move_uploaded_file($lokasi_file1,"$direktori1");
$lokasi_file2=$_FILES[gambar2][tmp_name];
$nama_file2=$_FILES[gambar2][name];
$direktori2="../../paket-wisata/$nama_file2";
move_uploaded_file($lokasi_file2,"$direktori2");
$lokasi_file3=$_FILES[gambar3][tmp_name];
$nama_file3=$_FILES[gambar3][name];
$direktori3="../../paket-wisata/$nama_file3";
move_uploaded_file($lokasi_file3,"$direktori3");
$query=mysql_query("insert into half_day (judul, deskripsi, gambar_1, gambar_2, gambar_3, direktori1, direktori2, direktori3) values ('$_POST[judul]', '$_POST[deskripsi]', '$nama_file1', '$nama_file2', '$nama_file3', '$direktori1', '$direktori2', '$direktori3')") or die (mysql_error());
if($query)
header("location:half-day-bali-tour.php");
}
?>