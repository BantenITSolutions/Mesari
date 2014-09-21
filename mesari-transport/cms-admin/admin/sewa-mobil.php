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
              <td height="17" valign="middle" bgcolor="#FFE181" class="side-left-title">:: Modul Harga Sewa Mobil :: </td>
              </tr>
            <tr>
              <td height="235" align="left" valign="top" class="side-left-desc"><br />
                <?
			  $query=mysql_query("select * from car_list order by id_mobil ASC");
			  $no=1;
			  echo"<table border='0' width='99%' cellspacing='1'><tr bgcolor='#FFD96A'><td><b>No</b></td><td><b>Jenis dan Nama Mobil</b></td><td><b>Gambar 1</b></td><td><b>Gambar 2</b></td><td><b>Action</b></td></tr>";
			  while($row=mysql_fetch_array($query)){
			  if(($no % 2)==0){
			  $warna="#FFECB5";
			  } else { 
			  $warna="#EEE1BA";
			  }
			  echo"<tr bgcolor='$warna'><td valign='top' align='center' width='25'>$no</td><td width='180' valign='top'><b>$row[1]</b><br>$row[3]</td><td width='150' valign='top'><img src='../../mobil/$row[2]'></td><td width='150' valign='top'><img src='../../mobil/$row[12]'></td><td valign='top' width='70'><div class='menuactionadmin'><a href='sewa-mobil-insert.php'><b>Insert</b></a></div><div class='menuactionadmin'><a href='sewa-mobil-edit.php?id_mobil=$row[0]'><b>Edit</b></a></div><div class='menuactionadmin'><b><a href='sewa-mobil-delete.php?id_mobil=$row[0]&file_mobil=$row[13]&file_mobil2=$row[14]' onClick=\"return confirm('Anda yakin ingin menghapusnya?')\">Delete</b></div></td></tr>";
			  $no++;
			  }
			  echo"<tr bgcolor='#FFD96A'><td colspan='5'><br><br></td></tr></table><br><br>";
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
