<? 
session_start();
?>
<link href='mesari.css' type='text/css' rel='stylesheet'>
<?
include('koneksi-web/koneksi.php');
echo "<font face=\"Arial, Helvetica, sans-serif;\" size=\"3\">";
if($_POST['code']!=$_SESSION['string']){
echo "<br><div align='center'><b>ERROR!!!!!!<br>You cannot send message without fill the code, please press back button on your browser.</b></div>";
}else{
$query=mysql_query("insert into contact (nama, email, alamat, telepon, pesan, code, status) values ('$_POST[nama]', '$_POST[email]', '$_POST[alamat]', '$_POST[telepon]', '$_POST[pesan]', '$_POST[code]', '0')") or die (mysql_error());
include('thanks.php');
} 
?><title>Mesari Transport Tour | Error Anti Spam</title>