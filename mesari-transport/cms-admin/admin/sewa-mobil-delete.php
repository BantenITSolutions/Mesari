<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{

$query=mysql_query("delete from car_list where id_mobil='$_GET[id_mobil]'") or die (mysql_error());
unlink("$_GET[file_mobil]");
unlink("$_GET[file_mobil2]");
if($query)
header("location:sewa-mobil.php");
}
?>