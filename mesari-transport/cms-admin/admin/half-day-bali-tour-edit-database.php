<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{
$lokasi_file_satu=$_FILES[gambar1][tmp_name];
$nama_file_satu=$_FILES[gambar1][name];
$direktori_satu="../../paket-wisata/$nama_file_satu";
$lokasi_file_dua=$_FILES[gambar2][tmp_name];
$nama_file_dua=$_FILES[gambar2][name];
$direktori_dua="../../paket-wisata/$nama_file_dua";
$lokasi_file_tiga=$_FILES[gambar3][tmp_name];
$nama_file_tiga=$_FILES[gambar3][name];
$direktori_tiga="../../paket-wisata/$nama_file_tiga";

if(empty($lokasi_file_satu) AND empty($lokasi_file_dua) AND empty($lokasi_file_tiga)){
mysql_query("update half_day set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]' where id_half_day='$_POST[id]'") or die (mysql_error());
header("location:half-day-bali-tour.php");
} 
elseif(empty($lokasi_file_satu) AND empty($lokasi_file_dua)){
move_uploaded_file($lokasi_file_tiga,"$direktori_tiga");
mysql_query("update half_day set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', gambar_3='$nama_file_tiga', direktori3='$direktori_tiga' where id_half_day='$_POST[id]'") or die (mysql_error());
header("location:half-day-bali-tour.php");
}
elseif(empty($lokasi_file_satu) AND empty($lokasi_file_tiga)){
move_uploaded_file($lokasi_file_dua,"../../paket-wisata/$nama_file_dua");
mysql_query("update half_day set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', gambar_2='$nama_file_dua', direktori2='$direktori_dua' where id_half_day='$_POST[id]'") or die (mysql_error());
header("location:half-day-bali-tour.php");
}
elseif(empty($lokasi_file_dua) AND empty($lokasi_file_tiga)){
move_uploaded_file($lokasi_file_satu,"../../paket-wisata/$nama_file_satu");
mysql_query("update half_day set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', gambar_1='$nama_file_satu', direktori1='$direktori_satu' where id_half_day='$_POST[id]'") or die (mysql_error());
header("location:half-day-bali-tour.php");
}
elseif(empty($lokasi_file_satu)){
move_uploaded_file($lokasi_file_dua,"../../paket-wisata/$nama_file_dua");
move_uploaded_file($lokasi_file_tiga,"../../paket-wisata/$nama_file_tiga");
mysql_query("update half_day set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', gambar_2='$nama_file_dua', gambar_3='$nama_file_tiga', direktori2='$direktori_dua', direktori3='$direktori_tiga' where id_half_day='$_POST[id]'") or die (mysql_error());
header("location:half-day-bali-tour.php");
}
elseif(empty($lokasi_file_dua)){
move_uploaded_file($lokasi_file_satu,"../../paket-wisata/$nama_file_satu");
move_uploaded_file($lokasi_file_tiga,"../../paket-wisata/$nama_file_tiga");
mysql_query("update half_day set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', gambar_1='$nama_file_satu', gambar_3='$nama_file_tiga', direktori1='$direktori_satu', direktori3='$direktori_tiga' where id_half_day='$_POST[id]'") or die (mysql_error());
header("location:half-day-bali-tour.php");
}
elseif(empty($lokasi_file_tiga)){
move_uploaded_file($lokasi_file_satu,"../../paket-wisata/$nama_file_satu");
move_uploaded_file($lokasi_file_dua,"../../paket-wisata/$nama_file_dua");
mysql_query("update half_day set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', gambar_1='$nama_file_satu', gambar_2='$nama_file_dua', direktori1='$direktori_satu', direktori2='$direktori_dua' where id_half_day='$_POST[id]'") or die (mysql_error());
header("location:half-day-bali-tour.php");
}
else{
move_uploaded_file($lokasi_file_satu,"../../paket-wisata/$nama_file_satu");
move_uploaded_file($lokasi_file_dua,"../../paket-wisata/$nama_file_dua");
move_uploaded_file($lokasi_file_tiga,"../../paket-wisata/$nama_file_tiga");
mysql_query("update half_day set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', gambar_1='$nama_file_satu', gambar_2='$nama_file_dua', gambar_3='$nama_file_tiga', direktori1='$direktori_satu', direktori2='$direktori_dua', direktori3='$direktori_tiga' where id_half_day='$_POST[id]'") or die (mysql_error());
header("location:half-day-bali-tour.php");
}
}
?>