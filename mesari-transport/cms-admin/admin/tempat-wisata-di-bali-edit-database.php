<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{
$lokasi_file_satu=$_FILES[gambar1][tmp_name];
$nama_file_satu=$_FILES[gambar1][name];
$direktori_satu="../../images/$nama_file_satu";
$lokasi_file_dua=$_FILES[gambar2][tmp_name];
$nama_file_dua=$_FILES[gambar2][name];
$direktori_dua="../../images/$nama_file_dua";

if(empty($lokasi_file_satu) AND empty($lokasi_file_dua)){
mysql_query("update wisatabali set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]' where id_wisata_bali='$_POST[id]'") or die (mysql_error());
header("location:tempat-wisata-di-bali.php");
} 
elseif(empty($lokasi_file_satu)){
move_uploaded_file($lokasi_file_dua,"../../images/$nama_file_dua");
mysql_query("update wisatabali set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', gambar_2='$nama_file_dua', direktori2='$direktori_dua' where id_wisata_bali='$_POST[id]'") or die (mysql_error());
header("location:tempat-wisata-di-bali.php");
}
elseif(empty($lokasi_file_dua)){
move_uploaded_file($lokasi_file_satu,"../../images/$nama_file_satu");
mysql_query("update wisatabali set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', gambar_1='$nama_file_satu', direktori1='$direktori_satu' where id_wisata_bali='$_POST[id]'") or die (mysql_error());
header("location:tempat-wisata-di-bali.php");
}
else{
move_uploaded_file($lokasi_file_satu,"../../images/$nama_file_satu");
move_uploaded_file($lokasi_file_dua,"../../images/$nama_file_dua");
mysql_query("update wisatabali set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', gambar_1='$nama_file_satu', gambar_2='$nama_file_dua', direktori1='$direktori_satu', direktori2='$direktori_dua' where id_wisata_bali='$_POST[id]'") or die (mysql_error());
header("location:tempat-wisata-di-bali.php");
}
}
?>