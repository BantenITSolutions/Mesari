<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{

$query=mysql_query("delete from full_day where id_full_day='$_GET[id_full_day]'") or die (mysql_error());
unlink("$_GET[file_full_day]");
unlink("$_GET[file_full_day2]");
unlink("$_GET[file_full_day3]");
if($query)
header("location:full-day-bali-tour.php");
}
?>