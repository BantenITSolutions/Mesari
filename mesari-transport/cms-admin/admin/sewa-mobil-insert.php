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
<link href="../../mesari.css" type="text/css" rel="stylesheet" /></head>

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
    <td width="5" height="574" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FEDB7D">
      <!--DWLayoutTable-->
      <tr>
        <td width="5" height="574">&nbsp;</td>
        </tr>
    </table></td>
    <td width="790" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FEF3D3">
      <!--DWLayoutTable-->
      <tr>
        <td width="180" height="574" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
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
            <td height="534" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FEF3D3">
              <!--DWLayoutTable-->
              <tr>
                <td width="180" height="534" align="center" valign="top"><? include('menu.php'); ?></td>
                    </tr>
              
              
              
            </table></td>
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
                <td height="517" valign="top"><form action="sewa-mobil-insert-database.php" method="post" enctype="multipart/form-data">
                  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="side-left-desc">
                    <!--DWLayoutTable-->
                    <tr>
                      <td height="20" colspan="5" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      </tr>
                    <tr>
                      <td width="17" height="20">&nbsp;</td>
                        <td width="193" align="left" valign="middle" class="side-left-desc">Nama Mobil </td>
                        <td width="15" align="center" valign="middle">:</td>
                        <td colspan="2" align="left" valign="middle"><label>
                          <input name="nama_mobil" type="text" class="side-left-desc" id="nama_mobil" size="50" />
                        </label></td>
                      </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                        <td align="left" valign="middle">Spesifikasi</td>
                        <td align="center" valign="middle">:</td>
                        <td colspan="2" rowspan="2" align="left" valign="top"><label>
                          <textarea name="spesifikasi" cols="40" rows="7" class="side-left-desc" id="spesifikasi"></textarea>
                        </label></td>
                      </tr>
                    <tr>
                      <td height="74"></td>
                        <td></td>
                        <td></td>
                      </tr>
                    <tr>
                      <td height="20"></td>
                        <td align="left" valign="middle">Harga Sewa Tanpa Sopir </td>
                        <td align="center" valign="middle">:</td>
                        <td colspan="2" align="left" valign="middle"><label>
                          <input name="harga_sewa_tanpa_sopir" type="text" class="side-left-desc" id="harga_sewa_tanpa_sopir" size="50" />
                        </label></td>
                      </tr>
                    <tr>
                      <td height="20"></td>
                      <td align="center" valign="middle" bgcolor="#FFE181"><strong>Include BBM </strong></td>
                      <td align="center" valign="middle"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      <td colspan="2" align="left" valign="middle"><!--DWLayoutEmptyCell-->&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td align="left" valign="middle">Sewa Dengan Sopir Max 2 Hari </td>
                      <td align="center" valign="middle">:</td>
                      <td colspan="2" align="left" valign="middle"><label>
                        <input name="harga_sewa_dengan_sopir_max_2hari_dgn_bensin" type="text" class="side-left-desc" id="harga_sewa_dengan_sopir_max_2hari_dgn_bensin" size="50" />
                      </label></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td align="left" valign="middle">Sewa Dengan Sopir diatas 2 Hari</td>
                      <td align="center" valign="middle">:</td>
                      <td colspan="2" align="left" valign="middle"><label>
                        <input name="harga_sewa_dengan_sopir_diatas_2hari_dgn_bensin" type="text" class="side-left-desc" id="harga_sewa_dengan_sopir_diatas_2hari_dgn_bensin" size="50" />
                      </label></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td align="left" valign="middle">Biaya Overtime </td>
                      <td align="center" valign="middle">:</td>
                      <td colspan="2" align="left" valign="middle"><label>
                        <input name="biaya_overtime_dgn_bensin" type="text" class="side-left-desc" id="biaya_overtime_dgn_bensin" size="50" />
                      </label></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td align="center" valign="middle" bgcolor="#FFE181"><strong>Exclude BBM</strong></td>
                      <td align="center" valign="middle"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      <td colspan="2" align="left" valign="middle"><!--DWLayoutEmptyCell-->&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td align="left" valign="middle">Sewa Dengan Sopir Max 2 Hari </td>
                      <td align="center" valign="middle">:</td>
                      <td colspan="2" align="left" valign="middle"><label>
                        <input name="harga_sewa_dengan_sopir_max_2hari_tanpa_bensin" type="text" class="side-left-desc" id="harga_sewa_dengan_sopir_max_2hari_tanpa_bensin" size="50" />
                      </label></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td align="left" valign="middle">Sewa Dengan Sopir diatas 2 Hari</td>
                      <td align="center" valign="middle">:</td>
                      <td colspan="2" align="left" valign="middle"><input name="harga_sewa_dengan_sopir_diatas_2hari_tanpa_bensin" type="text" class="side-left-desc" id="harga_sewa_dengan_sopir_diatas_2hari_tanpa_bensin" size="50" /></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td align="left" valign="middle">Biaya Overtime </td>
                      <td align="center" valign="middle">:</td>
                      <td colspan="2" align="left" valign="middle"><input name="biaya_overtime_tanpa_bensin" type="text" class="side-left-desc" id="biaya_overtime_tanpa_bensin" size="50" /></td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td align="left" valign="middle"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      <td align="center" valign="middle"><!--DWLayoutEmptyCell-->&nbsp;</td>
                      <td colspan="2" align="left" valign="middle"><!--DWLayoutEmptyCell-->&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="20"></td>
                      <td align="left" valign="middle">Status</td>
                      <td align="center" valign="middle">:</td>
                      <td colspan="2" align="left" valign="middle"><input name="status" type="text" class="side-left-desc" id="status" size="50" /></td>
                    </tr>
                    <tr>
                      <td height="21"></td>
                      <td align="left" valign="middle" class="side-left-desc">Gambar 1 </td>
                        <td align="center" valign="middle" class="side-left-desc">:</td>
                        <td colspan="2" align="left" valign="middle"><label>
                          <input name="gambar1" type="file" class="side-left-desc" id="gambar1" size="40" />
                        </label></td>
                      </tr>
                    <tr>
                      <td height="21"></td>
                      <td align="left" valign="middle" class="side-left-desc">Gambar 2 </td>
                      <td align="center" valign="middle" class="side-left-desc">:</td>
                      <td colspan="2" align="left" valign="middle"><input name="gambar2" type="file" class="side-left-desc" id="gambar2" size="40" /></td>
                    </tr>
                    <tr>
                      <td height="25"></td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td width="56" align="left" valign="middle" class="side-left-desc"><label>
                          <input name="Submit" type="submit" class="side-left-desc" value="Insert" />
                        </label></td>
                        <td width="329" align="left" valign="middle" class="side-left-desc"><label>
                          <input name="Submit2" type="reset" class="side-left-desc" value="Hapus" />
                        </label></td>
                      </tr>
                    <tr>
                      <td height="96"></td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    </table>
                </form></td>
              </tr>
              
              
              
              
              
              
          </table></td>
        </tr>
      
      
    </table></td>
    <td width="5" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFE181">
      <!--DWLayoutTable-->
      <tr>
        <td width="5" height="574">&nbsp;</td>
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
