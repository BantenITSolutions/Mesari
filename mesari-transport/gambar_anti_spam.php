<?php 
session_start();
function strrand($length){
$str = "";
while(strlen($str)<$length){
$random=rand(48,122);
if( ($random>47 && $random<58)  ){ 
$str.=chr($random); } }
return $str; }
$text = $_SESSION['string']=strrand(10);
header("Content-type: image/png");
$im = imagecreatefrompng("images\latar.png");
$white = imagecolorallocate($im, 255, 255, 255);
$font = 'CHILLER.TTF';
$fontsize=30;
imagettftext($im,  $fontsize, 0, 15, 45, $white, $font, $text );
imagepng($im);
imagedestroy($im); ?> 