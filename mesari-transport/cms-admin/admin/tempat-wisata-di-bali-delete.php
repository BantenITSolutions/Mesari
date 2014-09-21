<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{

$query=mysql_query("delete from wisatabali where id_wisata_bali='$_GET[id_wisata_bali]'") or die (mysql_error());
unlink("$_GET[file_wisata_bali]");
unlink("$_GET[file_wisata_bali2]");
if($query)
header("location:tempat-wisata-di-bali.php");
}
?>