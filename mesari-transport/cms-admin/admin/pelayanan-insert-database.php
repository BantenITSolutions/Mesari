<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{
$lokasi_file=$_FILES[gambar][tmp_name];
$nama_file=$_FILES[gambar][name];
$direktori="../../images/$nama_file";
move_uploaded_file($lokasi_file,"$direktori");
$query=mysql_query("insert into pelayanan (judul, deskripsi, gambar, direktori) values ('$_POST[judul]', '$_POST[deskripsi]', '$nama_file', '$direktori')") or die (mysql_error());
if($query)
header("location:pelayanan.php");
}
?>