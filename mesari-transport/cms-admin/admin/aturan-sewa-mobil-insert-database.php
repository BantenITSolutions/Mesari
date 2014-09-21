<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{
$query=mysql_query("insert into aturan (deskripsi, jenis_sewa) values ('$_POST[deskripsi]', '$_POST[jenis_sewa]')") or die (mysql_error());
if($query)
header("location:aturan-sewa-mobil.php");
}
?>