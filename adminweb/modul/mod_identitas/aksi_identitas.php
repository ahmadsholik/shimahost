<?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
include "../../../config/koneksi.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

// Update identitas
if ($module=='identitas' AND $act=='update'){
  $lokasi_file = $_FILES['fupload']['tmp_name'];
  $nama_file   = $_FILES['fupload']['name'];

  // Apabila ada gambar yang diupload
 if (!empty($lokasi_file)){
    UploadBanner($nama_file);
    move_uploaded_file($lokasi_file,"foto_banner/$nama_file");
    mysql_query("UPDATE modul SET nama_toko   = '$_POST[nama_toko]',
									  email_pengelola = '$_POST[email_pengelola]',
                                      meta_deskripsi = '$_POST[meta_deskripsi]',
                                      meta_keyword   = '$_POST[meta_keyword]',
                                      favicon        = '$nama_file'    
                                WHERE id_modul   = '$_POST[id]'");
  }
  else{
    mysql_query("UPDATE modul SET nama_toko   = '$_POST[nama_toko]',
									  email_pengelola = '$_POST[email_pengelola]',
                                      meta_deskripsi = '$_POST[meta_deskripsi]',
                                      meta_keyword   = '$_POST[meta_keyword]'
                                WHERE id_modul   = '$_POST[id]'");
  }
  header('location:../../media.php?module='.$module);
}
}
?>
