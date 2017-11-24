-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2017 at 03:51 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meongdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(1, 'Acis Cat Food enak', 'banner1.png', 'index.php?page=detail&barang_id=16', 'on'),
(2, 'BED PET', 'banner2.png', 'index.php?page=detail&barang_id=14', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`) VALUES
(11, 2, 'Harness Kucing - Biru', '<p>- Nyaman Digunakan</p><p>- Bahan Berkualitas</p><p>- Untuk Kucing</p>', 'harness_pet-biru.jpg', 35000, 4, 'on'),
(12, 2, 'Harness Kucing - Hitam', '<p>- Nyaman digunakan</p><p>- Bahan berkualitas</p><p>- Untuk kucing bray!</p>', 'harness_pet-item.jpg', 35000, 1, 'on'),
(13, 2, 'Pet Carier', '<p>- Untuk membawa peliharaan</p><p>- Aman untuk di bawa</p>', 'pet_carier.jpg', 600000, 4, 'on'),
(14, 2, 'Bed Pet', '<p>- Bahan Lembut</p><p>- Nyaman untuk peliharaan</p>', 'bed_pet.jpg', 300000, -6, 'on'),
(15, 1, 'Royal Canin - Indoor', '<p><strong>Menjaga Organ Kucing Tua</strong><br />Kucing di atas umur 7 tahun tergolong sudah menjadi kucing tua. Kucing tua membutuhkan penjagaan yang ketat untuk organ tubuhnya, oleh karena itu Royal Canin Indoor 7+ hadir untuk memenuhi kebutuhan kucing usia 7 tahun keatas. Mengandung asam lemak esensial dan nutrisi spesifik yang dibutuhkan kucing yang mengalami usia lanjut.</p><p><strong>Melindungi Kulit dan Bulu</strong><br />Kombinasi dari asam lemak esensial, vitamin dan mineral dapat membantu regenerasi sel kulit lebih cepat. Sedangkan antioksidan dari vitamin dan ekstrak tumbuh-tumbuhan dapat mendukung kesehatan kekebalan tubuh dengan mengurangi dampak radikal bebas pada kulit dan sel-sel rambut. Perpaduan dari asam amino, vitamin B, Omega 6, Omega 3 serta mineral bermanfaat untuk memelihara dan menjaga kemilau kulit dan bulu yang sehat.</p><p><strong>Memperlancar Sistem Pencernaan</strong><br />Kucing 7 tahun keatas memiliki sistem pencernaan yang sensitif. Untuk itu dibutuhkan nutrisi khusus untuk merangsang bakteri yang menguntungkan, dan memblokir bakteri berbahaya dalam saluran pencernaan. Royal Canin Indoor 7+ diformulasikan secara khusus untuk memperlancar pencernaan kucing di usia 7 tahun keatas.</p>', 'royal-canin-indoor.jpg', 65000, 14, 'on'),
(16, 1, 'Acis Cat Food 20kg', '<p><strong>Komposisi:</strong></p><p>Corn, Rice, Wheat Bran, Rice Bran, Meat and bone meal, Poultry<br />meal, Soybean meal, Chicken fat, Corn gluten meal, Fish Meal, Full<br />fat soybean. Taurine, vitamins, Minerals and Preservatives.</p>', 'pl-18_dry_food_007.jpg', 500000, 4, 'on'),
(17, 1, 'Equilibrio Adult Cats Sensiveis 1.5 kg', '<p><strong>Equilibrio adult cats Sensiveis&nbsp;</strong> merupakan makanan lengkap untuk kucing dewasa (dari 12 bulan) untuk semua keturunan. Membantu dalam menyeimbangkan sistem usus, meningkatan vitalitas kulit serta bulu yang mengkilap. Selain itu juga baik untuk sistem pencernaan kucing peliharaan anda.</p>', 'racao-equilibrio-gatos-sensiveis-228x228.png', 130000, 10, 'on'),
(18, 5, 'Gramaxin Talc â€“ Bedak Obat Luka dan Gatal', '<p><strong>Gramaxin Talc &ndash; Bedak Obat Luka dan Gatal &ndash; 100gr </strong>adalah produk bedak yang digunakan untuk mengobati luka dan gatal yang terdapat pada hewan kesayangan anda. Produk ini cocok dipakai untuk kucing maupun anjing.</p><p><strong>Aturan Pakai</strong></p><p>Taburkan secukupnya bedak Gramaxin Talc pada bagian yang terdapat luka dan gatal secara merata, ulangi lagi keesokan harinya hingga luka dan gatal tersebut sembuh.</p>', 'obat_luka.jpg', 30000, 3, 'on'),
(19, 5, 'Pet Metronidazole - Obat Mencret Hewan', '<p><strong>Metronidazole</strong> adalah pilihan obat diare untuk hewan kesayangan Anda.</p><p><strong>Tiap ml mengandung&nbsp;</strong><br />Metronidazole ...................................175 mg</p><p><strong>Indikasi</strong><br />Untuk mengobati :<br />- Gangguan inflamasi usus<br />- Gangguan diare<br />- Infeksi karena Giardia ( parasit usus)<br />- Penyakit periodontal</p><p><strong>Kontraindikasi</strong><br />Tidak dianjurkan untuk hewan yang sensitif terhadap obat turunan nitroimidazole, hamil, menyusui, dan hewan dengan disfungsi hati</p><p>Dosis (untuk kucing)<br />Berat badan &lt; 2.5 kg .0.25 0.75 ml<br />Berat badan 2.5 5 kg .0.5 1.0 ml<br />Berat badan &gt; 5 kg..0.75 1.5 ml<br />Pemakaian 1 2 kali sehari</p>', 'Pet Metronidazole - Obat Mencret Hewan.jpg', 29000, 7, 'on'),
(20, 5, 'Tick & Flea Spray 200ml - Spray Anti Kutu', '<p>Spray tick and flea merupakan obat luar yang digunakan untuk membunuh kutu, caplak, pinjal secara efektif. Mengandung obat anti kutu dengan jenis dan kadar yang aman sesuai dengan rekomendasi dokter hewan. Dibuat dengan aroma flo blue agar bisa memberi keharuman menawan. ( meskipun aman , tapi karena bersifat racun untuk kutu dan serangga maka tetap harus dihindarkan dari jilatan kucing, gunakan alat pengaman) Cara pemakaian: semprotkan 5-10 semprotan pada badan, hindari mata, mulut dan hidung, biarkan kering secara natural, gunakan alat pengaman agar hewan anda tidak menjilat, ulangi setiap 3 minggu. Available in 130 ml</p>', 'obat kutu.jpg', 50000, 7, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(1, 'Makanan', 'on'),
(2, 'Aksesoris', 'on'),
(5, 'Obat', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `konfirmasi_id` int(10) NOT NULL,
  `pesanan_id` int(10) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_account` varchar(150) NOT NULL,
  `total_pembayaran` int(10) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`konfirmasi_id`, `pesanan_id`, `nomor_rekening`, `nama_account`, `total_pembayaran`, `tanggal_transfer`, `bukti`, `status`) VALUES
(1, 1, '0999999', 'kukuh', 0, '2017-11-11', '', 0),
(2, 2, '190191919', 'aulia kukuh', 0, '2017-11-11', '', 0),
(3, 2, '', '', 0, '0000-00-00', '', 0),
(4, 3, 'kukuh', 'saputra', 0, '2017-04-04', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kota_id` int(10) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int(10) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kota_id`, `kota`, `tarif`, `status`) VALUES
(1, 'Pemalang', 20000, 'on'),
(2, 'Amsterdam', 1000000, 'on'),
(3, 'Karawang', 50000, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int(10) NOT NULL,
  `kota_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `kota_id`, `user_id`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`) VALUES
(1, 1, 11, 'Aulia Kukuh Saputra', '089', 'jalan kemana mana', '2017-11-20 18:56:13', 2),
(2, 2, 13, 'Auli', '081', 'pemalang', '2017-11-24 07:15:11', 1),
(3, 1, 13, 'okoko', '010101', 'jalanjalan', '2017-11-24 08:03:38', 1),
(4, 1, 13, 'jlewfbfh', '567483902', 'jalanjalana', '2017-11-24 08:07:14', 0),
(5, 1, 13, 'sungkono', '081902', 'jalan udang no 115 RT01/RW06 Pemalang, Jawa Tengah', '2017-11-24 13:26:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `pesanan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `quantity` tinyint(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`pesanan_id`, `barang_id`, `quantity`, `harga`) VALUES
(1, 15, 1, 65000),
(1, 19, 1, 29000),
(1, 18, 1, 30000),
(2, 20, 1, 50000),
(3, 16, 1, 500000),
(3, 13, 127, 600000),
(4, 15, 1, 65000),
(5, 20, 2, 50000),
(5, 14, 1, 300000),
(5, 12, 1, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `email`, `alamat`, `phone`, `password`, `status`) VALUES
(8, 'superadmin', 'Testing', 'test@ymail.com', 'Testing Indonesia', '1234567', '4297f44b13955235245b2497399d7a93', 'on'),
(9, 'customer', 'Cobacoba', 'coba@ymail.com', 'Coba Indonesia', '09870987', '4297f44b13955235245b2497399d7a93', 'on'),
(10, 'superadmin', 'admin', 'admin@gmail.com', 'jalan udang', '081902301010', '21232f297a57a5a743894a0e4a801fc3', 'on'),
(11, 'customer', 'aulia', 'aulia@gmail.com', 'jalan kemana mana', '089', '202cb962ac59075b964b07152d234b70', 'on'),
(12, 'customer', 'Soeng', 'soeng', 'KRW', '081', '202cb962ac59075b964b07152d234b70', 'on'),
(13, 'customer', 'Aulia Kukuh', 'kukuhs@gmail.com', 'Yogyakarta', '87825682931', '202cb962ac59075b964b07152d234b70', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `pesanan_id` (`pesanan_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `konfirmasi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
