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
              <td height="17" valign="middle" bgcolor="#FFE181" class="side-left-title">:: Modul Pelayanan/Service :: </td>
              </tr>
            <tr>
              <td height="235" valign="top"><form action="pelayanan-insert-database.php" method="post" enctype="multipart/form-data"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="side-left-desc">
                <!--DWLayoutTable-->
                <tr>
                  <td height="20" colspan="5" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                </tr>
                <tr>
                  <td width="51" height="20">&nbsp;</td>
                  <td width="159" align="left" valign="middle" class="side-left-desc">Judul</td>
                  <td width="15" align="center" valign="middle">:</td>
                  <td colspan="2" align="left" valign="middle"><label>
                    <input name="judul" type="text" class="side-left-desc" id="judul" size="50" />
                  </label></td>
                </tr>
                <tr>
                  <td height="20">&nbsp;</td>
                  <td align="left" valign="middle">Deskripsi</td>
                  <td align="center" valign="middle">:</td>
                  <td colspan="2" rowspan="2" align="left" valign="top"><label>
                    <textarea name="deskripsi" cols="40" rows="8" class="side-left-desc" id="deskripsi"></textarea>
                  </label></td>
                </tr>
                <tr>
                  <td height="95"></td>
                  <td>&nbsp;</td>
                  <td></td>
                  </tr>
                
                <tr>
                  <td height="20"></td>
                  <td align="left" valign="middle" class="side-left-desc">Gambar</td>
                  <td align="center" valign="middle" class="side-left-desc">:</td>
                  <td colspan="2" align="left" valign="middle"><label>
                    <input name="gambar" type="file" class="side-left-desc" id="gambar" size="40" />
                  </label></td>
                </tr>
                
                
                <tr>
                  <td height="25"></td>
                  <td></td>
                  <td></td>
                  <td width="56" align="left" valign="middle" class="side-left-desc"><label>
                  <input name="Submit" type="submit" class="side-left-desc" value="Insert" />
                  </label></td>
                <td width="329" align="left" valign="middle" class="side-left-desc"><label>
                  <input name="Submit2" type="reset" class="side-left-desc" value="Hapus" />
                </label></td>
                </tr>
                
                <tr>
                  <td height="36"></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>&nbsp;</td>
                </tr>
                
                
                
                
                
                
                
              </table>
              </form>
              </td>
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
