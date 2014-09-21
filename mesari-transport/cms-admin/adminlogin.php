<?php
include "../koneksi-web/koneksi.php";
$variabel_pass=md5($_POST[passwordadmin]);
$variabel_status=md5($_POST[statusloginadmin]);

$login=mysql_query("SELECT * FROM userlogin WHERE username='$_POST[usernameadmin]' AND status='$variabel_status' AND password='$variabel_pass'");
$ketemu=mysql_num_rows($login);
$r=mysql_fetch_array($login);

// Apabila username dan password ditemukan
if ($ketemu > 0){
  session_start();
  session_register("usernamesession");
  session_register("statussession");
  session_register("passwordsession");

  $_SESSION[usernamesession] = $r[username];
  $_SESSION[statussession] = $r[status];
  $_SESSION[passwordsession] = $r[password];
  header('location:admin/index.php');
}
else{
  header('location:index.php');
}
?>