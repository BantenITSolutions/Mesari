<?php
session_start();
include('../../koneksi-web/koneksi.php');
if (empty($_SESSION[usernamesession]) AND empty($_SESSION[statussession]) AND empty($_SESSION[passwordsession])){
header ("location:../index.php");
}
else{
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administrator Area</title>
<link href="../../mesari.css" type="text/css" rel="stylesheet" />
</head>

<body>
<br>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFE181">
  <!--DWLayoutTable-->
  <tr>
    <td height="150" colspan="3" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="150" align="left" valign="top"><img src="../images-admin/admin-header-area.jpg" width="800" height="150" /></td>
        </tr>
		 </table></td>
  </tr>
  <tr>
    <td width="5" height="292" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FEDB7D">
      <!--DWLayoutTable-->
      <tr>
        <td width="5" height="292">&nbsp;</td>
        </tr>
    </table></td>
    <td width="790" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FEF3D3">
      <!--DWLayoutTable-->
      <tr>
        <td width="180" height="292" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="180" height="40" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="../images-admin/bg-status.jpg">
              <!--DWLayoutTable-->
              <tr>
                <td width="180" height="40" align="center" valign="top" class="side-left-desc">Welcome <b><? echo"$_SESSION[usernamesession]"; $tanggal=date("h:i:s A");?></b><br />
                  <? echo"$tanggal"; ?></td>
                  </tr>
              </table></td>
              </tr>
          <tr>
            <td height="252" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FEF3D3">
              <!--DWLayoutTable-->
              <tr>
                <td width="180" height="252" align="center" valign="top"><? include('menu.php'); ?></td>
                </tr>
              </table>            </td>
            </tr>
          
          </table></td>
          <td width="610" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFF4D4">
            <!--DWLayoutTable-->
            <tr>
              <td width="610" height="40" align="center" valign="middle" class="side-left-title">Administrator Area </td>
              </tr>
            <tr>
              <td height="17" valign="middle" bgcolor="#FFE181" class="side-left-title">:: Modul Tempat Wisata di Bali :: </td>
              </tr>
            <tr>
              <td height="235" align="left" valign="top" class="side-left-desc"><br />
                <?
			  $query=mysql_query("select * from contact where id_contact='$_GET[id]'");
			  $no=1;
			  while($row=mysql_fetch_array($query)){
			  echo"<table border='0' width='95%' align='justify'><tr><td width='100' valign='top' align='left'>Nama</td><td width='30' valign='top' align='center'>:</td><td valign='top' align='left'>$row[1]</td></tr><tr><td width='100' valign='top' align='left'>Email</td><td width='30' valign='top' align='center'>:</td><td valign='top' align='left'><b><a href='mailto:$row[2]'>$row[2]</a></b></td></tr><tr><td width='100' valign='top' align='left'>Alamat</td><td width='30' valign='top' valign='top' align='center'>:</td><td valign='top' align='left'>$row[3]</td></tr><tr><td width='100' valign='top' align='left'>Telepon</td><td width='30' valign='top' align='center'>:</td><td valign='top' align='left'>$row[4]</td></tr><tr><td width='100' valign='top' align='left'>Pesan</td><td width='30' valign='top' align='center'>:</td><td valign='top' align='justify'>$row[5]</td></tr><tr><td width='100' valign='top' align='left'>Code Captcha</td><td width='30' valign='top' align='center'>:</td><td valign='top' align='left'>$row[6]</td></tr><tr><td colspan='3' align='center' valign'middle'>[ <a href=javascript:history.go(-1)>Kembali</a> ]</td></tr></table>";
			  }
			  mysql_query("UPDATE contact SET status='1' 
              WHERE id_contact='$_GET[id]'");
			  ?></td>
              </tr>
			  
            
            
            
</table></td>
        </tr>
</table></td>
    <td width="5" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFE181">
      <!--DWLayoutTable-->
      <tr>
        <td width="5" height="292">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
 <tr>
    <td height="30" colspan="3" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFE181">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="30" align="center" valign="middle" class="side-left-desc">Copyright &copy; Mesari Transport Tour. All right reserved@2008. Designed and Maintained by Gede Suma Wijaya </td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
<?
}
?>
