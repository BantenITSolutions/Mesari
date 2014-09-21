-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 08. Februari 2011 jam 21:41
-- Versi Server: 5.1.41
-- Versi PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mesari`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan`
--

CREATE TABLE IF NOT EXISTS `aturan` (
  `id_aturan` int(5) NOT NULL AUTO_INCREMENT,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `jenis_sewa` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_aturan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`id_aturan`, `deskripsi`, `jenis_sewa`) VALUES
(1, 'Penyewa harus mempunyai sim A, dan memberikan KTP kepada kami, data tempat tinggal di Bali, no kamar (hotel/penginapan), no hp. Kami tidak akan menggunakan data-data itu untuk hal-hal yang melanggar hukum.', 'sendiri'),
(2, 'Harga sewa mobil dihitung peharinya selama 24 jam. Kelebihan waktu (over time) akan dikenakan biaya sebesar 10% dari harga sewa per hari per jamnya ', 'sendiri'),
(3, 'Penjemputan dan pengantaran di airport tidak di kenakan biaya atau gratis ', 'sendiri'),
(4, 'Penjemputan dan pengantaran hotel area Kuta, Tuban, Jimbaran, Nusadua, Seminyak, Denpasar, dan Petitenget tidak di kenakan biaya atau gratis.', 'sendiri'),
(5, 'Penjemputan / pengantaran di luar area tersebut akan di kenakan biaya pengantaran sebesar Rp. 100.000,- / mobil ', 'sendiri'),
(6, 'Serah terima mobil hanya dapat dilakukan jika pelanggan dapat menyerahkan Kartu Identitas Diri yang masih berlaku. ', 'sendiri'),
(7, 'Pemakaian mobil hanya dapat digunakan di dalam pulau Bali saja. Pemakaian mobil sewaan keluar pulau Bali akan dikenakan sangsi sesuai dengan ketentuan hukum sewa mobil yg berlaku di asosiasi sewa mobil di Bali di bawah naungan hukum Negara republik Indonesia', 'sendiri'),
(8, 'Semua harga yang tercamtum di atas sudah termasuk asuransi all risk. Kerusakan pada mobil yang di sewa (lecet, penyok) hanya dikenakan biaya klaim asuransi minor sebesar 250.000,-', 'sendiri'),
(9, 'Untuk kerusakan dalam kapasitas besar (mobil tidak dapat beroperasi, kaca pecah, dll) akan dikenakan klaim asuransi major sebesar sewa mobil sebulan.', 'sendiri'),
(10, 'Sewa mobil dengan jasa sopir di hitung selama 10 jam, kelebihan waktu akan di kenakan biaya sebesar 10% dari harga sewa kendaraan.', 'sopir'),
(14, 'Harga dapat berubah sewaktu-waktu tanpa pemberitahuan. Silakan mengunjungi web ini kembali untuk mendapatkan harga terakhir.', 'sendiri'),
(12, 'Kerusakan kendaraan yang terjadi karena kelalaian, sepenuhnya menjadi tanggung jawab Jepun Bali Car Rental', 'sopir'),
(15, 'Harga dapat berubah sewaktu-waktu tanpa pemberitahuan. Silakan mengunjungi web ini kembali untuk mendapatkan harga terakhir.', 'sopir'),
(16, 'Jika anda mengirim melalui Bank BCA, BNI atau Bank Mandiri cukup info kepada kami via SMS, email, telephone atau Live Chat, kami akan menge-chek di internet,kemudian kami akan mengirimkan invoice atau bukti pembayaran ke alamat email anda.', 'sendiri'),
(17, 'Jika penyewa menggunakan mobil melebihi batas waktu, maka akan dikenakan biaya overtime 10%/jam. Untuk kelebihan lebih dari 6 Jam, akan dihitung satu hari.', 'sendiri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `car_list`
--

CREATE TABLE IF NOT EXISTS `car_list` (
  `id_mobil` int(5) NOT NULL AUTO_INCREMENT,
  `nama_mobil` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `spesifikasi` text COLLATE latin1_general_ci NOT NULL,
  `harga_sewa_tanpa_sopir` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `harga_sewa_dengan_sopir_max_2hari_dgn_bensin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `harga_sewa_dengan_sopir_diatas_2hari_dgn_bensin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `harga_sewa_dengan_sopir_max_2hari_tanpa_bensin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `harga_sewa_dengan_sopir_diatas_2hari_tanpa_bensin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `biaya_overtime_dgn_bensin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `biaya_overtime_tanpa_bensin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar_2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori1` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_mobil`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `car_list`
--

INSERT INTO `car_list` (`id_mobil`, `nama_mobil`, `gambar`, `spesifikasi`, `harga_sewa_tanpa_sopir`, `harga_sewa_dengan_sopir_max_2hari_dgn_bensin`, `harga_sewa_dengan_sopir_diatas_2hari_dgn_bensin`, `harga_sewa_dengan_sopir_max_2hari_tanpa_bensin`, `harga_sewa_dengan_sopir_diatas_2hari_tanpa_bensin`, `biaya_overtime_dgn_bensin`, `biaya_overtime_tanpa_bensin`, `status`, `gambar_2`, `direktori1`, `direktori2`) VALUES
(1, 'Mobil Toyota Inova', 'inova-01.jpg', '- Kapasitas 7-8 orang<br> 	\r\n\r\n- Full AC & Audio<br> 	- Ruangan yang luas''', 'Rp. 350.000/24jam ', 'Rp. 575,000', 'Rp. 550,000', 'Rp. 425,000', 'Rp. 410,000', 'Rp. 50,000', 'Rp. 40,000', 'spesial_offer', 'inova-02.jpg', '../../mobil/inova-01.jpg', '../../mobil/inova-02.jpg'),
(2, 'Mobil Toyota Avanza', 'avansa-01.jpg', '- Full AC & Audio<br>\r\n\r\n- AC double blower<br>\r\n- Tahun pembuatan 2005-2008''', 'Rp. 240.000/24jam ', 'Rp. 400.000', 'Rp. 385.000', 'Rp. 280.000', 'Rp. 275.000', 'Rp. 35.000', 'Rp. 25.000', 'spesial_offer', 'avansa-02.jpg', '', ''),
(3, 'Mobil Toyota Kijang LGX', 'kijang-LGX-01.jpg', '- Kapasitas 7- 8 orang<br>\r\n\r\n- Tahun pembuatan 03 & 04<br> - Full AC & Audio', 'Rp. 280.000/24jam', 'Rp. 450,000', 'Rp. 430,000', 'Rp. 300,000', 'Rp. 290,000', 'Rp. 40,000', 'Rp. 30,000', '', 'kijang-LGX-02.jpg', '', ''),
(4, 'Mobil Suzuki APV', 'suzuki-apv-01.jpg', '- Kapasitas 7-8 orang<br>\r\n- Full AC & Audio<br>\r\n 	- Ruangan yang luas', 'Rp. 255.000 / 24jam', 'Rp. 400,000', 'Rp. 375,000', 'Rp. 280,000', 'Rp. 275,000', 'Rp. 35,000', 'Rp. 25,000', 'spesial_offer', 'suzuki-apv-02.jpg', '', ''),
(5, 'Mobil Daihatsu Terios ', 'terios-01.jpg', '- Full AC & Audio<br>\r\n- Mobil bagus & nyaman<br>\r\n- AC double blower', 'Rp. 300.000 / 24jam', 'Rp. 450,000', 'Rp. 430,000', 'Rp. 300,000', 'Rp. 290,000', 'Rp. 40,000', 'Rp. 30,000', 'spesial_offer', 'terios-02.jpg', '', ''),
(7, 'Mobil Suzuki Karimun ', 'karimun-01.jpg', '- Kapasitas 3-4 orang<br>\r\n- Tahun pembuatan 04 & 05<br>\r\n- Full AC & Audio', 'Rp. 175.000 / 24jam', 'Rp. 330,000', 'Rp. 300,000', 'Rp. 225,000', 'Rp. 220,000', 'Rp. 30,000', 'Rp. 20,000', '', 'karimun-02.jpg', '', ''),
(8, 'Mobil Daihatsu Taruna ', 'taruna-01.jpg', '- Kapasitas 5-6 orang<br>\r\n- Tahun pembuatan 05-08<br>\r\n- Full AC & Audio', 'Rp. 225.000 / 24jam', 'Rp. 375,000', 'Rp. 350,000', 'Rp. 270,000', 'Rp. 250,000', 'Rp. 35,000', 'Rp. 25,000', '', 'taruna-02.jpg', '', ''),
(9, 'Mobil Isuzu Elf ', 'elf-01.jpg', '- Nyaman untuk 11 Orang Penumpang Dewasa<br>\r\n- Full AC & Audio<br>\r\n- Ruangan Luas', '<i>tidak tersedia</i>', 'Rp.650,000', 'Rp.600,000', '<i>tidak tersedia</i>', '<i>tidak tersedia</i>', 'Rp.60,000', '<i>tidak tersedia</i>', '', 'elf-02.jpg', '', ''),
(10, 'Mobil KIA Pregio ', 'pregio-01.jpg', '- Nyaman untuk 9 Orang Penumpang Dewasa<br>\r\n- Full AC & Audio\r\n- Sopir Ramah\r\n''''', '<i>tidak tersedia</i>', 'Rp.575,000 ', 'Rp.550,000', '<i>tidak tersedia</i>', '<i>tidak tersedia</i>', 'Rp.50,000', '<i>tidak tersedia</i>', '', 'pregio-02.jpg', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id_contact` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telepon` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `code` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id_contact`, `nama`, `email`, `alamat`, `telepon`, `pesan`, `code`, `status`) VALUES
(1, 'Wayan Gede Suma Wijaya', 'go_blind_32@yahoo.com', 'Jalan Dewi Madri Gg.V/5, Renon, Tanjung Bungkak', '081916186418', 'Agnes mau datang ke bali... bisa kasi paket yang lain ga??<br>If we bring our children, what about the fee? is there any discount? ', '5553364289', '1'),
(2, 'Suma Wijaya', 'go_blind_boys@yahoo.com', 'Tanjung Bungkak', '081805638814', 'Menikmati Makan malam di tepi pantai Jimbaran dengan hidangan seafood. Berangkat dari Denpasar. Harga sudah termasuk akomodasi, transpor.Harga tidak termasuk harga makanan dan minuman.<br>\r\nBener gak yaw??????', '7411126018', '1'),
(7, 'dsd', 'kjk@jjd.ss', 'kjk', '3232', 'kjkj', '3810676401', '1'),
(5, 'hghg', 'go_blind_32@yahoo.com', 'RENON, TANJUNG BUNGKAK, DENPASAR TIMUR', '3556', 'hghgh', '8787458946', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `full_day`
--

CREATE TABLE IF NOT EXISTS `full_day` (
  `id_full_day` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `gambar_1` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar_2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar_3` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `id_cari` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori1` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori3` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_full_day`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `full_day`
--

INSERT INTO `full_day` (`id_full_day`, `judul`, `deskripsi`, `gambar_1`, `gambar_2`, `gambar_3`, `id_cari`, `direktori1`, `direktori2`, `direktori3`) VALUES
(1, 'Kintamani - Art Village - Elephant Cave Tours', '<font color="red">Sharing Tour Price IDR 200,000 per person<br>\r\nPrivate Tour Price IDR 250,000 per person<br></font>\r\nPerjalanan dimulai pada 08:00 waktu setempat, menuju ke Batubulan untuk meyaksikn pertunjukan Barong dan Kris Dance. Perjalanan kemudian dilanjutkan mengunjungi sentra kerajinan emas dan perak di Celuk, Lukisan Bali di Batuan, seni ukir Bali di Mas dan dilanjutkan menuju Pura Goa Gajah. Perjalanan berlanjut menuju ke desa Temen untuk menikmati agrowisata, kemudian menuju ke Kintamani sambil menikamati pemandanagn Gunung Batur dan Danaunya, makan siang akan disajikan di lokal restaurant. Perjalana kemududian dilanjutkan menuju Tampak Siring (Pemandian air hangat) dan kemudian menuju desa Tegalalang untuk melihat teras-teras sawah terbaik di Bali. ', 'besakih-01.jpg', 'besakih-02.jpg', 'besakih-03.jpg', 'besakih', '', '', ''),
(2, 'Kintamani - Besakih Temple Tours', '<font color="red">Sharing Tour Price IDR 200,000 per person<br>\r\nPrivate Tour Price IDR 300,000 per person<br></font>\r\nPerjalanan dimulai pada 08:00 waktu setempat, menuju ke Batubulan untuk meyaksikn pertunjukan Barong dan Kris Dance. Perjalanan kemudian dilanjutkan mengunjungi sentra kerajinan emas dan perak di Celuk, Lukisan Bali di Batuan, seni ukir Bali di Mas dan dilanjutkan menuju Pura Goa Gajah. Perjalanan berlanjut menuju ke desa Temen untuk menikmati agrowisata, kemudian menuju ke Kintamani sambil menikamati pemandanagn Gunung Batur dan Danaunya, makan siang akan disajikan di lokal restaurant. Perjalanan kemudian dilanjutkan mengunjungi pura terbas Hindu di Besakih, dilanjutkan menuju ke Kerthagosa (tempat pengadilan jaman Bali Kuno di abad ke 17) ', 'kintamani-lake-01.jpg', 'kintamani-lake-02.jpg', 'kintamani-lake-03.jpg', 'kintamani', '', '', ''),
(3, 'Besakih Temple - And Tenganan Real Native Village Tour', '<font color="red">Sharing Tour Price IDR 200,000 per person<br>\r\nPrivate Tour Price IDR 300,000 per person<br></font>\r\nPerjalanan dimulai pada 08:00 waktu setempat, menuju ke Kerthagosa (tempat pengadilan jaman Bali Kuno di abad 17). Perjalanan dilanjutkan menuju ke Pura terbesar Hindu di Besakih. Dalam perjalanan akan melewati Bukit Jambul(pemandangan teras sawah dengan hamparan samudra hindia), dilanjutkan menuju desa tradisional Bali di Tenganan, Pura goa Lawah serta Kusamba(temapt pengolahan garam tradisional Bali)', 'bedugul-01.jpg', 'bedugul-02.jpg', 'bedugul-03.jpg', 'tenganan', '', '', ''),
(8, 'Singaraja North Coast Bali Tours', '<font color="red">Sharing Tour Price IDR 350,000 per person<br>\r\nPrivate Tour Price IDR 400,000 per person<br></font>\r\nPerjalanan dimulai pada 08:00 waktu setempat, menuju ke Tamanayun (taman raja Badung), dilanjutkan menuju ke desa Pacung dengan pemandangan teras-teras sawahnya, Candikuning(pasar buah segar tradisional), Bedugul(pegunungan dengan pemandangan danaunya yang indah), Pancasari hutan kera. Tours selanjutnya menuju ke air terjun Gigit, pantaiu Lovina di Singaraja, mata air hangat di Banjar, dan desa Munduk Sari unutk menikamati pemandangan Bali dengan dua danaunya yang terkenal yaitu Buyan dan Tamblingan ', 'kintamani-lake-01.jpg', '', '', 'singaraja', '../../paket-wisata/kintamani-lake-01.jpg', '../../paket-wisata/', '../../paket-wisata/'),
(9, 'Jatiluwih - Bedugul - Tanahlot Sunset Tours ', '<font color="red">Sharing Tour Price IDR 300,000 per person<br>\r\nPrivate Tour Price IDR 350,000 per person<br></font>\r\nPerjalanan dimulai pada 08:00 waktu setempat, menuju ke Tamanayun (taman raja Badung), dilanjutkan menuju ke Jatiluwih untuk menyaksikan panorama teras-teras sawah Bali, dilanjutkan ke Candikuning(pasar buah segar tradisional), Bedugul(pegunungan dengan pemandangan danaunya yang indah), dilanjutkan menuju ke Alas Kedaton dan ke Tanahlot untuk mnyaksikan pemandangan matahari tenggelam.', 'besakih-02.jpg', '', '', 'jatiluwih', '../../paket-wisata/besakih-02.jpg', '../../paket-wisata/', '../../paket-wisata/'),
(10, 'Morning Lovina Beach Dolphin Tours ', '<font color="red">Tour Price IDR 450,000 per person<br></font>\r\nTours dimulai pada jam 03:00 pagi waktu setempat langsung mmenuju ke pantai Lovina, perjalanan dilanjutkan dengan mengendarai perahu tradisional "jukung" untuk melihat atraksi lumba-lumba liar. Dalam perjalanan kembali kita akan mengunjungi mata air hangat Banjar dan desa Munduk Sari unutk menikamati pemandangan Bali dengan dua danaunya yang terkenal yaitu Buyan dan Tamblingan, Tours selanjutnya menuju ke air terjun Gigit.Candikuning(pasar buah segar tradisional), Bedugul(pegunungan dengan pemandangan danaunya yang indah).', 'bedugul-03.jpg', '', '', 'lovina', '../../paket-wisata/bedugul-03.jpg', '../../paket-wisata/', '../../paket-wisata/'),
(11, 'Batur Maountain Sunrise Trekking ', '<font color="red">Tour Price IDR 400,000 per person<br></font>\r\nTour dimulai pada jam 02:00 pagi waktu setempat, langsung menuju ke gunung Batur dan mendaki ke puncaknya sepanjang kira-kira 1km dan memerlukan waktu sekitar 5 jam untuk mendaki dan turun kembali. Di puncak gunung kita akan melihat pemandangan spektakuler matahari terbit, dan apabila pada hari cerah kita akan bisa melihat gunung Abang, Agung dan Rinjani(Lombok). Pada perjalanan kembali kita akan melewati pemandangan teras-teras sawah terbaik di Bali di desa Tegalalang, dan juga kita akan mengunjungi beberapa objek wisata. ', 'kintamani-lake-03.jpg', '', '', 'batur', '../../paket-wisata/kintamani-lake-03.jpg', '../../paket-wisata/', '../../paket-wisata/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `half_day`
--

CREATE TABLE IF NOT EXISTS `half_day` (
  `id_half_day` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `gambar_1` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar_2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar_3` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori1` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori3` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_half_day`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `half_day`
--

INSERT INTO `half_day` (`id_half_day`, `judul`, `deskripsi`, `gambar_1`, `gambar_2`, `gambar_3`, `direktori1`, `direktori2`, `direktori3`) VALUES
(1, 'Ubud Arts & Crafts Tour', 'This tour gives an introduction to the countryside, life, arts and crafts of Bali. Stopping at three villages renowned for their craftsmanship in silver, woodcarvings and paintings.<br><br>\r\nIn CELUK, you will see skilled artisans creating jewelry and ornaments out of fine filigree strand. In MAS, you can watch fine carvers work on ebony, jackfruit and coconut wood. Famous Balinese style paintings are to be found in their thousands at UBUD, where artists have gathered for over 50 years.  Famous Balinese style paintings are to be found in their thousands at UBUD, where artists have gathered for over 50 years. In CELUK, you will see skilled artisans creating jewelry and ornaments out of fine filigree strand.', 'ubud-01.jpg', 'ubud-02.jpg', '', '../../paket-wisata/ubud-01.jpg', '../../paket-wisata/ubud-02.jpg', ''),
(2, 'SUNSET ON ULUWATU CLIFFS', 'Visit the southern cliff’s of Bali. Rocky precipes drop almost 100 meters to the ocean. The famous small Temple of Pura Luhur Uluwatu balances picturesquely on the cliff’s edge. Dating from the 10th century, it is one of the six temples of the world revered by all Balinese.<br><br>Continue on for a delicious sunset-break on the cliff’s of Uluwatu. A relaxed lagoon pool setting offering breathtaking vistas of Bali’s heartland. Take a ride down the cliff in the glass elevator. Your choice of pizza, brownies, ice cream, frozen cappuccino & tea or coffee to enjoy as you relax in this beautiful area watching the memorable sunset.<br><br>* Sunset is subject to weather conditions.', 'uluwatu-01.jpg', 'uluwatu-02.jpg', '', '../../paket-wisata/uluwatu-01.jpg', '../../paket-wisata/uluwatu-02.jpg', ''),
(3, 'DENPASAR CITY TOUR', 'Admire what our capital city has to offer. Located in the center is the attractive Puputan Square. Explore the Bali Museum, Bajra Sandhi. With its art collection that ranges from prehistoric finds to early 20th century art. On display also are scale models depicting are ritualistic Balinese tooth filling, marriage and cremation ceremonies.\r\n<br><br>\r\nVisit the colorful “pasar” (Indonesian for market). Where the local people sell their products with much haggling over prices. Take a ride in a traditional “Dokar” horse and cart. A stop at one of the new ‘supermarket’ is included – these are in fact the equivalent of a department store.\r\n<br><br>\r\nYour last stop is the Bali Arts Center, a traditional Balinese building which houses a permanent exhibition of modern paintings and woodcarvings.', 'denpasar-01.jpg', 'denpasar-02.jpg', '', '../../paket-wisata/denpasar-01.jpg', '../../paket-wisata/denpasar-02.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelayanan`
--

CREATE TABLE IF NOT EXISTS `pelayanan` (
  `id_pelayanan` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori` varchar(200) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_pelayanan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `pelayanan`
--

INSERT INTO `pelayanan` (`id_pelayanan`, `judul`, `deskripsi`, `gambar`, `direktori`) VALUES
(1, 'Mesari Transport Tour adalah pelayanan satu pintu untuk :', '      <ul>\r\n        <li>24-Hour Airport Service </li>\r\n        <li>Corporate Travel </li>\r\n        <li>Trade Shows and Conventions </li>\r\n        <li>Corporate Meetings and Events </li>\r\n        <li>Wisata Bali dan  Shopping tours</li>\r\n        <li>Sewa mobil  untuk di kemudikan sendiri (tanpa supir) </li>\r\n      </ul>', 'DAMN.jpg', '../../images/DAMN.jpg'),
(4, 'Corporate Travel', 'Jepun Bali Car Rental telah melayani transportasi personal ataupun coorperasi ke berbagai tujuan di Bali dan sekitarnya. Team kami akan merencanakan rute perjalanan anda agar lebih efisien dan tepat waktu dengan sistem Transportation Management Services, On-Site Coordination and Meet-and-Greet pick ups. Kemanapun tujuan anda, pilihan kendaraan kami akan memenuhi semua keperluan sarana transportasi darat anda.<br>\r\nUntuk mengetahui lebih jauh tentang perjalanan wisata di Bali silahkan click di sini untuk mengunjungi situs induk perusahaan kami " Mesari Transport Tour ".<br><br>', '', ''),
(2, 'Airport Point to point Services', 'Salah satu dari supir kami akan menjemput anda dengan tepat waktu di Airport dan kami akan mengantarkan anda ke tujuan anda dengan nyaman, aman dan tentu saja stress-free.<br>\r\nAtau anda pun juga dapat langsung mengendarai sendiri mobil yang anda sewa menuju ke tujuan anda.<br><br>', '', ''),
(3, 'Hotel Service', 'Mengapa harus report-repot untuk memanggil taxi dengan barang-barang bawaan anda ? Hanya dengan menghubungi Jepun Bali Car Rental, kami akan menjemput anda dengan kendaraan kami yang nyaman, dan mengantarkan anda ke tujuan anda.<br>\r\nDan apabila anda memutuskan untuk menyetir sendiri mobil yang anda sewa, kami akan mengantarkan mobil kami ke tempat anda menginap dan akan mengambil kembali mobil kami apabila masa sewa telah berakhir\r\n(free delevery & collect). <br><br>', '', ''),
(5, 'Personal Travel Services', 'Para client kami pun akan setuju bahwa hampir ke manapun tujuannya akan cocok dengan gaya transportasi eksklusif kami. Apakah tujuan untuk suatu makan malam formal, kunjungan teater, sosial atau suatu jalan-jalan malam di beberapa Object di Bali, dengan Jepun Bali Car Rental anda akan bepergian dalam kenyamanan selagi menikmati posona alam Bali.<br><br>', '', ''),
(6, 'Shopping City Tour', 'Biarlah kami yang akan mengantarkan anda selama wisata belanja anda ke beberapa object shoping centre di Bali.<br><br>', 'mesum.jpg', '../../images/mesum.jpg'),
(16, 'Kondisi kendaraan prima.', 'Untuk memberikan keamanan dan kenyamanan bagi pelanggan, seluruh armada harus melewati standart kendaraan prima yang ketat atau kendaraan tidak akan digunakan. Mesari Transport Tour juga akan melakukan perawatan berkala dimanapun pelanggan berada tanpa dikenakan biaya perawatan, perbaikan dan suku cadang.<br><br>', '', '../../images/'),
(18, 'Kendaraan beragam dengan harga yang wajar.', 'Mesari Tranport Tour menyediakan berbagai jenis kendaraan seperti Pick Up, Box, Jeep, Van, Sedan, dan Limousine dengan berbagai merk seperti TOYOTA, DAIHATSU, ISUZU, SUZUKI, OPEL, KIA, HONDA, MERCEDES, dan lain-lain dapat menjadi pilihan sesuai dengan kebutuhan anda dengan harga yang wajar.<br><br>', '', '../../images/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id_profile` int(3) NOT NULL AUTO_INCREMENT,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `gambar1` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar3` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_profile`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id_profile`, `deskripsi`, `gambar1`, `gambar2`, `gambar3`) VALUES
(1, 'Mesari Transport Tour adalah penyedia jasa sewa mobil dan agen perjalanan wisata terbaik di Bali. Spesialisasi kami adalah untuk menyediakan pelayanan transportasi sewa mobil dengan sistem point-to-point Airport, Hotel, dan personal atau group transportasi, baik dalam rangka perjalanan wisata ataupun untuk tujuan Bisinis di Bali. Supir-supir berkualitas kami dari Mesari Transport Tour dengan senang hati akan mengantarkan anda ke tujuan untuk berbagai kerperluan.<br><br>\r\nMesari Tranport Tour dengan cepat membangun reputasinya dalam bidang usaha transportasi khususnya dalam bidang sewa mobil di Bali. Anda dapat menghubungi kami melalui telephone ataupun e-mail untuk mengalami komitmen kami untuk selalu memberikan pelayanan yang terbaik, dan anda pun akan mengerti mengapa client-client kami mempercayakan pilihannya kepada kami dalam hal jasa transportasi sewa mobil di Bali. Mesari Tranport Tour sangat mengerti bahwa waktu dari client kami adalah hal yang sangat penting. Sebagai penyedia sarana transportasi sewa mobil profesional di Bali, team kami akan memastikan anda akan sampai ke tujuan dengan nyaman, aman dan tepat waktu.<br><br>\r\nUntuk kenyamanan dan kepuasan anda, Mesari Tranport Tour menyediakan layanan 24 jam free antar-jemput di Bandara Ngurah Rai Bali dan  hotel di area Kuta, Legian, Seminyak, Sanur, jimbaran dan Nusa Dua. Kami juga menyediakan layanan hotline 24 jam via telephone atau email sehingga anda mudah menghubungi kami kapanpun dan dimanapun anda berada.', 'profile.jpg', 'bedugul-02.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `userlogin`
--

INSERT INTO `userlogin` (`id`, `username`, `password`, `status`, `foto`, `nama`, `alamat`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '21232f297a57a5a743894a0e4a801fc3', 'admin.jpg', 'Suma Wijaya', 'Tanjung Bungkak, Renon, Denpasar Timur', 'go_blind_boys@yahoo.com'),
(3, 'made kondra', '106a341506e3503d5d419843cdb22a9c', '21232f297a57a5a743894a0e4a801fc3', 'kondra.jpg', 'Made Kondra S.H', 'Br. Sebudi, Tanjung Bungkak', 'made_kondra@yahoo.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisatabali`
--

CREATE TABLE IF NOT EXISTS `wisatabali` (
  `id_wisata_bali` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `gambar_1` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar_2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori1` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direktori2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_wisata_bali`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `wisatabali`
--

INSERT INTO `wisatabali` (`id_wisata_bali`, `judul`, `deskripsi`, `gambar_1`, `gambar_2`, `direktori1`, `direktori2`) VALUES
(1, 'Kintamani', 'Kintamani, yang terletak di kabupaten Bangli, merupakan salah satu tempat wisata favorit pilihan wisatawan baik domestik maupun luar negeri.<br><br>Umumnya di hampir semua travel agent atau tour operator di Bali, Kintamani masuk dalam itinerary (rute perjalanan wisata) setelah mengunjungi Batu Bulan (Tari Barong), kawasan wisata Ubud atau Sukawati sebagai pusat perbelanjaan.<br><br>Kintamani menawarkan suasana perbukitan yang segar dengan suhu udara sekitar 18 derajat celcius, mirip seperti udara di Bedugul. Daya tarik utama dari kawasan Kintamani adalah pemandangan Gunung dan Danau Batur. Gunung Batur merupakan gunung yang masih berstatus aktif dan tertinggi kedua setelah gunung Agung di Besakih. Suasana terbaik adalah ketika menikmati hidangan santap siang sambil menikmati keindahan danau dan gunung ini yang menyemburkan asap bersahabat.<br><br>Tertarik untuk lebih mengenal Kintamani? Sempatkan juga diri anda untuk mengunjungi desa Trunyan yang terletak di dekat danau. Tapi anda mesti menyebrang dengan perahu untuk sampai di sana dengan perjalanan kurang lebih 20 menit. Yang menarik dan unik yaitu cara pemakaman penduduk lokal yang tentunya berbeda dari kelaziman di Bali. Mayat disandarkan di pohon tanpa dikuburkan. Tapi yang unik mayat tidak mengeluarkan bau karena ternetralkan oleh bau harum kayu yang dinamakan Menyan.<br><br>Unik bukan? Kalau tertarik, kenapa tidak memasukkan alternative tempat wisata Kintamani dalam liburan anda? Selamat berlibur di Bali.<br><br>', 'kintamani-01.jpg', '', '', ''),
(2, 'Bedugul', 'Kawasan wisata Bedugul, yang terletak di kabupaten Tabanan, menawarkan suasana perbukitan yang menyejukkan dan keindahan danau Tamablingan.<br><br>Pernah ke Kintamani? Tempat ini juga menawarkan suasana perbukitan dengan suhu sekitar 18 derajat celcius plus danau yang begitu indah.<br><br>Untuk menikmati keindahan danau di sini, cukup dengan menyewa speed boat anda dapat berkeliling danau. Dekat dengan danau ini juga anda dapat menikmati hidangan santap siang di restoran lokal dengan menu masakan Indonesia maupun juga internasional.<br><br>Lelah bermain di danau? Sejukkan diri anda lagi dengan mengunjungi Kebun Raya Eka Karya Bedugul sambil membeli oleh-oleh berupa strawberry, yang merupakan salah satu sumber pendapatan penduduk setempat.<br><br>Kebun Raya ini merupakan salah satu hutan lindung yang berfungsi sebagai paru-paru udara di Bali, sehingga untuk menutup biaya operasional dan perawatan, kawasan ini pun dikomersilkan.', 'bedugul-01.jpg', '', '', ''),
(3, 'Nusa Dua - Tanjung Benoa', 'Nusa Dua dan Tanjung Benoa, terletak di ujung selatan pulau Bali namun memiliki daya tarik yang berbeda.<br><br>Nusa Dua dengan BTDC (Bali Tourism Development Center) dikenal sebagai pusat hotel berbintang di Bali. Hotel seperti Westin, Ayodya resort (dulunya Bali Hilton International), Grand Hyatt, Nusa Dua Beach dan Nikko Hotel ada di sini.<br><br>Sementara itu, Tanjung benoa dikenal sebagai pusat wisata air mulai dari parasailing, banana boat, Jet Ski, Rolling Donut, Flying Fish, Snorkeling, Scuba Diving, Glass Bottom Boat + Turtle island dan olahraga air lainnya dapat dinikmati di sini. Pantai di sini tidak berombak dan tenang sehingga sangat aman untuk liburan keluarga bersama putra-putri anda.<br><br>Permainan yang bisa dinikmati diantaranya :<br><br>* PARASAILING yaitu permainan dimana anda akan memakai payung parasut dan ditarik oleh speed boat mengeliling pantai Tanjung Benoa. Jadi persis seperti terjun payung beneran. Waktu permainan ini satu putaran kira2 4 menit di udara. Ketinggian tali yg menghubungkan antara parasut dengan speed boat kurang lebih 80 meter. Jadi lumayan tinggi terbangnya.<br><br>* JETSKI, yaitu permainan menggunakan kendaraan di pantai seperti sepeda motor. Jetski disini tidak bisa anda kendarai sendiri, harus didampingi oleh instruktur, mengingat di pantai TB banyak terdapat perahu2 dan aktivitas watersport lainnya, sehingga tabrakan bisa dihindari. Jangan khawatir, si instruktur ini hanya akan mengendarai dari pinggir pantai menuju ke tengah laut, nah sampai disana giliran anda yg nyetir, si instruktur boncengan. Waktu permainan ini adalah 15 menit. Kalau anda mau exciting mengendarainya, cobalah terjang ombak yg ada..maka anda akan merasakan sensasi nikmatnya berkendara jetski ini.<br><br>* BANANA BOAT, menggunakan perahu karet tunggal, anda akan ditarik oleh speed boat berkeliling pantai dalam waktu 15 menit. Kapasitas muatan banana boat ini adalah max 4 orang plus 1 orang instruktur sbg pendamping. Anda bisa minta diceburin ke air selama boat berjalan, atau kalau tidak mau basah..minta yg normal2 saja. Kurang seru sih kalau main banana boat tanpa nyebur.<br><br>* FLYING FISH, ini permainan paling anyar di Bali. 3 buah banana boat dijadikan satu dengan tambahan rubber boat melintang di depannya dan ada semacam sayap disamping kanan kiri. Flying Fish dimainkan max oleh 3 orang, yaitu 2 orang penumpang disisi kanan kiri dan 1 orang instruktur ditengah2. Posisi anda bisa beridir seperti mengendarai sepeda motor atau tidur terlentang. Flying Fish ini akan ditarik oleh speed boat berkecapatan tinggi dgn jalur melawan arah angin. Dengan demikian, flying fish akan terbang diatas air kira2 2 meter atau lebih bergantung pada kecepatan angin. Persis seperti layangan. Bagi yg suka tantangan, jangan melewatkan utk mencoba permainan ini.<br><br>* SNORKELING, yaitu berenang sambil melihat pemandangan bawah laut. Syarat utamanya anda harus bisa berenang. Dengan menggunakan masker dan fin, anda akan melihat ikan2 hias serta terumbu karang yg ada sambil berenang.<br><br>* SCUBA DIVING, yaitu menyelam. Daripada snorkeling, lebih bagus diving sekalian. Anda akan diberikan perlengkapan diving komplit, mulai dari pakaian, tangki oksigen dll. Diving tidak harus bisa renang, lebih baik kalo anda tdk bisa renang, karena lebih gampang. Satu wisatawan akan ditemani oleh satu instruktur di bawah air, jadi tidak perlu khawatir. Sebelumnya, anda akan di-brief dulu ttg cara2 menyelam yg benar. Kedalaman bagi pemula berkisar antar 3 meter - 7 meter didalam air selama 40 menit. Sambil membawa roti utk makanan ikan, anda akan melihat indahnya pemandangan bawah laut yg dipenuhi oleh terumbu karang yg cantik dan ikan hias warni-warni.<br><br>* GLASS BOTTOM BOAT & PULAU PENYU, adalah wisata yg paling cocok jika anda mengajak anak anda yg masih kecil. Dengan menaiki perahu yg dibawahnya ada kaca bening, anda akan diajak berlayar melihat akuarium bawah laut yg terdapat di pantai Tanjung Benoa. Sambil melemparkan roti dari perahu, ikan2 akan naik dan mengejar makanan tsb. Jumlahnya ratusan ekor dan berwarna warni. Demikian juga dgn pemandangan karang laut yg elok. Setelah puas melihat hal tsb, perahu akan meluncur menuju Pulau Penyu utk melihat lokasi penangkaran penyu, binatang yg cukup langka keberadaannya. Disini anda akan melihat telur penyu yg dikeram, kemudian penyu yg masih kecil2, penyu remaja sampai dengan penyu dewasa yg sudah siap menjadi induk. Jenis penyu tidak hanya satu saja, tapi ada beberapa jenis. Disamping itu, dilokasi ini juga terdapat binatang lain spt burung, kelelawar, ular, dll yg sangat jinak, sehingga bisa anda pegang utk di foto. Permainan ini berlangsung sekitar 1 jam.<br><br>Tertarik? Kenapa tidak mengajak keluarga anda menikmati olahraga air favorit anda di Tanjung Benoa. ', 'nusa-dua-01.jpg', '', '', ''),
(4, 'Pasar Seni Sukawati', 'Mau tau tempat belanja oleh-oleh selama ini? Mungkin anda juga sudah pernah ke sana. Apalagi kalau bukan Pasar Seni Sukawati.<br><br>Dengan menempuh perjalanan kurang lebih 1 jam dari Kuta, anda akan sampai di pasar seni ini yang menawarkan berbagai barang seni dengan harga jauh lebih murah dibandingkan tempat lain. Mungkin bisa dibilang sebagai "malioboro"nya Bali.<br><br>Barang kerajinan yang beraroma Bali banyak dijual di sini. Mulai baju kaos bermotif Bali, sprei, bingkai photo, dompet dan barang kebutuhan sehari-hari lainnya banyak dijual di sini. Menariknya, bagi yang hobby menawar, keahlian anda bisa diterapkan.', 'sukawati-01.jpg', '', '', ''),
(5, 'Pantai Dreamland di Uluwatu', 'Mau tau pantai terindah di Bali selain pantai Kuta? Jawabannya tentu saja pantai Dreamland di kawasan Pecatu (uluwatu).<br><br>Pantai ini begitu indah dan tidak sepadat pantai Kuta pengunjungnya. Tentu dengan situasi ini anda akan lebih nyaman dan bisa menikmati suasana pantai yang terkenal sebagai tempat surfing ini.<br><br>Dengan perjalanan kurang lebih 30 menit dari Kuta menuju arah Jimbaran kemudian Pecatu, anda akan sampai di sini.<br><br>Kawasan pantai dreamland saat ini tengah dikembangkan sebagai kawasan wisata Bali Pecatu Resorts lengkap dengan lapangan golf 18 hole, international schools, rumah sakit internasional, shopping mall dan sarana wisata lainnya.<br><br>Tentu tidak lama lagi kawasan ini akan menjadi kawasan wisata yang exclusive dan dimanage dengan lebih baik. ', 'uluwatu-01.jpg', '', '', ''),
(6, 'Ubud', 'Ubud, yang terletak di kabupaten Gianyar, menawarkan wisata seni dan budaya untuk pengunjungnya.<br><br>Semenjak wisata di Bali booming, kawasan Ubud pun berkembangan menjadi sentra untuk hasil kerajinan seni di Bali mulai dari ukiran kayu, kerajinan emas dan perak, lukisan dan seni lainnya. Kehidupan budaya lokal Bali pun masih dijaga kuat di sini.<br><br>Tidak heran, di kawasan Ubud banyak dijadikan sebagai tempat belajar seni bagi utamanya wisatawan asing. Mereka tinggal di sini dan sehari-harinya diisi dengan belajar interaksi dengan penduduk lokal.<br><br>Desa Mas, di wilayah Ubud, dikenal sebagai pusat penghasil ukiran kayu yang tiada duanya. Hampir di sepanjang jalan dan rumah anda akan menjumpai ukiran seni khas Bali dalam bentuk galeri.<br><br>Lain halnya dengan desa Celuk yang dikenal sebagai pengrajin emas dan perak, juga menjadi tempat favorit untuk mendapatkan cinderamata.<br><br>Dalam rute perjalanan atau tour, dari Ubud perjalanan anda bisa dilanjutkan untuk mengunjungi Kintamani.<br><br>Untuk kebutuhan akomodasi, Ubud menawarkan banyak pilihan yang menawarkan "private escape" suasana jauh dari keramaian dengan pemandangan perbukitan yang asri. Diantaranya Pitamaha resorts, Maya Ubud, Four Seasons Sayan Resort dan hotel berkelas internasional lainnya adalah sebagian kecil contoh.', 'ubud-01.jpg', '', '', ''),
(7, 'Uluwatu', 'Uluwatu, yang terletak di ujung selatan pulau Bali dan mengarah ke samudra Hindia, merupakan tempat wisata yang menawan.<br><br>Apa yang menarik untuk dilihat di sini adalah pura yang berdiri kokoh di atas batu karang yang menjorok ke arah laut dengan ketinggian sekitar 50 meter. Di sore harinya sambil menikmati indahnya sunset, anda dapat menyaksikan pementasan tari bali yang terkenal hingga ke manca negara, tari Kecak.<br><br>Tidak hanya itu, bagi anda yang senang belajar sejarah, pura yang satu ini sarat akan nilai sejarahnya. Sejarahnya akan diuraikan sebagai berikut :<br><br>Dalam beberapa sumber disebutkan, sekitar tahun 1489 Masehi datanglah ke Pulau Bali seorang purohita, sastrawan dan rohaniwan bernama Danghyang Dwijendra. Danghyang Dwijendra adalah seorang pendeta Hindu, kelahiran Kediri, Jawa Timur.<br><br>Danghyang Dwijendra pada waktu walaka bernama Danghyang Nirartha. Beliau menikahi seorang putri di Daha, Jawa Timur. Di tempat itu pula beliau berguru dan di-diksa oleh mertuanya. Danghyang Nirartha dianugerahi bhiseka kawikon dengan nama Danghyang Dwijendra.<br><br>Setelah di-diksa, Danghyang Dwijendra diberi tugas melaksanakan dharmayatra sebagai salah satu syarat kawikon. Dharmayatra ini harus dilaksanakan di Pulau Bali, dengan tambahan tugas yang sangat berat dari mertuanya yaitu menata kehidupan adat dan agama khususnya di Pulau Bali. Bila dianggap perlu dharmayatra itu dapat diteruskan ke Pulau Sasak dan Sumbawa.<br><br>Danghyang Dwijendra datang ke Pulau Bali, pertama kali menginjakkan kakinya di pinggiran pantai barat daya daerah Jembrana untuk sejenak beristirahat sebelum melanjutkan perjalanan dharmayatra. Di tempat inilah Danghyang Dwijendra meninggalkan pemutik (ada juga menyebut pengutik) dengan tangkai (pati) kayu ancak. Pati kayu ancak itu ternyata hidup dan tumbuh subur menjadi pohon ancak. Sampai sekarang daun kayu ancak dipergunakan sebagai kelengkapan banten di Bali. Sebagai peringatan dan penghormatan terhadap beliau, dibangunlah sebuah pura yang diberi nama Purancak.<br><br>Setelah mengadakan dharmayatra ke Pulau Sasak dan Sumbawa, Danghyang Dwijendra menuju barat daya ujung selatan Pulau Bali, yaitu pada daerah gersang, penuh batu yang disebut daerah bebukitan.<br><br>Setelah beberapa saat tinggal di sana, beliau merasa mendapat panggilan dari Hyang Pencipta untuk segera kembali amoring acintia parama moksha. Di tempat inilah Ida Pedanda Sakti Wawu Rauh teringat (icang eling) dengan samaya (janji) dirinya untuk kembali ke asal-Nya. Itulah sebabnya tempat kejadian ini disebut Cangeling dan lambat laun menjadi Cengiling sampai sekarang.<br><br>Oleh karena itulah, Ida Pedanda Sakti Wawu Rauh ngulati (mencari) tempat yang dianggap aman dan tepat untuk melakukan parama moksha. Oleh karena dianggap tidak memenuhi syarat, beliau berpindah lagi ke lokasi lain. Di tempat ini, kemudian dibangun sebuah pura yang diberi nama Pura Kulat. Nama itu berasal dari kata ngulati. Pura itu berlokasi di Desa Pecatu.<br><br>Sambil berjalan untuk mendapatkan lokasi baru yang dianggap memenuhi syarat untuk parama moksha, Ida Pedanda Sakti Wawu Rauh sangat sedih dan menangis dalam batinnya. Mengapa? Oleh karena beliau merasa belum rela untuk meninggalkan dunia sekala ini karena swadharmanya belum dirasakan tuntas, yaitu menata kehidupan agama Hindu di daerah Sasak dan Sumbawa. Di tempat beliau mengangis ini, lalu didirikan sebuah pura yang diberi nama Pura Ngis (asal dari kata tangis). Pura Ngis ini berlokasi di Banjar Tengah Desa Adat Pecatu.<br><br>Ida Pedanda Sakti Wawu Rauh belum juga menemukan tempat yang dianggap tepat untuk parama moksha. Beliau kemudian tiba di sebuah tempat yang penuh batu-batu besar. Beliau merasa hanya sendirian. Di tempat ini, lalu didirikan sebuah pura yang diberi nama Pura Batu Diyi. Juga di tempat ini Danghyang Dwijendra merasa kurang aman untuk parama moksha. Dengan perjalanan yang cukup melelahkan menahan lapar dan dahaga, akhirnya beliau tiba di daerah bebukitan yang selalu mendapat sinar matahari terik. Untuk memayungi diri, beliau mengambil sebidang daun kumbang dan berusaha mendapatkan sumber air minum. Setelah berkeliling tidak menemukan sumber air minum, akhirnya Danghyang Dwijendra menancapkan tongkatnya. Maka keluarlah air amertha. Di tempat ini lalu didirikan sebuah pura yang disebut Pura Payung dengan sumber mata air yang dipergunakan sarana tirtha sampai sekarang.<br><br>Ida Pedanda Sakti Wawu Rauh kemudian beranjak lagi ke lokasi lain, untuk menghibur diri sebelum melaksanakan detik-detik kembali ke asal. Di tempat ini lalu didirikan sebuah pura bernama Pura Selonding yang berlokasi di Banjar Kangin Desa Adat Pecatu. Setelah puas menghibur diri, Danghyang Dwijendra merasa lelah. Maka beliau mencari tempat untuk istirahat. Saking lelahnya sampai-sampai beliau sirep (ketiduran). Di tempat ini lalu didirikan sebuah pura yang diberi nama Pura Parerepan (parerepan artinya pasirepan, tempat penginapan) yang berlokasi di Desa Pecatu.<br><br>Mendekati detik-detik akhir untuk parama moksha, Danghyang Dwijendra menyucikan diri dan mulat sarira terlebih dahulu. Di tempat ini sampai sekarang berdirilah sebuah pura yang disebut Pura Pangleburan yang berlokasi di Banjar Kauh Desa Adat Pecatu. Setelah menyucikan diri, beliau melanjutkan perjalanannya menuju lokasi ujung barat daya Pulau Bali. Tempat ini terdiri atas batu-batu tebing. Apabila diperhatikan dari bawah permukaan laut, kelihatan saling bertindih, berbentuk kepala bertengger di atas batu-batu tebing itu, dengan ketinggian antara 50-100 meter dari permukaan laut. Dengan demikian disebut Uluwatu. Ulu artinya kepala dan watu berarti batu.<br><br>Sebelum Danghyang Dwijendra parama moksha, beliau memanggil juragan perahu yang pernah membawanya dari Sumbawa ke Pulau Bali. Juragan perahu itu bernama Ki Pacek Nambangan Perahu. Sang Pandita minta tolong agar juragan perahu membawa pakaian dan tongkatnya kepada istri beliau yang keempat di Pasraman Griya Sakti Mas di Banjar Pule, Desa Mas, Ubud, Gianyar. Pakaian itu berupa jubah sutra berwarna hijau muda serta tongkat kayu. Setelah Ki Pacek Nambangan Perahu berangkat menuju Pasraman Danghyang Dwijendra di Mas, Ida Pedanda Sakti Wawu Rauh segera menuju sebuah batu besar di sebelah timur onggokan batu-batu bekas candi peninggalan Kerajaan Sri Wira Dalem Kesari. Di atas batu itulah, Ida Pedanda Sakti Wawu Rauh beryoga mengranasika, laksana keris lepas saking urangka, hilang tanpa bekas, amoring acintia parama moksha.<br><br>Selain itu kawasan pantai di Uluwatu dengan ombaknya yang cukup besar sangat menantang untuk pencinta olahraga surfing. Tiap tahun event berlevel internasional selalu diadakan di pantai seputaran Uluwatu ini.', 'uluwatu-01.jpg', '', '', ''),
(8, 'Tulamben', 'Tulamben merupakan desa yang berkembang menjadi obyek wisata karena memiliki potensi laut yang beraneka ragam. Terletak di Desa Tulamben, Kecamatan Kubu, di bagian utara Kabupaten Karangasem sekitar ±25 km dari Kota Amlapura – ibukota kabupaten – , 37 km dari obyek wisata Candidasa, dan sekitar 82 km dari Kota Denpasar.<br><br>Akses menuju lokasi mudah dicapai karena letaknya di pinggir jalan raya jurusan Amlapura – Singaraja. Tulamben kemudian dikembangkan menjadi kawasan pariwisata yang meliputi 2 kecamatan, yaitu Desa Tulamben di Kecamatan Kubu; Desa Datah, Desa Labasari, Desa Culik, Desa Purwakerti, dan Desa Bunutan di Kecamatan Abang.<br><br>Daya tarik utama Tulamben adalah potensi alam bawah lautnya yang eksotis untuk kegiatan diving dan snorekling karena kondisi airnya yang jernih sepanjang tahun dan arusnya yang tenang. Pada kedalaman 30 meter di bawah laut terdapat kerangka kapal “ÚS Liberty” , sebuah kapal dagang AS yang karam akibat dihantam torpedo kapal selam Jepang pada tanggal 11 Januari 1942 ketika dalam pelayarannya melintasi Selat Lombok. Menyelam di kedalaman kapal karam Liberty merupakan alasan terbaik para penyelam yang datang ke Tulamben. Diperkirakan ada sekitar 400 spesies ikan karang mendiami kapal karam tersebut dan dikunjungi sekitar 100 spesies ikan laut lepas ( pelagic).<br><br>Tempat ini juga disebut paradise reef karena penuh dengan kejutan hewan laut yang muncul, seperti jenis ribbon eel, mimic octopus, boxer crabs, ghost pipefish, seahorse, leaf fish, garden eel, lion fish, harlequin shrimp, dan jenis lain yang tidak biasa juga ditemukan di sini. Sementara kumpulan besar jack fish yang jumlahnya hingga ratusan ekor selalu meramaikan kapal karam ini dan mereka sangat ramah pada penyelam.<br><br>Sangat menarik bukan? Tentu para divers yang sudah pernah ke sini, akan kembali lagi. Bagaimana dengan anda?', 'tulamben-01.jpg', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
