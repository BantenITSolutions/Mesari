<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{
mysql_query("update aturan set deskripsi='$_POST[deskripsi]', jenis_sewa='$_POST[jenis_sewa]' where id_aturan='$_POST[id]'") or die(mysql_error());
header("location:aturan-sewa-mobil.php");
}
?>