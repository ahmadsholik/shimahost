-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 05, 2015 at 08:10 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shimahost`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'redaksi@bukulokomedia.com', '08238923848', 'admin', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(10, 'Sponsor', 'http://sahabatfurniture.com', 'banner2.jpg', '2010-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`) VALUES
(1, 'Katalog Lokomedia Desember 2010', 'katalog-12-2010.pdf'),
(2, 'Katalog Lokomedia April 2011', 'katalog-04-2011.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE IF NOT EXISTS `header` (
  `id_header` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_header`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(6, 'kursi makan', 'http://', 'kursi makan.jpg', '2015-07-10'),
(5, 'kursi sofa', 'http://', 'royal bintang tiger 3211.jpg', '2015-07-10'),
(8, '', 'http://', 'ganesa.jpg', '2015-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(1, 'Ariawan', 'ariawan@gmail.com', 'Mohon Informasi', 'Mohon informasi mengenai buku yang diterbitkan oleh Lokomedia.', '2008-02-10'),
(4, 'lukman', 'lukman@hakim', 'Request Code', 'Tolong dunk ..', '2009-02-25'),
(6, 'Adiyaksa', 'adi@gmail.com', 'Nanya', 'ljlfdks flkdjsflk', '2009-11-14'),
(13, 'ahmad', 'mail@maa.com', 'sdfkajshfaksjfha', 'sdgsdgsdgdsag', '2015-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(23, 'Layanan Support', 'layanan-support'),
(22, 'Layanan SEO', 'layanan-seo'),
(21, 'Domain', 'domain'),
(20, 'Hosting', 'hosting');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(3) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `kota`
--


-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE IF NOT EXISTS `kustomer` (
  `id_kustomer` int(5) NOT NULL AUTO_INCREMENT,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `id_kota` int(5) NOT NULL,
  PRIMARY KEY (`id_kustomer`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`id_kustomer`, `password`, `nama_lengkap`, `alamat`, `email`, `telpon`, `id_kota`) VALUES
(1, 'e10adc3949ba59abbe56e057f20f883e', 'Lukmanul Hakim', 'Jl. Prof. Dr. Soepomo No. 178, Tebet, Jakarta Timur 17280', 'algosigma@gmail.com', '081804396000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id_main` int(5) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_main`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`id_main`, `nama_menu`, `link`, `aktif`) VALUES
(2, 'Beranda', 'home', 'Y'),
(3, 'Profil', 'profil-kami.html', 'Y'),
(4, 'Produk', 'semua-produk.html', 'Y'),
(5, 'Order', 'cara-pembelian.html', 'Y'),
(6, 'Testimoni', 'testimoni.html', 'Y'),
(7, 'Finishing', 'finishing.html', 'Y'),
(8, 'Hubungi Kami', 'hubungi-kami.html', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  `nama_toko` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `meta_keyword` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pengelola` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nomor_rekening` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nomor_hp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=68 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`, `nama_toko`, `meta_deskripsi`, `meta_keyword`, `email_pengelola`, `nomor_rekening`, `nomor_hp`) VALUES
(18, 'Produk', '?module=produk', '', '', 'admin', 'Y', 5, '', '', '', '', '', ''),
(42, 'Order', '?module=order', '', '', 'admin', 'Y', 6, '', '', '', '', '', ''),
(10, 'Manajemen Modul', '?module=modul', '', '', 'admin', 'Y', 3, '', '', '', '', '', ''),
(31, 'Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 4, '', '', '', '', '', ''),
(43, 'Profil Toko Online', '?module=profil', '<strong>Shima hosting adalah sebuah penyedia layanan hosting dengan harga terjangkau , pelayanan memuaskan didukung kualitas hardware yang handal&nbsp;</strong>\r\n', 'flambyan.jpg', 'admin', 'Y', 2, 'Shimahost.com | Hosting berkualitas dengan harga pas !', 'Shima hosting adalah sebuah penyedia layanan hosting dengan harga terjangkau , pelayanan memuaskan didukung kualitas hardware yang handal ', 'hosting lokal, hosting murah, hosting terbaik, layanan domain, layanan hosting, pelayanan memuaskan, 24 jam support, handal,hardware berkualitas', 'admin@shimahost.com', '', '082135251697'),
(66, 'Data Finishing', '?module=finishing', 'bzxvcSHc ghhgHAD HHGH HJGHASF GHGHD h\r\n', '', 'user', 'Y', 20, '', '', '', '', '', ''),
(60, 'Bank', '?module=bank', '', '', 'user', 'Y', 15, '', '', '', '', '', ''),
(61, 'Facebook', '?module=fb', '', '', 'user', 'Y', 16, '', '', '', '', '', ''),
(44, 'Hubungi Kami', '?module=hubungi', '', '', 'admin', 'Y', 9, '', '', '', '', '', ''),
(45, 'Cara Pembelian', '?module=carabeli', '<ol><li>Klik pada tombol&nbsp;<span style="font-weight: bold;">Beli</span> pada produk yang ingin Anda pesan.</li><li>Produk yang Anda pesan akan masuk ke dalam <span style="font-weight: bold;">Keranjang Belanja</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom <span style="font-weight: bold;">Jumlah</span>, kemudian klik tombol <span style="font-weight: bold;">Update</span>. Sedangkan untuk menghapus sebuah produk dari Keranjang Belanja, klik tombol Kali yang berada di kolom paling kanan.</li><li>Jika sudah selesai, klik tombol <span style="font-weight: bold;">Selesai Belanja</span>, maka akan tampil form untuk pengisian data kustomer/pembeli.</li><li>Setelah data pembeli selesai diisikan, klik tombol <span style="font-weight: bold;">Proses</span>, maka akan tampil data pembeli beserta produk yang dipesannya (jika diperlukan catat nomor ordersnya). Dan juga ada total pembayaran serta nomor rekening pembayaran.</li><li>Apabila telah melakukan pembayaran, maka produk/barang akan segera kami kirimkan. <br></li></ol>', 'gedung.jpg', 'admin', 'Y', 8, '', '', '', '', '', ''),
(47, 'Banner', '?module=banner', '', '', 'user', 'Y', 10, '', '', '', '', '', ''),
(48, 'Ongkos Kirim', '?module=ongkoskirim', '', '', 'user', 'Y', 7, '', '', '', '', '', ''),
(49, 'Ganti Password', '?module=password', '', '', 'user', 'Y', 1, '', '', '', '', '', ''),
(53, 'Modul YM', '?module=ym', '', '', 'user', 'Y', 12, '', '', '', '', '', ''),
(52, 'Laporan', '?module=laporan', '', '', 'user', 'Y', 11, '', '', '', '', '', ''),
(57, 'Download Katalog', '?module=download', '', '', 'user', 'N', 13, '', '', '', '', '', ''),
(58, 'Menu Utama', '?module=menuutama', '', '', 'user', 'Y', 14, '', '', '', '', '', ''),
(62, 'Slider', '?module=header', '', '', 'user', 'Y', 17, '', '', '', '', '', ''),
(63, 'Testimoni', '?module=testimoni', '', '', 'user', 'Y', 19, '', '', '', '', '', ''),
(64, 'Kategori Parent', '?module=kategoriparent', '', '', 'user', 'N', 19, '', '', '', '', '', ''),
(67, 'Foto Showroom', '?module=showroom', '', '', 'user', 'Y', 21, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_bank`
--

CREATE TABLE IF NOT EXISTS `mod_bank` (
  `id_bank` int(5) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(100) NOT NULL,
  `no_rekening` varchar(100) NOT NULL,
  `pemilik` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mod_bank`
--

INSERT INTO `mod_bank` (`id_bank`, `nama_bank`, `no_rekening`, `pemilik`, `gambar`) VALUES
(9, 'BCA', '021021021021', 'Cyebertrain', 'logo-bca.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mod_fb`
--

CREATE TABLE IF NOT EXISTS `mod_fb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frame` varchar(1000) CHARACTER SET latin7 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mod_fb`
--

INSERT INTO `mod_fb` (`id`, `frame`) VALUES
(5, 'www.facebook/ulinnuhaclalu');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE IF NOT EXISTS `mod_ym` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mod_ym`
--

INSERT INTO `mod_ym` (`id`, `nama`, `username`) VALUES
(1, 'Sales Sahabat Furniture', 'shbtfurniture'),
(3, 'ulinnuha', 'ulinnuhasahabatfurniture');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(5) NOT NULL AUTO_INCREMENT,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kustomer` int(5) NOT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `status_order`, `tgl_order`, `jam_order`, `id_kustomer`) VALUES
(1, 'Baru', '2011-05-28', '11:52:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(1, 23, 1),
(1, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
  `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL,
  PRIMARY KEY (`id_orders_temp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=134 ;

--
-- Dumping data for table `orders_temp`
--


-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `produk_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(26, 16, 'kursi cantik', 'kursi-cantik', 'kursi berbahan asli kayu jati', 1600000, 5, 0.00, '2015-07-10', '344883446_teras-cantik.jpg', 1, 0),
(27, 16, 'kursi sofa royal', 'kursi-sofa-royal', 'kursi buah tangan dari jepara\r\n', 0, 1, 0.00, '2015-07-10', '96royal bintang tiger 3211.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `showroom`
--

CREATE TABLE IF NOT EXISTS `showroom` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `showroom`
--

INSERT INTO `showroom` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(12, 'Gudang Depan', 'http://', 'gudang.jpg', '2015-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.2', '2009-09-11', 1, '1252681630'),
('127.0.0.1', '2009-09-11', 17, '1252734209'),
('127.0.0.3', '2009-09-12', 8, '1252817594'),
('127.0.0.1', '2009-10-24', 8, '1256381921'),
('127.0.0.1', '2009-10-26', 108, '1256620074'),
('127.0.0.1', '2009-10-27', 52, '1256686769'),
('127.0.0.1', '2009-10-28', 124, '1256792223'),
('127.0.0.1', '2009-10-29', 9, '1256828032'),
('127.0.0.1', '2009-10-31', 3, '1257047101'),
('127.0.0.1', '2009-11-01', 85, '1257113554'),
('127.0.0.1', '2009-11-02', 11, '1257207543'),
('127.0.0.1', '2009-11-03', 165, '1257292312'),
('127.0.0.1', '2009-11-04', 59, '1257403499'),
('127.0.0.1', '2009-11-05', 10, '1257433172'),
('127.0.0.1', '2009-11-11', 13, '1258006911'),
('127.0.0.1', '2009-11-12', 10, '1258048069'),
('127.0.0.1', '2009-11-14', 14, '1258222519'),
('127.0.0.1', '2009-11-17', 2, '1258473856'),
('127.0.0.1', '2009-11-19', 16, '1258635469'),
('127.0.0.1', '2009-11-21', 4, '1258863505'),
('127.0.0.1', '2009-11-25', 3, '1259216216'),
('127.0.0.1', '2009-11-26', 1, '1259222467'),
('127.0.0.1', '2009-11-30', 11, '1259651841'),
('127.0.0.1', '2009-12-02', 9, '1259746407'),
('127.0.0.1', '2009-12-03', 17, '1259906128'),
('127.0.0.1', '2009-12-10', 69, '1260423794'),
('127.0.0.1', '2009-12-12', 26, '1260560082'),
('127.0.0.1', '2009-12-11', 5, '1260508621'),
('127.0.0.1', '2009-12-13', 8, '1260716786'),
('127.0.0.1', '2009-12-14', 9, '1260772698'),
('127.0.0.1', '2009-12-15', 9, '1260837158'),
('127.0.0.1', '2009-12-16', 7, '1260905627'),
('127.0.0.1', '2009-12-17', 48, '1261026791'),
('127.0.0.1', '2009-12-18', 11, '1261088534'),
('127.0.0.1', '2009-12-22', 3, '1261477278'),
('127.0.0.1', '2009-12-25', 2, '1261686043'),
('127.0.0.1', '2009-12-26', 29, '1261835507'),
('127.0.0.1', '2009-12-27', 7, '1261920445'),
('127.0.0.1', '2009-12-28', 3, '1261965611'),
('127.0.0.1', '2009-12-29', 21, '1262024011'),
('127.0.0.1', '2009-12-30', 24, '1262146708'),
('127.0.0.1', '2010-01-01', 12, '1262286131'),
('127.0.0.1', '2010-01-03', 38, '1262529325'),
('127.0.0.1', '2010-01-12', 89, '1263264291'),
('127.0.0.1', '2010-01-14', 54, '1263482540'),
('127.0.0.1', '2010-01-15', 57, '1263506901'),
('127.0.0.1', '2010-02-11', 30, '1265831568'),
('127.0.0.1', '2010-02-13', 2, '1266032303'),
('127.0.0.1', '2010-02-14', 3, '1266115347'),
('127.0.0.1', '2010-02-15', 15, '1266195235'),
('127.0.0.1', '2010-02-18', 1, '1266499945'),
('127.0.0.1', '2010-02-22', 5, '1266856332'),
('127.0.0.1', '2010-02-25', 46, '1267103145'),
('127.0.0.1', '2010-05-12', 10, '1273654648'),
('127.0.0.1', '2010-05-16', 195, '1274026185'),
('127.0.0.1', '2010-05-17', 2, '1274029517'),
('127.0.0.1', '2010-05-19', 1, '1274279374'),
('127.0.0.1', '2010-05-27', 16, '1274967085'),
('127.0.0.1', '2010-05-30', 4, '1275192045'),
('127.0.0.1', '2010-05-31', 13, '1275271939'),
('127.0.0.1', '2010-06-05', 1, '1275676869'),
('127.0.0.1', '2010-06-06', 2, '1275842170'),
('127.0.0.1', '2010-06-15', 3, '1276572924'),
('127.0.0.1', '2010-06-22', 206, '1277221605'),
('127.0.0.1', '2010-08-02', 17, '1280754660'),
('127.0.0.1', '2010-08-20', 7, '1282285305'),
('127.0.0.1', '2010-08-30', 21, '1283185430'),
('127.0.0.1', '2010-08-31', 53, '1283207455'),
('127.0.0.1', '2010-09-02', 133, '1283402651'),
('127.0.0.1', '2010-09-05', 35, '1283702206'),
('127.0.0.1', '2010-09-13', 10, '1284370291'),
('127.0.0.1', '2010-09-17', 12, '1284662303'),
('127.0.0.1', '2010-09-22', 2, '1285091212'),
('127.0.0.1', '2010-09-23', 47, '1285254071'),
('127.0.0.1', '2010-09-26', 32, '1285512806'),
('127.0.0.1', '2010-09-27', 51, '1285532379'),
('127.0.0.1', '2010-10-14', 10, '1287074605'),
('127.0.0.1', '2010-10-15', 6, '1287150179'),
('127.0.0.1', '2010-10-16', 2, '1287170167'),
('127.0.0.1', '2010-10-20', 145, '1287636778'),
('127.0.0.1', '2010-10-21', 177, '1287721183'),
('127.0.0.1', '2010-10-22', 63, '1287752692'),
('127.0.0.1', '2011-04-02', 7, '1301680774'),
('127.0.0.1', '2011-04-03', 8, '1301801389'),
('127.0.0.1', '2011-04-05', 16, '1301977471'),
('127.0.0.1', '2011-04-09', 44, '1302288659'),
('127.0.0.1', '2011-04-10', 129, '1302370890'),
('127.0.0.1', '2011-04-11', 34, '1302488765'),
('127.0.0.1', '2011-04-17', 8, '1302998534'),
('127.0.0.1', '2011-04-22', 5, '1303479879'),
('127.0.0.1', '2011-04-23', 36, '1303534207'),
('127.0.0.1', '2011-05-26', 144, '1306423419'),
('127.0.0.1', '2011-05-27', 59, '1306467737'),
('127.0.0.1', '2011-05-28', 57, '1306588828'),
('127.0.0.1', '2011-05-29', 8, '1306649171'),
('127.0.0.1', '2011-05-30', 18, '1306736260'),
('127.0.0.1', '2013-03-02', 9, '1362190500'),
('127.0.0.1', '2013-03-27', 1, '1364372656'),
('127.0.0.1', '2013-07-12', 9, '1373638917'),
('127.0.0.1', '2013-07-14', 4, '1373780488'),
('127.0.0.1', '2015-07-08', 32, '1436369178'),
('127.0.0.1', '2015-07-09', 86, '1436437946'),
('127.0.0.1', '2015-07-10', 1, '1436496189'),
('192.168.0.103', '2015-07-10', 41, '1436501400'),
('192.168.0.101', '2015-07-10', 64, '1436501548'),
('127.0.0.1', '2015-07-11', 107, '1436598706'),
('127.0.0.1', '2015-07-13', 5, '1436759222'),
('127.0.0.1', '2015-09-02', 23, '1441173268');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_sub` int(5) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_main` int(5) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_sub`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `submenu`
--


-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE IF NOT EXISTS `testimoni` (
  `id_testi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_testi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=99 ;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testi`, `nama`, `isi`, `aktif`, `tanggal`) VALUES
(98, 'anita', 'bagus&nbsp;&nbsp;&nbsp; cnjgdjn gfjdgjd\r\n', 'N', '2013-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password1` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktivasi` int(6) NOT NULL DEFAULT '0',
  `cek_aktivasi` int(6) NOT NULL DEFAULT '0',
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_kota` int(2) NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password1`, `password`, `nama_lengkap`, `alamat`, `email`, `aktivasi`, `cek_aktivasi`, `no_telp`, `id_kota`, `level`, `blokir`, `id_session`) VALUES
('', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'ilamsyah', 'tangerang', 'ilamsyah011@gmail.com', 0, 0, '0219298389', 10, 'user', 'N', '');
