<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{

$query=mysql_query("delete from aturan where id_aturan='$_GET[id_aturan]'") or die (mysql_error());
if($query)
header("location:aturan-sewa-mobil.php");
}
?>