<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{

$query=mysql_query("delete from half_day where id_half_day='$_GET[id_half_day]'") or die (mysql_error());
unlink("$_GET[file_half_day]");
unlink("$_GET[file_half_day2]");
unlink("$_GET[file_half_day3]");
if($query)
header("location:half-day-bali-tour.php");
}
?>