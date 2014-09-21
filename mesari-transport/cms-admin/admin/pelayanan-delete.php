<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{

$query=mysql_query("delete from pelayanan where id_pelayanan='$_GET[id_pelayanan]'") or die (mysql_error());
unlink("$_GET[file_pelayanan]");
if($query)
header("location:pelayanan.php");
}
?>