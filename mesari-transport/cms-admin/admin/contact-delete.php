<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{

$query=mysql_query("delete from contact where id_contact='$_GET[id_contact]'") or die (mysql_error());
if($query)
header("location:contact.php");
}
?>