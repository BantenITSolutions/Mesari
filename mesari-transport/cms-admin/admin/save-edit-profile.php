<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{
$lokasi_file_satu=$_FILES[gambar1][tmp_name];
$nama_file_satu=$_FILES[gambar1][name];

$lokasi_file_dua=$_FILES[gambar2][tmp_name];
$nama_file_dua=$_FILES[gambar2][name];

$lokasi_file_tiga=$_FILES[gambar3][tmp_name];
$nama_file_tiga=$_FILES[gambar3][name];


if(empty($lokasi_file_satu) AND empty($lokasi_file_dua) AND empty($lokasi_file_tiga)){
mysql_query("update profile set deskripsi='$_POST[deskripsi]' where id_profile='$_POST[id]'") or die (mysql_error());
header("location:profile.php");
} 
elseif(empty($lokasi_file_satu) AND empty($lokasi_file_dua)){
move_uploaded_file($lokasi_file_tiga,"../../images/$nama_file_tiga");
mysql_query("update profile set deskripsi='$_POST[deskripsi]', gambar3='$nama_file_tiga' where id_profile='$_POST[id]'") or die (mysql_error());
header("location:profile.php");
}
elseif(empty($lokasi_file_satu) AND empty($lokasi_file_tiga)){
move_uploaded_file($lokasi_file_dua,"../../images/$nama_file_dua");
mysql_query("update profile set deskripsi='$_POST[deskripsi]', gambar2='$nama_file_dua' where id_profile='$_POST[id]'") or die (mysql_error());
header("location:profile.php");
}
elseif(empty($lokasi_file_dua) AND empty($lokasi_file_tiga)){
move_uploaded_file($lokasi_file_satu,"../../images/$nama_file_satu");
mysql_query("update profile set deskripsi='$_POST[deskripsi]', gambar1='$nama_file_satu' where id_profile='$_POST[id]'") or die (mysql_error());
header("location:profile.php");
}
elseif(empty($lokasi_file_satu)){
move_uploaded_file($lokasi_file_dua,"../../images/$nama_file_dua");
move_uploaded_file($lokasi_file_tiga,"../../images/$nama_file_tiga");
mysql_query("update profile set deskripsi='$_POST[deskripsi]', gambar2='$nama_file_dua', gambar3='$nama_file_tiga' where id_profile='$_POST[id]'") or die (mysql_error());
header("location:profile.php");
}
elseif(empty($lokasi_file_dua)){
move_uploaded_file($lokasi_file_satu,"../../images/$nama_file_satu");
move_uploaded_file($lokasi_file_tiga,"../../images/$nama_file_tiga");
mysql_query("update profile set deskripsi='$_POST[deskripsi]', gambar1='$nama_file_satu', gambar3='$nama_file_tiga' where id_profile='$_POST[id]'") or die (mysql_error());
header("location:profile.php");
}
else {
move_uploaded_file($lokasi_file_satu,"../../images/$nama_file_satu");
move_uploaded_file($lokasi_file_dua,"../../images/$nama_file_dua");
mysql_query("update profile set deskripsi='$_POST[deskripsi]', gambar1='$nama_file_satu', gambar2='$nama_file_dua' where id_profile='$_POST[id]'") or die (mysql_error());
header("location:profile.php");
}
}
?>