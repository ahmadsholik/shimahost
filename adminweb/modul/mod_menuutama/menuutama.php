<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_menuutama/aksi_menuutama.php";
switch($_GET[act]){
  // Tampil Menu Utama
  default:
    echo "<div class='well'>
		  <div class='navbar navbar-inverse'>
		  <div class='navbar-inner'>
		  <div class='container'>
		  <ul class='nav'>
		  <li><div style='color:white; padding-top:9px; text-align:left;'>
		  <i class='icon-list icon-white'></i> Menu Utama</div></li>
		  </ul>
		  </div>
		  </div>
		  </div><h6>
		  <input type=button value='Tambah Menu Utama'
		  onclick=location.href='?module=menuutama&act=tambahmenuutama' class='btn btn-success pull-right'><br />
          <table class='table table-condensed' width=100%>
          <thead><tr><th>No</th><th>Menu utama</th><th>Link</th><th>Aktif</th><th>Admin Menu</th></tr></thead>"; 
    $tampil=mysql_query("SELECT * FROM mainmenu");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
       echo "<tbody><tr>
	   		 <td width='5%'>$no</td>
             <td width='20%'>$r[nama_menu]</td>
             <td width='40%'>$r[link]</td>
             <td width='10%'>$r[aktif]</td>
			 <td width='10%'>$r[adminmenu]</td>
             <td><a href=?module=menuutama&act=editmenuutama&id=$r[id_main] class='btn btn-primary pull-right'><i class='icon-pencil icon-white'></i></a>
             </td></tr></tbody>";
      $no++;
    }
    echo "</table>";
    echo "<div id=paging>*) Data pada Menu tidak bisa dihapus, tapi bisa di non-aktifkan melalui Edit Menu Utama.<br>
                         **) Untuk link menu Beranda (Home) harus diubah ketika online menjadi http://NamaDomainAnda.com
          </div></h6></div>";
    break;
  
  // Form Tambah Menu Utama
  case "tambahmenuutama":
    echo "<div class='well'>
	<div class='navbar navbar-inverse'>
<div class='navbar-inner'>
<div class='container'>
<ul class='nav'>
<li><div style='color:white; padding-top:9px; text-align:left;'><i class='icon-list icon-white'></i> Tambah Menu Utama</div></li>
</ul>
</div>
</div>
</div>
          <form method=POST action='$aksi?module=menuutama&act=input'>
		  <div class='row-fluid'>
		  <div class='span3'>
		  <label>Nama</label>
		  <input type=text name='nama_menu' class='span12'>
		  <label>Link</label>
		  <input type=text name='link' class='span12'>
	      <label>Aktif</label>
		  <input type=radio name='aktif' value='Y' class='span2' checked> Yes
		  <input type=radio name='aktif' value='N'  class='span2'> No
	      <label>Admin Menu</label>
		  <input type=radio name='adminmenu' value='Y' class='span2'> Yes
		  <input type=radio name='adminmenu' value='N'  class='span2' checked> No
		  <label></label>
		  <input type=submit value=Simpan class='btn btn-primary'> <input type=button value=Batal onclick=self.history.back() class='btn btn-danger'>
		  </div></div></form></div>";
     break;
  
  // Form Edit Menu Utama
  case "editmenuutama":
    $edit=mysql_query("SELECT * FROM mainmenu WHERE id_main='$_GET[id]'");
    $r=mysql_fetch_array($edit);

 echo "<div class='well'>
	<div class='navbar navbar-inverse'>
<div class='navbar-inner'>
<div class='container'>
<ul class='nav'>
<li><div style='color:white; padding-top:9px; text-align:left;'><i class='icon-list icon-white'></i> Edit Kategori</div></li>
</ul>
</div>
</div>
</div>
          <form method=POST action=$aksi?module=menuutama&act=update>
          <input type=hidden name=id value='$r[id_main]' >
		  <div class='row-fluid'>
		  <div class='span12' >
		  <label>Nama</label>
		  <input type=text name='nama_menu' class='span12' value='$r[nama_menu]'>
		  <label>link</label>
		  <input type=text name='link' class='span12' value='$r[link]'>";
	if ($r[aktif]=='Y'){
      echo "<label>Aktif</label>
	  		<input type=radio name='aktif' value='Y' checked> Yes  
            <input type=radio name='aktif' value='N'> No <p></p>";
    }
    else{
      echo "<label>Aktif</label>
	  		<input type=radio name='aktif' value='Y'> Yes
            <input type=radio name='aktif' value='N' checked> No <p></p>";
    }
	
	if ($r[aktif]=='Y'){
      echo "<label>Admin Menu</label>
	  		<input type=radio name='adminmenu' value='Y' checked> Yes  
            <input type=radio name='adminmenu' value='N'> No <p></p>";
    }
    else{
      echo "<label>Admin Menu</label>
	  		<input type=radio name='adminmenu' value='Y'> Yes
            <input type=radio name='adminmenu' value='N' checked> No <p></p>";
    }

		  echo"</div>
		  <input type=submit value=Simpan class='btn btn-primary'> <input type=button value=Batal onclick=self.history.back() class='btn btn-danger'>
		  </div></form></div>";	
	

    break;  
}
}
?>
