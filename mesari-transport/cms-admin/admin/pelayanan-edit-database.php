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
if(empty($lokasi_file)){
mysql_query("update pelayanan set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]' where id_pelayanan='$_POST[id]'") or die (mysql_error());
header("location:pelayanan.php");
} 

else {
move_uploaded_file($lokasi_file,"$direktori");
mysql_query("update pelayanan set judul='$_POST[judul]', deskripsi='$_POST[deskripsi]', direktori='$direktori', gambar='$nama_file' where id_pelayanan='$_POST[id]'") or die (mysql_error());
header("location:pelayanan.php");
}
}
?>