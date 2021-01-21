-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2021 at 10:20 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ta_intan_rahmi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_latih`
--

CREATE TABLE `tbl_data_latih` (
  `latih_id` int(11) NOT NULL,
  `latih_kalimat_asli` text NOT NULL,
  `latih_kalimat_proses` text NOT NULL,
  `latih_class` int(1) NOT NULL,
  `latih_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_latih`
--

INSERT INTO `tbl_data_latih` (`latih_id`, `latih_kalimat_asli`, `latih_kalimat_proses`, `latih_class`, `latih_category`) VALUES
(1, 'Permainan lawan kata atau lebih popular dengan istilah word ladder merupakan permainan membentuk lawan kata dengan cara  mencari sebuah kata baru yang hanya berbeda satu huruf dari kata sebelumnya. Algoritma pencarian depth first search dapat diterapkan pada aplikasi agar dapat melakukan pencarian kata. Algoritma depth first search merupakan metode pencarian pada struktur pohon dengan menelusuri suatu cabang pohon secara mendalam hingga ditemukannya solusi. Aplikasi yang dibangun bertujuan untuk membantu pemain dalam mencari kata yang tepat untuk membentuk sebuah lawan kata dalam permainan word ladder. Hasil yang diperoleh dari aplikasi yang dibangun menunjukkan bahwa algoritma depth first search mampu memberikan penyelesaian permainan word ladder dengan baik', 'permainan  lawan popular istilah word ladder membentuk  berbeda huruf algoritma pencarian depth search diterapkan aplikasi metode struktur pohon menelusuri cabang mendalam ditemukannya solusi dibangun bertujuan pemain tepat diperoleh penyelesaian', 2, 'Abstrak'),
(2, 'Pengenalan suara adalah proses otomatis penggalian dan menentukan informasi linguistik yang disampaikan oleh sinyal suara menggunakan komputer atau sirkuit elektronik. Tiap-tiap sampel suara yang dihasilkan memiliki nilai energi masing-masing yang dipengaruhi oleh frekuensi dan amplitudo. Nilai energi dari masing-masing sampel suara itu kemudian ditetapkan sebagai suatu ciri untuk dapat diklasifikasi dengan sampel suara lainnya. Dalam penelitian ini, metode Lanczos Approximation berperan dalam proses pengelompokan nilai energi suatu untuk menentukan ciri dari suatu sampel suara. Setelah masing-masing sampel suara memiliki identitas ciri masing-masing, maka dilakukanlah pengklasifikasian sampel suara dimana dalam penelitian ini hasil pengklasifikasian itu berupa output identitas nomor ayat-ayat Suci Al-Quran pada surat Makkiyah dan Madaniyah. Dari hasil penelitian sistem ini yang menggunakan metode Lanczos Approximation memiliki tingkat ke akuratan sebesar 65%.', 'pengenalan  suara otomatis penggalian menentukan informasi linguistik disampaikan sinyal komputer sirkuit elektronik  tiap sampel dihasilkan nilai energi masing dipengaruhi frekuensi amplitudo ditetapkan ciri diklasifikasi penelitian metode lanczos approximation berperan pengelompokan identitas dilakukanlah pengklasifikasian dimana berupa output nomor ayat suci al quran surat makkiyah madaniyah sistem akuratan', 3, 'Abstrak'),
(3, 'Metode Transportasi adalah suatu metode yang dapat digunakan untuk menentukan pengalokasian barang yang paling efektif dari suatu sumber ke suatu tujuan tertentu dengan biaya yang seminimal mungkin. Penelitian ini dilakukan pada PDAM Tirta Mon Pase Kabupaten Aceh Utara yang merupakan perusahaan penyedia air bersih untuk beberapa kecamatan yang ada di Aceh Utara dan Lhokseumawe. PDAM (Perusahaan Air Minum Daerah) sebagai kesatuan usaha milik Pemda yang memberikan jasa pelayanan dan menyelenggarakan kemanfaatan umum di bidang air minum. Dalam pengadaan, pengelolaan serta pengembangan air minum oleh pemerintah daerah/kota dikelola dalam bentuk Perusahaan. Penelitian ini bertujuan untuk mengetahui apakah metode transportasi dapat memberi penghematan atau e?siensi biaya distribusi air. Metode yang digunakan pada penelitian ini terdiri dari Metode Least Cost untuk menganalisa solusi ?sibel awal dan Modi?ed Distribution (MODI) untuk menganalisa solusi optimum. Dari perhitungan dengan metode transportasi diperoleh biaya optimum yang lebih rendah.', 'metode  transportasi menentukan pengalokasian efektif tujuan tertentu biaya seminimal  penelitian pdam tirta mon pase kabupaten aceh perusahaan penyedia air bersih kecamatan lhokseumawe minum daerah kesatuan usaha pemda jasa pelayanan menyelenggarakan kemanfaatan bidang pengadaan pengelolaan pengembangan pemerintah kota dikelola bertujuan penghematan e?siensi distribusi terdiri cost menganalisa solusi ?sibel modi?ed distribution modi optimum perhitungan diperoleh rendah', 4, 'Abstrak'),
(4, 'Bencana daerah merupakan suatu kejadian alam yang dapat mengancam dan mengganggu kehidupan dan penghidupan masyarakat yang bisa disebabkan oleh berbagai faktor yang menimbulkan korban jiwa manusia dan kerusakan lingkungan. Dalam mencapai titik lokasi bencana untuk melakukan proses evakuasi dan memberikan bantuan korban bencana alam maka diperlukan suatu rute terpendek yang dapat dilalui petugas agar penanggulangan bencana dapat cepat dilakukan. Algoritma Hill Climbing mempunyai kemampuan untuk mencari solusi optimal dalam penentuan jalur terpendek dengan cara mencari solusi dari suatu permasalahan menjadi beberapa permasalahan dalam satuan waktu yang lebih kecil dan memecahkan tiap permasalahan tersebut dengan optimal. Proses pencarian rute terpendek tersebut dilakukan dengan beberapa tahapan yaitu yaitu dimulai dari menginput lokasi rawan bencana kemudian mengisi data rute dan yang terakhir melakukan perhitungan berdasarkan rute-rute yang akan dilewati petugas dan mencari diantara rute tersebut dimana yang rutenya memliki jarak terpendek. Hasil yang diperoleh sesuai dengan jarak terpendek yang diinginkan petugas sehingga hasil dari pencarian tersebut layak untuk dipilih.', 'bencana  daerah alam mengancam mengganggu penghidupan masyarakat disebabkan faktor menimbulkan korban jiwa manusia kerusakan lingkungan  titik lokasi evakuasi bantuan diperlukan rute terpendek dilalui petugas penanggulangan cepat algoritma hill climbing kemampuan solusi optimal penentuan jalur permasalahan satuan memecahkan tiap pencarian tahapan dimulai menginput rawan mengisi data perhitungan dilewati diantara dimana rutenya memliki jarak diperoleh diinginkan layak dipilih', 1, 'Abstrak'),
(5, 'Dalam pengambilan keputusan terhadap pembelian Laptop, seorang pembeli akan mempertimbangkan berbagai macam kriteria yang kompleks, seperti kriteria kualitatif (non-numerik) dan kriteria kuantitatif (numerik) untuk mendapatkan keputusan yang terbaik. Untuk mempermudah proses tersebut, sebuah program aplikasi pengambilan keputusan pembelian Laptop dibuat dalam skripsi ini. Program aplikasi tersebut dibangun dengan menerapkan metode Brown-Gibson yang mampu melakukan pengukuran terhadap kriteria kualitatif sekaligus kriteria kuantitatif. Adapun algoritma dalam metode Brown-Gibson yang digunakan pada program aplikasi ini antara lain: Performance Measurement untuk mengukur kriteria kuantitatif, seperti Harga Laptop, Kapasistas Prosessor, Ukuran Layar, dan Kapasitas Hardisk; Pairwise Comparison untuk mengukur kriteria kualitatif, Wi-Fi, Blutooth, Webcam, Card Reader; dan Preference of Measurement yang mengkombinasikan kriteria kuantitatif dan kualitatif tersebut hingga menghasilkan suatu bobot prioritas yang bisa diterima sebagai hasil pengukuran untuk setiap alternatif Laptop secara keseluruhan. Hasil akhir skripsi ini berupa suatu program aplikasi yang memberikan sebuah nilai tertinggi untuk sebuah alternatif Laptop. Laptop yang mendapatkan nilai tertinggi tersebut merupakan alternatif Laptop yang mempunyai spesifikasi paling sesuai dengan kriteria-kriteria yang dipertimbangkan oleh pembeli.', 'pengambilan  pembelian laptop  pembeli mempertimbangkan macam kriteria kompleks kualitatif non numerik kuantitatif terbaik mempermudah aplikasi dibuat skripsi dibangun menerapkan metode brown gibson pengukuran sekaligus adapun algoritma performance measurement mengukur harga kapasistas prosessor ukuran layar kapasitas hardisk pairwise comparison wi fi blutooth webcam card reader preference mengkombinasikan menghasilkan bobot prioritas diterima alternatif keseluruhan berupa nilai tertinggi spesifikasi dipertimbangkan', 5, 'Abstrak'),
(6, 'Pengetahuan merupakan aspek terpenting dalam kehidupan maka dari itu pendidikan sangat dibutuhkan oleh masyarakat. Ilmu pengetahuan bisa kita dapat melalui pendidikan formal dan nonformal. Sudah banyak media yang bisa kita jumpai dalam pendidikan formal dan nonformal seperti sekolah dan perguruan tinggi untuk pendidikan formal dan lembaga-lembaga pelatihan serta media internet sudah sangat mendukung kegiatan pendidikan nonformal. Dan Dengan meningkatnya pengguna internet di indonesia maka pemilik sebuah website ataupun blog memanfaatkan kebutuhan dari pengguna internet dengan menyediakan informasi dan referensi pembelajaran maupun hiburan untuk meningkatkan jumlah pengunjung yang datang ke situs tersebut. Dengan memanfaatkan perkembangan teknologi maka sebuah website bisa menyediakan hiburan yang bermanfaat bagi ilmu pengetahuan pengunjung, salah satunya satunya melalui aplikasi atau game berbasis web sehingga selain dalam mencari informasi pengunjung akan mendapatkan hiburan yang bermanfaat tentunya dalam mengunjungi sebuah website ataupun blog tersebut. agar setiap pengunjung akan mendapatkan hiburan dan juga tempat untuk menguji tingkat pengetahuan mereka disaat mengunjungi website ataupun blog tersebut. Dalam aplikasi ini akan ada sejumlah soal atau pertanyaan yang akan diajukan secara acak kepada pengguna, salah satu metode yang dapat digunakan untuk mengacak adalah metode Linear Congruential Generators (LCG). Hasil dari game pembelajaran kuis pengetahuan umum berbasis web ini berupa kunci jawaban dan nilai dari setiap pemain.', 'pengetahuan  aspek terpenting pendidikan dibutuhkan masyarakat  ilmu formal nonformal media jumpai sekolah perguruan lembaga pelatihan internet mendukung meningkatnya pengguna indonesia pemilik website ataupun blog memanfaatkan menyediakan informasi referensi pembelajaran hiburan pengunjung situs perkembangan teknologi bermanfaat satunya aplikasi game berbasis web tentunya mengunjungi menguji disaat soal pertanyaan diajukan acak metode mengacak linear congruential generators lcg kuis berupa kunci jawaban nilai pemain', 2, 'Abstrak'),
(7, 'Sebagai bahan kebutuhan pokok yang sangat mendasar, air bersih merupakan salah satu dari sekian banyak pemenuhan kebutuhan pokok yang bersifat primer. Air baku untuk suatu instalasi pengolahan air bersih maupun air bersih yang dihasilkannya haruslah memenuhi persyaratan mutu air baku dan bersih/air minum yang berlaku di indonesia. Oleh karena itu, untuk pengendalian air bersih yang siap dipergunakan untuk minum yang penyajiannya lebih selektif, maka dibuatlah suatu aplikasi sistem pakar untuk pengendalian kualitas air minum menggunakan metode Forward Chaining. Dengan analisa pemeriksaan air berupa temperatur, baru dan ras, kekruhan, warna, PH derajat keasaman, calcium, zat besi dan magnesium. Dengan nilai proporsi jenis yaitu sebesar 100% dibagi dengan jumlah gejala pencemaran, sehingga diperoleh proporsi untuk J001 adalah 100%, J002 adalah 33%, J003 adalah 50%, J004 adalah 100%, J005 adalah 100%, J006 adalah 100%, J007 adalah 33%, J008 adalah 100%.', 'bahan  pokok mendasar  air bersih sekian pemenuhan bersifat primer baku instalasi pengolahan dihasilkannya haruslah memenuhi persyaratan mutu minum berlaku indonesia pengendalian siap dipergunakan penyajiannya selektif dibuatlah aplikasi sistem pakar kualitas metode forward chaining analisa pemeriksaan berupa temperatur ras kekruhan warna ph derajat keasaman calcium zat besi magnesium nilai proporsi dibagi gejala pencemaran diperoleh j', 2, 'Abstrak'),
(8, 'Banyak ahli yang berkonsentrasi pada pengembangan kecerdasan buatan atau Artificial Intelligence (AI). Implementasi AI dalam bidang komputer, salah satunya adalah Sistem Pakar yang menggabungkan pengetahuan dan penelusuran data untuk memecahkan masalah yang secara normal memerlukan keahlian manusia. Sistem pakar (expert system) adalah program konsultasi yang menirukan proses seorang ahli atau pakar dalam memecahkan masalah yang rumit yang menggunakan komputer sebagai alat bantu dan salah satu bahasa pemrograman. Sistem Pakar ini diterapkan untuk dapat mendiagnosa kerusakan sepeda motor yang dapat membantu teknisi dan konsumen dalam mengambil langkah yang cepat untuk perawatan dan perbaikan sepeda motor dimana selama ini untuk melakukan dignosa kerusakan pada komponen-komponen seperti Per CVT, Komponen Transmisi Otomotif, Karbulator Vakum, Combi brake System, V-Belt, CDI, Accu dan Regulator rectifier (Kiprok). Metode serta proses dalam pencarian data dalam sistem pakar ini dilakukan dengan metode Forward Chaining atau penelusuran maju. Setelah sistem pakar ini dirancang dan di implementasikan maka proses penelusuran kerusakan dapat dilakukan dengan cepat dan akurat. Dalam menggunakan perangkat lunak yang dibangun, menu-menu dibuat dengan sangat sederhana, sehingga pemakai dapat menggunakannya dengan mudah dan aplikasinya menggunakan web. Dari hasil pengujian yang dilakukan pencarian secara manual diperoleh persentase gejala kerusakan sebesar 60%.', 'ahli  berkonsentrasi pengembangan kecerdasan buatan artificial intelligence  ai implementasi bidang komputer satunya sistem pakar menggabungkan pengetahuan penelusuran data memecahkan normal memerlukan keahlian manusia expert konsultasi menirukan rumit alat bantu bahasa pemrograman diterapkan mendiagnosa kerusakan sepeda motor teknisi konsumen langkah cepat perawatan perbaikan dimana dignosa komponen cvt transmisi otomotif karbulator vakum combi brake v belt cdi accu regulator rectifier kiprok metode pencarian forward chaining maju dirancang implementasikan akurat perangkat lunak dibangun menu dibuat sederhana pemakai menggunakannya mudah aplikasinya web pengujian manual diperoleh persentase gejala', 2, 'Abstrak'),
(9, 'Cuaca merupakan proses atau peristiwa fisik yang terjadi di atmosfer pada suatu saat dan tempat tertentu serta perubahannya dalam jangka pendek disuatu tempat tertentu dibumi. Untuk mengklasifikasikan cuaca yang ada pada bumi menggunakan berbagai macam algortima yang digunakan, salah satunya Manchine Boltzman. Proses klasifikasi pada penelitian ini dimana citra cuaca cerah, mendung dan hujan sebagai inputan. Klasifikasi cuaca berdasarkan citra pada penelitian ini menggunkan metode Manchine Boltzman. Keluaran dari pada sistem adalah penentuan citra cuaca inputan tergolong kepada golongan cuaca cerah, mendung atau hujan. Hasil penelitian menunjukkan bahwa tingkat ke akurasian mencapai 56.67 %.', 'cuaca  peristiwa fisik atmosfer tertentu perubahannya jangka pendek disuatu dibumi  mengklasifikasikan bumi macam algortima satunya manchine boltzman klasifikasi penelitian dimana citra cerah mendung hujan inputan menggunkan metode keluaran sistem penentuan tergolong golongan akurasian', 3, 'Abstrak'),
(10, 'Sistem Pengelolaan dokumen plagiarisme masih dilakukan secara manual yaitu dengan mengecek satu-persatu sehingga membutuhkan waktu yang lama dan kurang efektif. Salah satu algoritma  yang dapat digunakan adalah algoritma Weight Tree yaitu sebuah metode untuk melakukan klasifikasi kemiripan dokumen berdasarkan bobot dokumen tersebut. Untuk menghitung kemiripannya pada penelitian ini menggunakan metode Weight Tree. Hasil Pengujian untuk Sistem dapat diklasifikasikan kategorinya sebagai sistem pendeteksian atau pengetesan kemiripan dokumen yang akurat. Namun sebenarnya pengujian ini tidak menentukan dokumen yang diuji sebagai dokumen plagiat karena hasil yang didapatkan adalah persentase kemiripan antara 2 dokumen tersebut. Kita sendiri yang mengkategorikan dokumen tersebut sebagai dokumen plagiat berdasarkan persentase kemiripan. Nilai rata-rata persentase kemiripan dalam pengujian sistem ini adalah 71,60 %. Sistem yang dibangun dapat berjalan sempurna dengan tingkat keakuratan mencapai 90%. Dengan adanya sistem ini diharapkan proses-proses tersebut menjadi lebih mudah, cepat dan efektif.', 'sistem  pengelolaan dokumen plagiarisme manual mengecek persatu membutuhkan efektif  algoritma weight tree metode melakukan klasifikasi kemiripan bobot menghitung kemiripannya penelitian pengujian diklasifikasikan kategorinya pendeteksian pengetesan kemiripan akurat menentukan diuji plagiat didapatkan persentase mengkategorikan nilai rata dibangun sempurna keakuratan diharapkan mudah cepat', 4, 'Abstrak'),
(11, 'Pengenalan karakter merupakan salah satu studi pengenalan pola. Objek pengenalan yang digunakan untuk studi pengenalan sudah banyak, salah satunya adalah karakter huruf Jawa yaitu suatu karakter yang cukup kompleks dibandingkan dengan karakter huruf romawi biasa. Pada tugas akhir ini dikembangkan suatu sistem pengenalan pola penulisan huruf aksara jawa.  Sistem ini dibangun dengan menggunakan bahasa pemograman Delphi XE. Proses pengenalan pola huruf ini dilakukan dengan menggunakan Metode Machine Boltzmann yang diawali dengan ekstensi file.bmp. Persentase keakuratan dalam penelitian ini dengan data pengujian 100 karakter huruf  tingkat kekuratan 99.96% pengenalan pola huruf aksara jawa. Tingkat keakuratan pengenalan pola huruf dalam penelitian ini sangat ditentukan oleh jumlah pelatihan. Pendekatan pengenalan pola ini merupakan pendekatan statistik, dimana semakin banyak pola huruf yang di training dan disimpan sebagai acuan, maka sistem akan semakin cerdas. ', 'pengenalan  karakter studi pola  objek satunya huruf jawa kompleks dibandingkan romawi tugas dikembangkan sistem penulisan aksara dibangun bahasa pemograman delphi xe metode machine boltzmann diawali ekstensi file bmp persentase keakuratan penelitian data pengujian kekuratan ditentukan pelatihan pendekatan statistik dimana training disimpan acuan cerdas', 3, 'Abstrak'),
(12, 'Pengolahan suara merupakan konsep yang sangat penting untuk semua jenis sistem yang membutuhkan interaksi manusia dalam kegiatan sehari-hari. Pengolahan suara dapat dikategorikan menjadi empat jenis: Isolated Words, Connected Words, Continuous Speech, Spontaneous Speech. Untuk mentransformasikan sinyal suara menjadi sinyal frekuensi suara dalam format WAV diperlukan suatu transformasi yang dapat meminimalkan masalah, yaitu transfromasi Discrete Sine Transform (DST), Discrete Cosine Transform  (DCT) dengan bantuan software Borland Delphi 7 dalam mengenali huruf Morse. Hasil penelitian menunjukkan bahwa penbandingan unjuk kerja transformasi Discrete Sine Transform (DST) dan Discrete Cosine Transform  (DCT) masing-masing memiliki diperoleh true detection untuk transformasi DST = 70.23%, dan transformasi DCT =69.22%. Dan diproleh sample false detection untuk transformasi DST = 29.77%, dan transformasi DCT =30.78%. Menurut hasil penelitian tersebut bisa disimpulkan transformasi DST lebih efesien tingkat keakuratannya dari pada transformasi DCT.', 'pengolahan  suara konsep sistem membutuhkan interaksi manusia sehari  dikategorikan isolated words connected continuous speech spontaneous mentransformasikan sinyal frekuensi format wav diperlukan transformasi meminimalkan transfromasi discrete sine transform dst cosine dct bantuan software borland delphi mengenali huruf morse penelitian penbandingan unjuk masing diperoleh true detection diproleh sample false disimpulkan efesien keakuratannya', 3, 'Abstrak'),
(13, 'Penelitian ini membahas tentang implementasi persoalan menentukan rute terpendek pendistribusian pupuk pada PT. Pupuk Iskandar Muda berbasis  web menggunakan algoritma floyd warshall dan algoritma Djikstra. Pendistribusian pupuk ditekankan pada pencarian dengan menggunakan jalur terpendek, dimana jalur terpendek tersebut diharapkan dapat menyelesaikan masalah dalam keterlambatan pendistrian pupuk di wilayah aceh. Hasil implementasi algoritma djikstra dan algoritma floyd warshall disini akan menampilkan rute mana yang paling terpendek yang harus dilalui. Pada penelitian ini yang menjadi contoh kasus dan perhitungan manual adalah kota asal Banda Aceh dan kota tujuan Lhokseumawe dengan total jarak 274 km dan rute yang harus dilalui adalah Banda Aceh  Sigli  Bireun  Lhokseumawe, baik menggunakan algoritma djikstra atau algoritma floyd warshall memberikan hasil yang sama.', 'penelitian  membahas implementasi persoalan menentukan rute terpendek pendistribusian pupuk pt  iskandar muda berbasis web algoritma floyd warshall djikstra ditekankan pencarian jalur dimana diharapkan menyelesaikan keterlambatan pendistrian wilayah aceh disini menampilkan dilalui contoh kasus perhitungan manual kota banda tujuan lhokseumawe total jarak km sigli bireun', 1, 'Abstrak'),
(14, 'Pengenalan suara (speech recognition) adalah suatu proses untuk mengenali huruf, kata atau kalimat yang diucapkan. Pengenalan suara lebih dikenal dengan istilah Automatic Speech Recognition atau Computer  Speech Recognition. Pada tugas akhir ini dikembangkan suatu sistem pengenalan ayat al-quran pada surat ad-dhuha melalui suara. Sistem ini dibangun dengan menggunakan bahasa pemograman Delphi XE. Proses pengenalan ayat al-quran pada surat ad-dhuha ini dilakukan dengan menggunakan Z Transform yang diawali dengan ekstensi file (.wav) untuk mentransformasikan sinyal suara menjadi sinyal frekuensi. Dari hasil penelitian sistem tingkat keakuratan sistem pengenalan ayat al-qur’an pada surat ad-dhuha berkisar 25,45%  hingga 74,54%. Pendekatan sistem pengenalan ini merupakan pendekatan statistik, dimana semakin banyak sampel pelatihan yang disimpan sebagai acuan, maka sistem akan semakin cerdas. ', 'pengenalan  suara  speech recognition mengenali huruf kalimat diucapkan dikenal istilah automatic computer tugas dikembangkan sistem ayat al quran surat ad dhuha dibangun bahasa pemograman delphi xe z transform diawali ekstensi file wav mentransformasikan sinyal frekuensi penelitian keakuratan qur’an berkisar pendekatan statistik dimana sampel pelatihan disimpan acuan cerdas', 3, 'Abstrak'),
(15, 'Selama ini masyarakat dalam pembuatan beton sering kali mengabaikan kekuatan dari beton itu sendiri. Mereka tidak menghiraukan apa yang akan terjadi jika pembuatan beton dilakukan tidak sesuai dengan kontruksi beton yang dianjurkan. Alhasil bangunan yang dibangunan dengan beton yang tidak sesuai bangunan tersebut mudah hancur jika terjadi gempa dan lain sebagainya. Metode Electre merupakan salah satu metode pengambilan keputusan multikriteria berdasarkan pada konsep outranking dengan menggunakan perbandingan perpasangan dari altrnatif-alternatif berdasarkan kriteria yang sesuai. Jadi, hasil yang di peroleh setelah melalui proses penginputan nilai kriteria dan nilai alternatif adalah jenis-jenis beton seperti beton bertulang, beton pracetak dan beton ringan.', 'masyarakat  pembuatan beton mengabaikan kekuatan  menghiraukan kontruksi dianjurkan alhasil bangunan dibangunan mudah hancur gempa sebagainya metode electre pengambilan multikriteria konsep outranking perbandingan perpasangan altrnatif alternatif kriteria peroleh penginputan nilai bertulang pracetak ringan', 5, 'Abstrak'),
(16, 'APLIKASI PERMAINAN LAWAN KATA MENGGUNAKAN ALGORITMA DEPTH FIRST SEARCH', 'aplikasi  permainan lawan algoritma depth search', 2, 'Judul'),
(17, 'aplikasi kuis pengetahuan umum berbasis web menggunakan metode linear congruential generators', 'aplikasi  kuis pengetahuan berbasis web metode linear congruential generators', 2, 'Judul');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_uji`
--

CREATE TABLE `tbl_data_uji` (
  `uji_id` int(11) NOT NULL,
  `uji_kalimat_asli` text NOT NULL,
  `uji_kalimat_proses` text NOT NULL,
  `uji_class` int(1) NOT NULL,
  `uji_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_uji`
--

INSERT INTO `tbl_data_uji` (`uji_id`, `uji_kalimat_asli`, `uji_kalimat_proses`, `uji_class`, `uji_category`) VALUES
(1, 'Pengetahuan merupakan aspek terpenting dalam kehidupan maka dari itu pendidikan sangat dibutuhkan oleh masyarakat. Ilmu pengetahuan bisa kita dapat melalui pendidikan formal dan nonformal. Sudah banyak media yang bisa kita jumpai dalam pendidikan formal dan nonformal seperti sekolah dan perguruan tinggi untuk pendidikan formal dan lembaga-lembaga pelatihan serta media internet sudah sangat mendukung kegiatan pendidikan nonformal. Dan Dengan meningkatnya pengguna internet di indonesia maka pemilik sebuah website ataupun blog memanfaatkan kebutuhan dari pengguna internet dengan menyediakan informasi dan referensi pembelajaran maupun hiburan untuk meningkatkan jumlah pengunjung yang datang ke situs tersebut. Dengan memanfaatkan perkembangan teknologi maka sebuah website bisa menyediakan hiburan yang bermanfaat bagi ilmu pengetahuan pengunjung, salah satunya satunya melalui aplikasi atau game berbasis web sehingga selain dalam mencari informasi pengunjung akan mendapatkan hiburan yang bermanfaat tentunya dalam mengunjungi sebuah website ataupun blog tersebut. agar setiap pengunjung akan mendapatkan hiburan dan juga tempat untuk menguji tingkat pengetahuan mereka disaat mengunjungi website ataupun blog tersebut. Dalam aplikasi ini akan ada sejumlah soal atau pertanyaan yang akan diajukan secara acak kepada pengguna, salah satu metode yang dapat digunakan untuk mengacak adalah metode Linear Congruential Generators (LCG). Hasil dari game pembelajaran kuis pengetahuan umum berbasis web ini berupa kunci jawaban dan nilai dari setiap pemain.', 'pengetahuan  aspek terpenting pendidikan dibutuhkan masyarakat  ilmu formal nonformal media jumpai sekolah perguruan lembaga pelatihan internet mendukung meningkatnya pengguna indonesia pemilik website ataupun blog memanfaatkan menyediakan informasi referensi pembelajaran hiburan pengunjung situs perkembangan teknologi bermanfaat satunya aplikasi game berbasis web tentunya mengunjungi menguji disaat soal pertanyaan diajukan acak metode mengacak linear congruential generators lcg kuis berupa kunci jawaban nilai pemain', 2, 'Abstrak'),
(2, 'Cuaca merupakan proses atau peristiwa fisik yang terjadi di atmosfer pada suatu saat dan tempat tertentu serta perubahannya dalam jangka pendek disuatu tempat tertentu dibumi. Untuk mengklasifikasikan cuaca yang ada pada bumi menggunakan berbagai macam algortima yang digunakan, salah satunya Manchine Boltzman. Proses klasifikasi pada penelitian ini dimana citra cuaca cerah, mendung dan hujan sebagai inputan. Klasifikasi cuaca berdasarkan citra pada penelitian ini menggunkan metode Manchine Boltzman. Keluaran dari pada sistem adalah penentuan citra cuaca inputan tergolong kepada golongan cuaca cerah, mendung atau hujan. Hasil penelitian menunjukkan bahwa tingkat ke akurasian mencapai 56.67 %.', 'cuaca  peristiwa fisik atmosfer tertentu perubahannya jangka pendek disuatu dibumi  mengklasifikasikan bumi macam algortima satunya manchine boltzman klasifikasi penelitian dimana citra cerah mendung hujan inputan menggunkan metode keluaran sistem penentuan tergolong golongan akurasian', 3, 'Abstrak'),
(3, 'APLIKASI PERMAINAN LAWAN KATA MENGGUNAKAN ALGORITMA DEPTH FIRST SEARCH', 'aplikasi  permainan lawan algoritma depth search', 2, 'Judul'),
(4, 'aplikasi kuis pengetahuan umum berbasis web menggunakan metode linear congruential generators', 'aplikasi  kuis pengetahuan berbasis web metode linear congruential generators', 2, 'Judul');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hasil`
--

CREATE TABLE `tbl_hasil` (
  `hasil_id` int(11) NOT NULL,
  `hasil_data` int(11) NOT NULL,
  `hasil_nilai` double NOT NULL,
  `hasil_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hasil`
--

INSERT INTO `tbl_hasil` (`hasil_id`, `hasil_data`, `hasil_nilai`, `hasil_category`) VALUES
(1, 16, 1, 2),
(2, 17, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kata_latih`
--

CREATE TABLE `tbl_kata_latih` (
  `kata_id` int(11) NOT NULL,
  `kata` varchar(255) NOT NULL,
  `kata_frekuensi` int(11) NOT NULL,
  `latih_id` int(11) NOT NULL,
  `latih_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kata_latih`
--

INSERT INTO `tbl_kata_latih` (`kata_id`, `kata`, `kata_frekuensi`, `latih_id`, `latih_category`) VALUES
(1, 'permainan', 4, 1, 'Abstrak'),
(2, 'lawan', 3, 1, 'Abstrak'),
(3, 'popular', 1, 1, 'Abstrak'),
(4, 'istilah', 1, 1, 'Abstrak'),
(5, 'word', 3, 1, 'Abstrak'),
(6, 'ladder', 3, 1, 'Abstrak'),
(7, 'membentuk', 2, 1, 'Abstrak'),
(8, 'berbeda', 1, 1, 'Abstrak'),
(9, 'huruf', 1, 1, 'Abstrak'),
(10, 'algoritma', 3, 1, 'Abstrak'),
(11, 'pencarian', 3, 1, 'Abstrak'),
(12, 'depth', 3, 1, 'Abstrak'),
(13, 'search', 3, 1, 'Abstrak'),
(14, 'diterapkan', 1, 1, 'Abstrak'),
(15, 'aplikasi', 3, 1, 'Abstrak'),
(16, 'metode', 1, 1, 'Abstrak'),
(17, 'struktur', 1, 1, 'Abstrak'),
(18, 'pohon', 2, 1, 'Abstrak'),
(19, 'menelusuri', 1, 1, 'Abstrak'),
(20, 'cabang', 1, 1, 'Abstrak'),
(21, 'mendalam', 1, 1, 'Abstrak'),
(22, 'ditemukannya', 1, 1, 'Abstrak'),
(23, 'solusi', 1, 1, 'Abstrak'),
(24, 'dibangun', 2, 1, 'Abstrak'),
(25, 'bertujuan', 1, 1, 'Abstrak'),
(26, 'pemain', 1, 1, 'Abstrak'),
(27, 'tepat', 1, 1, 'Abstrak'),
(28, 'diperoleh', 1, 1, 'Abstrak'),
(29, 'penyelesaian', 1, 1, 'Abstrak'),
(30, 'pengenalan', 1, 2, 'Abstrak'),
(31, 'suara', 8, 2, 'Abstrak'),
(32, 'otomatis', 1, 2, 'Abstrak'),
(33, 'penggalian', 1, 2, 'Abstrak'),
(34, 'menentukan', 2, 2, 'Abstrak'),
(35, 'informasi', 1, 2, 'Abstrak'),
(36, 'linguistik', 1, 2, 'Abstrak'),
(37, 'disampaikan', 1, 2, 'Abstrak'),
(38, 'sinyal', 1, 2, 'Abstrak'),
(39, 'komputer', 1, 2, 'Abstrak'),
(40, 'sirkuit', 1, 2, 'Abstrak'),
(41, 'elektronik', 1, 2, 'Abstrak'),
(42, 'tiap', 2, 2, 'Abstrak'),
(43, 'sampel', 6, 2, 'Abstrak'),
(44, 'dihasilkan', 1, 2, 'Abstrak'),
(45, 'nilai', 3, 2, 'Abstrak'),
(46, 'energi', 3, 2, 'Abstrak'),
(47, 'masing', 8, 2, 'Abstrak'),
(48, 'dipengaruhi', 1, 2, 'Abstrak'),
(49, 'frekuensi', 1, 2, 'Abstrak'),
(50, 'amplitudo', 1, 2, 'Abstrak'),
(51, 'ditetapkan', 1, 2, 'Abstrak'),
(52, 'ciri', 3, 2, 'Abstrak'),
(53, 'diklasifikasi', 1, 2, 'Abstrak'),
(54, 'penelitian', 3, 2, 'Abstrak'),
(55, 'metode', 2, 2, 'Abstrak'),
(56, 'lanczos', 2, 2, 'Abstrak'),
(57, 'approximation', 2, 2, 'Abstrak'),
(58, 'berperan', 1, 2, 'Abstrak'),
(59, 'pengelompokan', 1, 2, 'Abstrak'),
(60, 'identitas', 2, 2, 'Abstrak'),
(61, 'dilakukanlah', 1, 2, 'Abstrak'),
(62, 'pengklasifikasian', 2, 2, 'Abstrak'),
(63, 'dimana', 1, 2, 'Abstrak'),
(64, 'berupa', 1, 2, 'Abstrak'),
(65, 'output', 1, 2, 'Abstrak'),
(66, 'nomor', 1, 2, 'Abstrak'),
(67, 'ayat', 2, 2, 'Abstrak'),
(68, 'suci', 1, 2, 'Abstrak'),
(69, 'al', 1, 2, 'Abstrak'),
(70, 'quran', 1, 2, 'Abstrak'),
(71, 'surat', 1, 2, 'Abstrak'),
(72, 'makkiyah', 1, 2, 'Abstrak'),
(73, 'madaniyah', 1, 2, 'Abstrak'),
(74, 'sistem', 1, 2, 'Abstrak'),
(75, 'akuratan', 1, 2, 'Abstrak'),
(76, 'metode', 6, 3, 'Abstrak'),
(77, 'transportasi', 3, 3, 'Abstrak'),
(78, 'menentukan', 1, 3, 'Abstrak'),
(79, 'pengalokasian', 1, 3, 'Abstrak'),
(80, 'efektif', 1, 3, 'Abstrak'),
(81, 'tujuan', 1, 3, 'Abstrak'),
(82, 'tertentu', 1, 3, 'Abstrak'),
(83, 'biaya', 3, 3, 'Abstrak'),
(84, 'seminimal', 1, 3, 'Abstrak'),
(85, 'penelitian', 3, 3, 'Abstrak'),
(86, 'pdam', 2, 3, 'Abstrak'),
(87, 'tirta', 1, 3, 'Abstrak'),
(88, 'mon', 1, 3, 'Abstrak'),
(89, 'pase', 1, 3, 'Abstrak'),
(90, 'kabupaten', 1, 3, 'Abstrak'),
(91, 'aceh', 2, 3, 'Abstrak'),
(92, 'perusahaan', 3, 3, 'Abstrak'),
(93, 'penyedia', 1, 3, 'Abstrak'),
(94, 'air', 5, 3, 'Abstrak'),
(95, 'bersih', 1, 3, 'Abstrak'),
(96, 'kecamatan', 1, 3, 'Abstrak'),
(97, 'lhokseumawe', 1, 3, 'Abstrak'),
(98, 'minum', 3, 3, 'Abstrak'),
(99, 'daerah', 2, 3, 'Abstrak'),
(100, 'kesatuan', 1, 3, 'Abstrak'),
(101, 'usaha', 1, 3, 'Abstrak'),
(102, 'pemda', 1, 3, 'Abstrak'),
(103, 'jasa', 1, 3, 'Abstrak'),
(104, 'pelayanan', 1, 3, 'Abstrak'),
(105, 'menyelenggarakan', 1, 3, 'Abstrak'),
(106, 'kemanfaatan', 1, 3, 'Abstrak'),
(107, 'bidang', 1, 3, 'Abstrak'),
(108, 'pengadaan', 1, 3, 'Abstrak'),
(109, 'pengelolaan', 1, 3, 'Abstrak'),
(110, 'pengembangan', 1, 3, 'Abstrak'),
(111, 'pemerintah', 1, 3, 'Abstrak'),
(112, 'kota', 1, 3, 'Abstrak'),
(113, 'dikelola', 1, 3, 'Abstrak'),
(114, 'bertujuan', 1, 3, 'Abstrak'),
(115, 'penghematan', 1, 3, 'Abstrak'),
(116, 'e?siensi', 1, 3, 'Abstrak'),
(117, 'distribusi', 1, 3, 'Abstrak'),
(118, 'terdiri', 1, 3, 'Abstrak'),
(119, 'cost', 1, 3, 'Abstrak'),
(120, 'menganalisa', 2, 3, 'Abstrak'),
(121, 'solusi', 2, 3, 'Abstrak'),
(122, '?sibel', 1, 3, 'Abstrak'),
(123, 'modi?ed', 1, 3, 'Abstrak'),
(124, 'distribution', 1, 3, 'Abstrak'),
(125, 'modi', 1, 3, 'Abstrak'),
(126, 'optimum', 2, 3, 'Abstrak'),
(127, 'perhitungan', 1, 3, 'Abstrak'),
(128, 'diperoleh', 1, 3, 'Abstrak'),
(129, 'rendah', 1, 3, 'Abstrak'),
(130, 'bencana', 5, 4, 'Abstrak'),
(131, 'daerah', 1, 4, 'Abstrak'),
(132, 'alam', 2, 4, 'Abstrak'),
(133, 'mengancam', 1, 4, 'Abstrak'),
(134, 'mengganggu', 1, 4, 'Abstrak'),
(135, 'penghidupan', 1, 4, 'Abstrak'),
(136, 'masyarakat', 1, 4, 'Abstrak'),
(137, 'disebabkan', 1, 4, 'Abstrak'),
(138, 'faktor', 1, 4, 'Abstrak'),
(139, 'menimbulkan', 1, 4, 'Abstrak'),
(140, 'korban', 2, 4, 'Abstrak'),
(141, 'jiwa', 1, 4, 'Abstrak'),
(142, 'manusia', 1, 4, 'Abstrak'),
(143, 'kerusakan', 1, 4, 'Abstrak'),
(144, 'lingkungan', 1, 4, 'Abstrak'),
(145, 'titik', 1, 4, 'Abstrak'),
(146, 'lokasi', 2, 4, 'Abstrak'),
(147, 'evakuasi', 1, 4, 'Abstrak'),
(148, 'bantuan', 1, 4, 'Abstrak'),
(149, 'diperlukan', 1, 4, 'Abstrak'),
(150, 'rute', 6, 4, 'Abstrak'),
(151, 'terpendek', 5, 4, 'Abstrak'),
(152, 'dilalui', 1, 4, 'Abstrak'),
(153, 'petugas', 3, 4, 'Abstrak'),
(154, 'penanggulangan', 1, 4, 'Abstrak'),
(155, 'cepat', 1, 4, 'Abstrak'),
(156, 'algoritma', 1, 4, 'Abstrak'),
(157, 'hill', 1, 4, 'Abstrak'),
(158, 'climbing', 1, 4, 'Abstrak'),
(159, 'kemampuan', 1, 4, 'Abstrak'),
(160, 'solusi', 2, 4, 'Abstrak'),
(161, 'optimal', 2, 4, 'Abstrak'),
(162, 'penentuan', 1, 4, 'Abstrak'),
(163, 'jalur', 1, 4, 'Abstrak'),
(164, 'permasalahan', 3, 4, 'Abstrak'),
(165, 'satuan', 1, 4, 'Abstrak'),
(166, 'memecahkan', 1, 4, 'Abstrak'),
(167, 'tiap', 1, 4, 'Abstrak'),
(168, 'pencarian', 2, 4, 'Abstrak'),
(169, 'tahapan', 1, 4, 'Abstrak'),
(170, 'dimulai', 1, 4, 'Abstrak'),
(171, 'menginput', 1, 4, 'Abstrak'),
(172, 'rawan', 1, 4, 'Abstrak'),
(173, 'mengisi', 1, 4, 'Abstrak'),
(174, 'data', 1, 4, 'Abstrak'),
(175, 'perhitungan', 1, 4, 'Abstrak'),
(176, 'dilewati', 1, 4, 'Abstrak'),
(177, 'diantara', 1, 4, 'Abstrak'),
(178, 'dimana', 1, 4, 'Abstrak'),
(179, 'rutenya', 1, 4, 'Abstrak'),
(180, 'memliki', 1, 4, 'Abstrak'),
(181, 'jarak', 2, 4, 'Abstrak'),
(182, 'diperoleh', 1, 4, 'Abstrak'),
(183, 'diinginkan', 1, 4, 'Abstrak'),
(184, 'layak', 1, 4, 'Abstrak'),
(185, 'dipilih', 1, 4, 'Abstrak'),
(186, 'pengambilan', 2, 5, 'Abstrak'),
(187, 'pembelian', 2, 5, 'Abstrak'),
(188, 'laptop', 7, 5, 'Abstrak'),
(189, 'pembeli', 2, 5, 'Abstrak'),
(190, 'mempertimbangkan', 1, 5, 'Abstrak'),
(191, 'macam', 1, 5, 'Abstrak'),
(192, 'kriteria', 10, 5, 'Abstrak'),
(193, 'kompleks', 1, 5, 'Abstrak'),
(194, 'kualitatif', 4, 5, 'Abstrak'),
(195, 'non', 1, 5, 'Abstrak'),
(196, 'numerik', 2, 5, 'Abstrak'),
(197, 'kuantitatif', 4, 5, 'Abstrak'),
(198, 'terbaik', 1, 5, 'Abstrak'),
(199, 'mempermudah', 1, 5, 'Abstrak'),
(200, 'aplikasi', 4, 5, 'Abstrak'),
(201, 'dibuat', 1, 5, 'Abstrak'),
(202, 'skripsi', 2, 5, 'Abstrak'),
(203, 'dibangun', 1, 5, 'Abstrak'),
(204, 'menerapkan', 1, 5, 'Abstrak'),
(205, 'metode', 2, 5, 'Abstrak'),
(206, 'brown', 2, 5, 'Abstrak'),
(207, 'gibson', 2, 5, 'Abstrak'),
(208, 'pengukuran', 2, 5, 'Abstrak'),
(209, 'sekaligus', 1, 5, 'Abstrak'),
(210, 'adapun', 1, 5, 'Abstrak'),
(211, 'algoritma', 1, 5, 'Abstrak'),
(212, 'performance', 1, 5, 'Abstrak'),
(213, 'measurement', 2, 5, 'Abstrak'),
(214, 'mengukur', 2, 5, 'Abstrak'),
(215, 'harga', 1, 5, 'Abstrak'),
(216, 'kapasistas', 1, 5, 'Abstrak'),
(217, 'prosessor', 1, 5, 'Abstrak'),
(218, 'ukuran', 1, 5, 'Abstrak'),
(219, 'layar', 1, 5, 'Abstrak'),
(220, 'kapasitas', 1, 5, 'Abstrak'),
(221, 'hardisk', 1, 5, 'Abstrak'),
(222, 'pairwise', 1, 5, 'Abstrak'),
(223, 'comparison', 1, 5, 'Abstrak'),
(224, 'wi', 1, 5, 'Abstrak'),
(225, 'fi', 1, 5, 'Abstrak'),
(226, 'blutooth', 1, 5, 'Abstrak'),
(227, 'webcam', 1, 5, 'Abstrak'),
(228, 'card', 1, 5, 'Abstrak'),
(229, 'reader', 1, 5, 'Abstrak'),
(230, 'preference', 1, 5, 'Abstrak'),
(231, 'mengkombinasikan', 1, 5, 'Abstrak'),
(232, 'menghasilkan', 1, 5, 'Abstrak'),
(233, 'bobot', 1, 5, 'Abstrak'),
(234, 'prioritas', 1, 5, 'Abstrak'),
(235, 'diterima', 1, 5, 'Abstrak'),
(236, 'alternatif', 3, 5, 'Abstrak'),
(237, 'keseluruhan', 1, 5, 'Abstrak'),
(238, 'berupa', 1, 5, 'Abstrak'),
(239, 'nilai', 2, 5, 'Abstrak'),
(240, 'tertinggi', 2, 5, 'Abstrak'),
(241, 'spesifikasi', 1, 5, 'Abstrak'),
(242, 'dipertimbangkan', 1, 5, 'Abstrak'),
(243, 'pengetahuan', 5, 6, 'Abstrak'),
(244, 'aspek', 1, 6, 'Abstrak'),
(245, 'terpenting', 1, 6, 'Abstrak'),
(246, 'pendidikan', 5, 6, 'Abstrak'),
(247, 'dibutuhkan', 1, 6, 'Abstrak'),
(248, 'masyarakat', 1, 6, 'Abstrak'),
(249, 'ilmu', 2, 6, 'Abstrak'),
(250, 'formal', 3, 6, 'Abstrak'),
(251, 'nonformal', 3, 6, 'Abstrak'),
(252, 'media', 2, 6, 'Abstrak'),
(253, 'jumpai', 1, 6, 'Abstrak'),
(254, 'sekolah', 1, 6, 'Abstrak'),
(255, 'perguruan', 1, 6, 'Abstrak'),
(256, 'lembaga', 2, 6, 'Abstrak'),
(257, 'pelatihan', 1, 6, 'Abstrak'),
(258, 'internet', 3, 6, 'Abstrak'),
(259, 'mendukung', 1, 6, 'Abstrak'),
(260, 'meningkatnya', 1, 6, 'Abstrak'),
(261, 'pengguna', 3, 6, 'Abstrak'),
(262, 'indonesia', 1, 6, 'Abstrak'),
(263, 'pemilik', 1, 6, 'Abstrak'),
(264, 'website', 4, 6, 'Abstrak'),
(265, 'ataupun', 3, 6, 'Abstrak'),
(266, 'blog', 3, 6, 'Abstrak'),
(267, 'memanfaatkan', 2, 6, 'Abstrak'),
(268, 'menyediakan', 2, 6, 'Abstrak'),
(269, 'informasi', 2, 6, 'Abstrak'),
(270, 'referensi', 1, 6, 'Abstrak'),
(271, 'pembelajaran', 2, 6, 'Abstrak'),
(272, 'hiburan', 4, 6, 'Abstrak'),
(273, 'pengunjung', 4, 6, 'Abstrak'),
(274, 'situs', 1, 6, 'Abstrak'),
(275, 'perkembangan', 1, 6, 'Abstrak'),
(276, 'teknologi', 1, 6, 'Abstrak'),
(277, 'bermanfaat', 2, 6, 'Abstrak'),
(278, 'satunya', 2, 6, 'Abstrak'),
(279, 'aplikasi', 2, 6, 'Abstrak'),
(280, 'game', 2, 6, 'Abstrak'),
(281, 'berbasis', 2, 6, 'Abstrak'),
(282, 'web', 2, 6, 'Abstrak'),
(283, 'tentunya', 1, 6, 'Abstrak'),
(284, 'mengunjungi', 2, 6, 'Abstrak'),
(285, 'menguji', 1, 6, 'Abstrak'),
(286, 'disaat', 1, 6, 'Abstrak'),
(287, 'soal', 1, 6, 'Abstrak'),
(288, 'pertanyaan', 1, 6, 'Abstrak'),
(289, 'diajukan', 1, 6, 'Abstrak'),
(290, 'acak', 1, 6, 'Abstrak'),
(291, 'metode', 2, 6, 'Abstrak'),
(292, 'mengacak', 1, 6, 'Abstrak'),
(293, 'linear', 1, 6, 'Abstrak'),
(294, 'congruential', 1, 6, 'Abstrak'),
(295, 'generators', 1, 6, 'Abstrak'),
(296, 'lcg', 1, 6, 'Abstrak'),
(297, 'kuis', 1, 6, 'Abstrak'),
(298, 'berupa', 1, 6, 'Abstrak'),
(299, 'kunci', 1, 6, 'Abstrak'),
(300, 'jawaban', 1, 6, 'Abstrak'),
(301, 'nilai', 1, 6, 'Abstrak'),
(302, 'pemain', 1, 6, 'Abstrak'),
(303, 'bahan', 1, 7, 'Abstrak'),
(304, 'pokok', 2, 7, 'Abstrak'),
(305, 'mendasar', 1, 7, 'Abstrak'),
(306, 'air', 9, 7, 'Abstrak'),
(307, 'bersih', 5, 7, 'Abstrak'),
(308, 'sekian', 1, 7, 'Abstrak'),
(309, 'pemenuhan', 1, 7, 'Abstrak'),
(310, 'bersifat', 1, 7, 'Abstrak'),
(311, 'primer', 1, 7, 'Abstrak'),
(312, 'baku', 2, 7, 'Abstrak'),
(313, 'instalasi', 1, 7, 'Abstrak'),
(314, 'pengolahan', 1, 7, 'Abstrak'),
(315, 'dihasilkannya', 1, 7, 'Abstrak'),
(316, 'haruslah', 1, 7, 'Abstrak'),
(317, 'memenuhi', 1, 7, 'Abstrak'),
(318, 'persyaratan', 1, 7, 'Abstrak'),
(319, 'mutu', 1, 7, 'Abstrak'),
(320, 'minum', 3, 7, 'Abstrak'),
(321, 'berlaku', 1, 7, 'Abstrak'),
(322, 'indonesia', 1, 7, 'Abstrak'),
(323, 'pengendalian', 2, 7, 'Abstrak'),
(324, 'siap', 1, 7, 'Abstrak'),
(325, 'dipergunakan', 1, 7, 'Abstrak'),
(326, 'penyajiannya', 1, 7, 'Abstrak'),
(327, 'selektif', 1, 7, 'Abstrak'),
(328, 'dibuatlah', 1, 7, 'Abstrak'),
(329, 'aplikasi', 1, 7, 'Abstrak'),
(330, 'sistem', 1, 7, 'Abstrak'),
(331, 'pakar', 1, 7, 'Abstrak'),
(332, 'kualitas', 1, 7, 'Abstrak'),
(333, 'metode', 1, 7, 'Abstrak'),
(334, 'forward', 1, 7, 'Abstrak'),
(335, 'chaining', 1, 7, 'Abstrak'),
(336, 'analisa', 1, 7, 'Abstrak'),
(337, 'pemeriksaan', 1, 7, 'Abstrak'),
(338, 'berupa', 1, 7, 'Abstrak'),
(339, 'temperatur', 1, 7, 'Abstrak'),
(340, 'ras', 1, 7, 'Abstrak'),
(341, 'kekruhan', 1, 7, 'Abstrak'),
(342, 'warna', 1, 7, 'Abstrak'),
(343, 'ph', 1, 7, 'Abstrak'),
(344, 'derajat', 1, 7, 'Abstrak'),
(345, 'keasaman', 1, 7, 'Abstrak'),
(346, 'calcium', 1, 7, 'Abstrak'),
(347, 'zat', 1, 7, 'Abstrak'),
(348, 'besi', 1, 7, 'Abstrak'),
(349, 'magnesium', 1, 7, 'Abstrak'),
(350, 'nilai', 1, 7, 'Abstrak'),
(351, 'proporsi', 2, 7, 'Abstrak'),
(352, 'dibagi', 1, 7, 'Abstrak'),
(353, 'gejala', 1, 7, 'Abstrak'),
(354, 'pencemaran', 1, 7, 'Abstrak'),
(355, 'diperoleh', 1, 7, 'Abstrak'),
(356, 'j', 8, 7, 'Abstrak'),
(357, 'ahli', 2, 8, 'Abstrak'),
(358, 'berkonsentrasi', 1, 8, 'Abstrak'),
(359, 'pengembangan', 1, 8, 'Abstrak'),
(360, 'kecerdasan', 1, 8, 'Abstrak'),
(361, 'buatan', 1, 8, 'Abstrak'),
(362, 'artificial', 1, 8, 'Abstrak'),
(363, 'intelligence', 1, 8, 'Abstrak'),
(364, 'ai', 2, 8, 'Abstrak'),
(365, 'implementasi', 1, 8, 'Abstrak'),
(366, 'bidang', 1, 8, 'Abstrak'),
(367, 'komputer', 2, 8, 'Abstrak'),
(368, 'satunya', 1, 8, 'Abstrak'),
(369, 'sistem', 5, 8, 'Abstrak'),
(370, 'pakar', 6, 8, 'Abstrak'),
(371, 'menggabungkan', 1, 8, 'Abstrak'),
(372, 'pengetahuan', 1, 8, 'Abstrak'),
(373, 'penelusuran', 3, 8, 'Abstrak'),
(374, 'data', 2, 8, 'Abstrak'),
(375, 'memecahkan', 2, 8, 'Abstrak'),
(376, 'normal', 1, 8, 'Abstrak'),
(377, 'memerlukan', 1, 8, 'Abstrak'),
(378, 'keahlian', 1, 8, 'Abstrak'),
(379, 'manusia', 1, 8, 'Abstrak'),
(380, 'expert', 1, 8, 'Abstrak'),
(381, 'konsultasi', 1, 8, 'Abstrak'),
(382, 'menirukan', 1, 8, 'Abstrak'),
(383, 'rumit', 1, 8, 'Abstrak'),
(384, 'alat', 1, 8, 'Abstrak'),
(385, 'bantu', 1, 8, 'Abstrak'),
(386, 'bahasa', 1, 8, 'Abstrak'),
(387, 'pemrograman', 1, 8, 'Abstrak'),
(388, 'diterapkan', 1, 8, 'Abstrak'),
(389, 'mendiagnosa', 1, 8, 'Abstrak'),
(390, 'kerusakan', 4, 8, 'Abstrak'),
(391, 'sepeda', 2, 8, 'Abstrak'),
(392, 'motor', 2, 8, 'Abstrak'),
(393, 'teknisi', 1, 8, 'Abstrak'),
(394, 'konsumen', 1, 8, 'Abstrak'),
(395, 'langkah', 1, 8, 'Abstrak'),
(396, 'cepat', 2, 8, 'Abstrak'),
(397, 'perawatan', 1, 8, 'Abstrak'),
(398, 'perbaikan', 1, 8, 'Abstrak'),
(399, 'dimana', 1, 8, 'Abstrak'),
(400, 'dignosa', 1, 8, 'Abstrak'),
(401, 'komponen', 3, 8, 'Abstrak'),
(402, 'cvt', 1, 8, 'Abstrak'),
(403, 'transmisi', 1, 8, 'Abstrak'),
(404, 'otomotif', 1, 8, 'Abstrak'),
(405, 'karbulator', 1, 8, 'Abstrak'),
(406, 'vakum', 1, 8, 'Abstrak'),
(407, 'combi', 1, 8, 'Abstrak'),
(408, 'brake', 1, 8, 'Abstrak'),
(409, 'v', 1, 8, 'Abstrak'),
(410, 'belt', 1, 8, 'Abstrak'),
(411, 'cdi', 1, 8, 'Abstrak'),
(412, 'accu', 1, 8, 'Abstrak'),
(413, 'regulator', 1, 8, 'Abstrak'),
(414, 'rectifier', 1, 8, 'Abstrak'),
(415, 'kiprok', 1, 8, 'Abstrak'),
(416, 'metode', 2, 8, 'Abstrak'),
(417, 'pencarian', 2, 8, 'Abstrak'),
(418, 'forward', 1, 8, 'Abstrak'),
(419, 'chaining', 1, 8, 'Abstrak'),
(420, 'maju', 1, 8, 'Abstrak'),
(421, 'dirancang', 1, 8, 'Abstrak'),
(422, 'implementasikan', 1, 8, 'Abstrak'),
(423, 'akurat', 1, 8, 'Abstrak'),
(424, 'perangkat', 1, 8, 'Abstrak'),
(425, 'lunak', 1, 8, 'Abstrak'),
(426, 'dibangun', 1, 8, 'Abstrak'),
(427, 'menu', 2, 8, 'Abstrak'),
(428, 'dibuat', 1, 8, 'Abstrak'),
(429, 'sederhana', 1, 8, 'Abstrak'),
(430, 'pemakai', 1, 8, 'Abstrak'),
(431, 'menggunakannya', 1, 8, 'Abstrak'),
(432, 'mudah', 1, 8, 'Abstrak'),
(433, 'aplikasinya', 1, 8, 'Abstrak'),
(434, 'web', 1, 8, 'Abstrak'),
(435, 'pengujian', 1, 8, 'Abstrak'),
(436, 'manual', 1, 8, 'Abstrak'),
(437, 'diperoleh', 1, 8, 'Abstrak'),
(438, 'persentase', 1, 8, 'Abstrak'),
(439, 'gejala', 1, 8, 'Abstrak'),
(440, 'cuaca', 6, 9, 'Abstrak'),
(441, 'peristiwa', 1, 9, 'Abstrak'),
(442, 'fisik', 1, 9, 'Abstrak'),
(443, 'atmosfer', 1, 9, 'Abstrak'),
(444, 'tertentu', 2, 9, 'Abstrak'),
(445, 'perubahannya', 1, 9, 'Abstrak'),
(446, 'jangka', 1, 9, 'Abstrak'),
(447, 'pendek', 1, 9, 'Abstrak'),
(448, 'disuatu', 1, 9, 'Abstrak'),
(449, 'dibumi', 1, 9, 'Abstrak'),
(450, 'mengklasifikasikan', 1, 9, 'Abstrak'),
(451, 'bumi', 1, 9, 'Abstrak'),
(452, 'macam', 1, 9, 'Abstrak'),
(453, 'algortima', 1, 9, 'Abstrak'),
(454, 'satunya', 1, 9, 'Abstrak'),
(455, 'manchine', 2, 9, 'Abstrak'),
(456, 'boltzman', 2, 9, 'Abstrak'),
(457, 'klasifikasi', 2, 9, 'Abstrak'),
(458, 'penelitian', 3, 9, 'Abstrak'),
(459, 'dimana', 1, 9, 'Abstrak'),
(460, 'citra', 3, 9, 'Abstrak'),
(461, 'cerah', 2, 9, 'Abstrak'),
(462, 'mendung', 2, 9, 'Abstrak'),
(463, 'hujan', 2, 9, 'Abstrak'),
(464, 'inputan', 2, 9, 'Abstrak'),
(465, 'menggunkan', 1, 9, 'Abstrak'),
(466, 'metode', 1, 9, 'Abstrak'),
(467, 'keluaran', 1, 9, 'Abstrak'),
(468, 'sistem', 1, 9, 'Abstrak'),
(469, 'penentuan', 1, 9, 'Abstrak'),
(470, 'tergolong', 1, 9, 'Abstrak'),
(471, 'golongan', 1, 9, 'Abstrak'),
(472, 'akurasian', 1, 9, 'Abstrak'),
(473, 'sistem', 6, 10, 'Abstrak'),
(474, 'pengelolaan', 1, 10, 'Abstrak'),
(475, 'dokumen', 9, 10, 'Abstrak'),
(476, 'plagiarisme', 1, 10, 'Abstrak'),
(477, 'manual', 1, 10, 'Abstrak'),
(478, 'mengecek', 1, 10, 'Abstrak'),
(479, 'persatu', 1, 10, 'Abstrak'),
(480, 'membutuhkan', 1, 10, 'Abstrak'),
(481, 'efektif', 2, 10, 'Abstrak'),
(482, 'algoritma', 2, 10, 'Abstrak'),
(483, 'weight', 2, 10, 'Abstrak'),
(484, 'tree', 2, 10, 'Abstrak'),
(485, 'metode', 2, 10, 'Abstrak'),
(486, 'melakukan klasifikasi kemiripan', 1, 10, 'Abstrak'),
(487, 'bobot', 1, 10, 'Abstrak'),
(488, 'menghitung', 1, 10, 'Abstrak'),
(489, 'kemiripannya', 1, 10, 'Abstrak'),
(490, 'penelitian', 1, 10, 'Abstrak'),
(491, 'pengujian', 3, 10, 'Abstrak'),
(492, 'diklasifikasikan', 1, 10, 'Abstrak'),
(493, 'kategorinya', 1, 10, 'Abstrak'),
(494, 'pendeteksian', 1, 10, 'Abstrak'),
(495, 'pengetesan', 1, 10, 'Abstrak'),
(496, 'kemiripan', 4, 10, 'Abstrak'),
(497, 'akurat', 1, 10, 'Abstrak'),
(498, 'menentukan', 1, 10, 'Abstrak'),
(499, 'diuji', 1, 10, 'Abstrak'),
(500, 'plagiat', 2, 10, 'Abstrak'),
(501, 'didapatkan', 1, 10, 'Abstrak'),
(502, 'persentase', 3, 10, 'Abstrak'),
(503, 'mengkategorikan', 1, 10, 'Abstrak'),
(504, 'nilai', 1, 10, 'Abstrak'),
(505, 'rata', 2, 10, 'Abstrak'),
(506, 'dibangun', 1, 10, 'Abstrak'),
(507, 'sempurna', 1, 10, 'Abstrak'),
(508, 'keakuratan', 1, 10, 'Abstrak'),
(509, 'diharapkan', 1, 10, 'Abstrak'),
(510, 'mudah', 1, 10, 'Abstrak'),
(511, 'cepat', 1, 10, 'Abstrak'),
(512, 'pengenalan', 9, 11, 'Abstrak'),
(513, 'karakter', 5, 11, 'Abstrak'),
(514, 'studi', 2, 11, 'Abstrak'),
(515, 'pola', 7, 11, 'Abstrak'),
(516, 'objek', 1, 11, 'Abstrak'),
(517, 'satunya', 1, 11, 'Abstrak'),
(518, 'huruf', 8, 11, 'Abstrak'),
(519, 'jawa', 3, 11, 'Abstrak'),
(520, 'kompleks', 1, 11, 'Abstrak'),
(521, 'dibandingkan', 1, 11, 'Abstrak'),
(522, 'romawi', 1, 11, 'Abstrak'),
(523, 'tugas', 1, 11, 'Abstrak'),
(524, 'dikembangkan', 1, 11, 'Abstrak'),
(525, 'sistem', 3, 11, 'Abstrak'),
(526, 'penulisan', 1, 11, 'Abstrak'),
(527, 'aksara', 2, 11, 'Abstrak'),
(528, 'dibangun', 1, 11, 'Abstrak'),
(529, 'bahasa', 1, 11, 'Abstrak'),
(530, 'pemograman', 1, 11, 'Abstrak'),
(531, 'delphi', 1, 11, 'Abstrak'),
(532, 'xe', 1, 11, 'Abstrak'),
(533, 'metode', 1, 11, 'Abstrak'),
(534, 'machine', 1, 11, 'Abstrak'),
(535, 'boltzmann', 1, 11, 'Abstrak'),
(536, 'diawali', 1, 11, 'Abstrak'),
(537, 'ekstensi', 1, 11, 'Abstrak'),
(538, 'file', 1, 11, 'Abstrak'),
(539, 'bmp', 1, 11, 'Abstrak'),
(540, 'persentase', 1, 11, 'Abstrak'),
(541, 'keakuratan', 2, 11, 'Abstrak'),
(542, 'penelitian', 2, 11, 'Abstrak'),
(543, 'data', 1, 11, 'Abstrak'),
(544, 'pengujian', 1, 11, 'Abstrak'),
(545, 'kekuratan', 1, 11, 'Abstrak'),
(546, 'ditentukan', 1, 11, 'Abstrak'),
(547, 'pelatihan', 1, 11, 'Abstrak'),
(548, 'pendekatan', 2, 11, 'Abstrak'),
(549, 'statistik', 1, 11, 'Abstrak'),
(550, 'dimana', 1, 11, 'Abstrak'),
(551, 'training', 1, 11, 'Abstrak'),
(552, 'disimpan', 1, 11, 'Abstrak'),
(553, 'acuan', 1, 11, 'Abstrak'),
(554, 'cerdas', 1, 11, 'Abstrak'),
(555, 'pengolahan', 2, 12, 'Abstrak'),
(556, 'suara', 4, 12, 'Abstrak'),
(557, 'konsep', 1, 12, 'Abstrak'),
(558, 'sistem', 1, 12, 'Abstrak'),
(559, 'membutuhkan', 1, 12, 'Abstrak'),
(560, 'interaksi', 1, 12, 'Abstrak'),
(561, 'manusia', 1, 12, 'Abstrak'),
(562, 'sehari', 1, 12, 'Abstrak'),
(563, 'dikategorikan', 1, 12, 'Abstrak'),
(564, 'isolated', 1, 12, 'Abstrak'),
(565, 'words', 2, 12, 'Abstrak'),
(566, 'connected', 1, 12, 'Abstrak'),
(567, 'continuous', 1, 12, 'Abstrak'),
(568, 'speech', 2, 12, 'Abstrak'),
(569, 'spontaneous', 1, 12, 'Abstrak'),
(570, 'mentransformasikan', 1, 12, 'Abstrak'),
(571, 'sinyal', 2, 12, 'Abstrak'),
(572, 'frekuensi', 1, 12, 'Abstrak'),
(573, 'format', 1, 12, 'Abstrak'),
(574, 'wav', 1, 12, 'Abstrak'),
(575, 'diperlukan', 1, 12, 'Abstrak'),
(576, 'transformasi', 8, 12, 'Abstrak'),
(577, 'meminimalkan', 1, 12, 'Abstrak'),
(578, 'transfromasi', 1, 12, 'Abstrak'),
(579, 'discrete', 4, 12, 'Abstrak'),
(580, 'sine', 2, 12, 'Abstrak'),
(581, 'transform', 4, 12, 'Abstrak'),
(582, 'dst', 5, 12, 'Abstrak'),
(583, 'cosine', 2, 12, 'Abstrak'),
(584, 'dct', 5, 12, 'Abstrak'),
(585, 'bantuan', 1, 12, 'Abstrak'),
(586, 'software', 1, 12, 'Abstrak'),
(587, 'borland', 1, 12, 'Abstrak'),
(588, 'delphi', 1, 12, 'Abstrak'),
(589, 'mengenali', 1, 12, 'Abstrak'),
(590, 'huruf', 1, 12, 'Abstrak'),
(591, 'morse', 1, 12, 'Abstrak'),
(592, 'penelitian', 2, 12, 'Abstrak'),
(593, 'penbandingan', 1, 12, 'Abstrak'),
(594, 'unjuk', 1, 12, 'Abstrak'),
(595, 'masing', 2, 12, 'Abstrak'),
(596, 'diperoleh', 1, 12, 'Abstrak'),
(597, 'true', 1, 12, 'Abstrak'),
(598, 'detection', 2, 12, 'Abstrak'),
(599, 'diproleh', 1, 12, 'Abstrak'),
(600, 'sample', 1, 12, 'Abstrak'),
(601, 'false', 1, 12, 'Abstrak'),
(602, 'disimpulkan', 1, 12, 'Abstrak'),
(603, 'efesien', 1, 12, 'Abstrak'),
(604, 'keakuratannya', 1, 12, 'Abstrak'),
(605, 'penelitian', 2, 13, 'Abstrak'),
(606, 'membahas', 1, 13, 'Abstrak'),
(607, 'implementasi', 2, 13, 'Abstrak'),
(608, 'persoalan', 1, 13, 'Abstrak'),
(609, 'menentukan', 1, 13, 'Abstrak'),
(610, 'rute', 3, 13, 'Abstrak'),
(611, 'terpendek', 4, 13, 'Abstrak'),
(612, 'pendistribusian', 2, 13, 'Abstrak'),
(613, 'pupuk', 4, 13, 'Abstrak'),
(614, 'pt', 1, 13, 'Abstrak'),
(615, 'iskandar', 1, 13, 'Abstrak'),
(616, 'muda', 1, 13, 'Abstrak'),
(617, 'berbasis', 1, 13, 'Abstrak'),
(618, 'web', 1, 13, 'Abstrak'),
(619, 'algoritma', 6, 13, 'Abstrak'),
(620, 'floyd', 3, 13, 'Abstrak'),
(621, 'warshall', 3, 13, 'Abstrak'),
(622, 'djikstra', 3, 13, 'Abstrak'),
(623, 'ditekankan', 1, 13, 'Abstrak'),
(624, 'pencarian', 1, 13, 'Abstrak'),
(625, 'jalur', 2, 13, 'Abstrak'),
(626, 'dimana', 1, 13, 'Abstrak'),
(627, 'diharapkan', 1, 13, 'Abstrak'),
(628, 'menyelesaikan', 1, 13, 'Abstrak'),
(629, 'keterlambatan', 1, 13, 'Abstrak'),
(630, 'pendistrian', 1, 13, 'Abstrak'),
(631, 'wilayah', 1, 13, 'Abstrak'),
(632, 'aceh', 3, 13, 'Abstrak'),
(633, 'disini', 1, 13, 'Abstrak'),
(634, 'menampilkan', 1, 13, 'Abstrak'),
(635, 'dilalui', 2, 13, 'Abstrak'),
(636, 'contoh', 1, 13, 'Abstrak'),
(637, 'kasus', 1, 13, 'Abstrak'),
(638, 'perhitungan', 1, 13, 'Abstrak'),
(639, 'manual', 1, 13, 'Abstrak'),
(640, 'kota', 2, 13, 'Abstrak'),
(641, 'banda', 2, 13, 'Abstrak'),
(642, 'tujuan', 1, 13, 'Abstrak'),
(643, 'lhokseumawe', 2, 13, 'Abstrak'),
(644, 'total', 1, 13, 'Abstrak'),
(645, 'jarak', 1, 13, 'Abstrak'),
(646, 'km', 1, 13, 'Abstrak'),
(647, 'sigli', 1, 13, 'Abstrak'),
(648, 'bireun', 1, 13, 'Abstrak'),
(649, 'pengenalan', 6, 14, 'Abstrak'),
(650, 'suara', 4, 14, 'Abstrak'),
(651, 'speech', 3, 14, 'Abstrak'),
(652, 'recognition', 3, 14, 'Abstrak'),
(653, 'mengenali', 1, 14, 'Abstrak'),
(654, 'huruf', 1, 14, 'Abstrak'),
(655, 'kalimat', 1, 14, 'Abstrak'),
(656, 'diucapkan', 1, 14, 'Abstrak'),
(657, 'dikenal', 1, 14, 'Abstrak'),
(658, 'istilah', 1, 14, 'Abstrak'),
(659, 'automatic', 1, 14, 'Abstrak'),
(660, 'computer', 1, 14, 'Abstrak'),
(661, 'tugas', 1, 14, 'Abstrak'),
(662, 'dikembangkan', 1, 14, 'Abstrak'),
(663, 'sistem', 6, 14, 'Abstrak'),
(664, 'ayat', 3, 14, 'Abstrak'),
(665, 'al', 3, 14, 'Abstrak'),
(666, 'quran', 2, 14, 'Abstrak'),
(667, 'surat', 3, 14, 'Abstrak'),
(668, 'ad', 3, 14, 'Abstrak'),
(669, 'dhuha', 3, 14, 'Abstrak'),
(670, 'dibangun', 1, 14, 'Abstrak'),
(671, 'bahasa', 1, 14, 'Abstrak'),
(672, 'pemograman', 1, 14, 'Abstrak'),
(673, 'delphi', 1, 14, 'Abstrak'),
(674, 'xe', 1, 14, 'Abstrak'),
(675, 'z', 1, 14, 'Abstrak'),
(676, 'transform', 1, 14, 'Abstrak'),
(677, 'diawali', 1, 14, 'Abstrak'),
(678, 'ekstensi', 1, 14, 'Abstrak'),
(679, 'file', 1, 14, 'Abstrak'),
(680, 'wav', 1, 14, 'Abstrak'),
(681, 'mentransformasikan', 1, 14, 'Abstrak'),
(682, 'sinyal', 2, 14, 'Abstrak'),
(683, 'frekuensi', 1, 14, 'Abstrak'),
(684, 'penelitian', 1, 14, 'Abstrak'),
(685, 'keakuratan', 1, 14, 'Abstrak'),
(686, 'qur’an', 1, 14, 'Abstrak'),
(687, 'berkisar', 1, 14, 'Abstrak'),
(688, 'pendekatan', 2, 14, 'Abstrak'),
(689, 'statistik', 1, 14, 'Abstrak'),
(690, 'dimana', 1, 14, 'Abstrak'),
(691, 'sampel', 1, 14, 'Abstrak'),
(692, 'pelatihan', 1, 14, 'Abstrak'),
(693, 'disimpan', 1, 14, 'Abstrak'),
(694, 'acuan', 1, 14, 'Abstrak'),
(695, 'cerdas', 1, 14, 'Abstrak'),
(696, 'masyarakat', 1, 15, 'Abstrak'),
(697, 'pembuatan', 2, 15, 'Abstrak'),
(698, 'beton', 9, 15, 'Abstrak'),
(699, 'mengabaikan', 1, 15, 'Abstrak'),
(700, 'kekuatan', 1, 15, 'Abstrak'),
(701, 'menghiraukan', 1, 15, 'Abstrak'),
(702, 'kontruksi', 1, 15, 'Abstrak'),
(703, 'dianjurkan', 1, 15, 'Abstrak'),
(704, 'alhasil', 1, 15, 'Abstrak'),
(705, 'bangunan', 2, 15, 'Abstrak'),
(706, 'dibangunan', 1, 15, 'Abstrak'),
(707, 'mudah', 1, 15, 'Abstrak'),
(708, 'hancur', 1, 15, 'Abstrak'),
(709, 'gempa', 1, 15, 'Abstrak'),
(710, 'sebagainya', 1, 15, 'Abstrak'),
(711, 'metode', 2, 15, 'Abstrak'),
(712, 'electre', 1, 15, 'Abstrak'),
(713, 'pengambilan', 1, 15, 'Abstrak'),
(714, 'multikriteria', 1, 15, 'Abstrak'),
(715, 'konsep', 1, 15, 'Abstrak'),
(716, 'outranking', 1, 15, 'Abstrak'),
(717, 'perbandingan', 1, 15, 'Abstrak'),
(718, 'perpasangan', 1, 15, 'Abstrak'),
(719, 'altrnatif', 1, 15, 'Abstrak'),
(720, 'alternatif', 2, 15, 'Abstrak'),
(721, 'kriteria', 2, 15, 'Abstrak'),
(722, 'peroleh', 1, 15, 'Abstrak'),
(723, 'penginputan', 1, 15, 'Abstrak'),
(724, 'nilai', 2, 15, 'Abstrak'),
(725, 'bertulang', 1, 15, 'Abstrak'),
(726, 'pracetak', 1, 15, 'Abstrak'),
(727, 'ringan', 1, 15, 'Abstrak'),
(728, 'aplikasi', 1, 16, 'Judul'),
(729, 'permainan', 1, 16, 'Judul'),
(730, 'lawan', 1, 16, 'Judul'),
(731, 'algoritma', 1, 16, 'Judul'),
(732, 'depth', 1, 16, 'Judul'),
(733, 'search', 1, 16, 'Judul'),
(743, 'aplikasi', 1, 17, 'Judul'),
(744, 'kuis', 1, 17, 'Judul'),
(745, 'pengetahuan', 1, 17, 'Judul'),
(746, 'berbasis', 1, 17, 'Judul'),
(747, 'web', 1, 17, 'Judul'),
(748, 'metode', 1, 17, 'Judul'),
(749, 'linear', 1, 17, 'Judul'),
(750, 'congruential', 1, 17, 'Judul'),
(751, 'generators', 1, 17, 'Judul');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kata_uji`
--

CREATE TABLE `tbl_kata_uji` (
  `kata_id` int(11) NOT NULL,
  `kata` varchar(255) NOT NULL,
  `kata_frekuensi` int(11) NOT NULL,
  `uji_id` int(11) NOT NULL,
  `uji_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kata_uji`
--

INSERT INTO `tbl_kata_uji` (`kata_id`, `kata`, `kata_frekuensi`, `uji_id`, `uji_category`) VALUES
(1, 'pengetahuan', 5, 1, 'Abstrak'),
(2, 'aspek', 1, 1, 'Abstrak'),
(3, 'terpenting', 1, 1, 'Abstrak'),
(4, 'pendidikan', 5, 1, 'Abstrak'),
(5, 'dibutuhkan', 1, 1, 'Abstrak'),
(6, 'masyarakat', 1, 1, 'Abstrak'),
(7, 'ilmu', 2, 1, 'Abstrak'),
(8, 'formal', 3, 1, 'Abstrak'),
(9, 'nonformal', 3, 1, 'Abstrak'),
(10, 'media', 2, 1, 'Abstrak'),
(11, 'jumpai', 1, 1, 'Abstrak'),
(12, 'sekolah', 1, 1, 'Abstrak'),
(13, 'perguruan', 1, 1, 'Abstrak'),
(14, 'lembaga', 2, 1, 'Abstrak'),
(15, 'pelatihan', 1, 1, 'Abstrak'),
(16, 'internet', 3, 1, 'Abstrak'),
(17, 'mendukung', 1, 1, 'Abstrak'),
(18, 'meningkatnya', 1, 1, 'Abstrak'),
(19, 'pengguna', 3, 1, 'Abstrak'),
(20, 'indonesia', 1, 1, 'Abstrak'),
(21, 'pemilik', 1, 1, 'Abstrak'),
(22, 'website', 4, 1, 'Abstrak'),
(23, 'ataupun', 3, 1, 'Abstrak'),
(24, 'blog', 3, 1, 'Abstrak'),
(25, 'memanfaatkan', 2, 1, 'Abstrak'),
(26, 'menyediakan', 2, 1, 'Abstrak'),
(27, 'informasi', 2, 1, 'Abstrak'),
(28, 'referensi', 1, 1, 'Abstrak'),
(29, 'pembelajaran', 2, 1, 'Abstrak'),
(30, 'hiburan', 4, 1, 'Abstrak'),
(31, 'pengunjung', 4, 1, 'Abstrak'),
(32, 'situs', 1, 1, 'Abstrak'),
(33, 'perkembangan', 1, 1, 'Abstrak'),
(34, 'teknologi', 1, 1, 'Abstrak'),
(35, 'bermanfaat', 2, 1, 'Abstrak'),
(36, 'satunya', 2, 1, 'Abstrak'),
(37, 'aplikasi', 2, 1, 'Abstrak'),
(38, 'game', 2, 1, 'Abstrak'),
(39, 'berbasis', 2, 1, 'Abstrak'),
(40, 'web', 2, 1, 'Abstrak'),
(41, 'tentunya', 1, 1, 'Abstrak'),
(42, 'mengunjungi', 2, 1, 'Abstrak'),
(43, 'menguji', 1, 1, 'Abstrak'),
(44, 'disaat', 1, 1, 'Abstrak'),
(45, 'soal', 1, 1, 'Abstrak'),
(46, 'pertanyaan', 1, 1, 'Abstrak'),
(47, 'diajukan', 1, 1, 'Abstrak'),
(48, 'acak', 1, 1, 'Abstrak'),
(49, 'metode', 2, 1, 'Abstrak'),
(50, 'mengacak', 1, 1, 'Abstrak'),
(51, 'linear', 1, 1, 'Abstrak'),
(52, 'congruential', 1, 1, 'Abstrak'),
(53, 'generators', 1, 1, 'Abstrak'),
(54, 'lcg', 1, 1, 'Abstrak'),
(55, 'kuis', 1, 1, 'Abstrak'),
(56, 'berupa', 1, 1, 'Abstrak'),
(57, 'kunci', 1, 1, 'Abstrak'),
(58, 'jawaban', 1, 1, 'Abstrak'),
(59, 'nilai', 1, 1, 'Abstrak'),
(60, 'pemain', 1, 1, 'Abstrak'),
(61, 'cuaca', 6, 2, 'Abstrak'),
(62, 'peristiwa', 1, 2, 'Abstrak'),
(63, 'fisik', 1, 2, 'Abstrak'),
(64, 'atmosfer', 1, 2, 'Abstrak'),
(65, 'tertentu', 2, 2, 'Abstrak'),
(66, 'perubahannya', 1, 2, 'Abstrak'),
(67, 'jangka', 1, 2, 'Abstrak'),
(68, 'pendek', 1, 2, 'Abstrak'),
(69, 'disuatu', 1, 2, 'Abstrak'),
(70, 'dibumi', 1, 2, 'Abstrak'),
(71, 'mengklasifikasikan', 1, 2, 'Abstrak'),
(72, 'bumi', 1, 2, 'Abstrak'),
(73, 'macam', 1, 2, 'Abstrak'),
(74, 'algortima', 1, 2, 'Abstrak'),
(75, 'satunya', 1, 2, 'Abstrak'),
(76, 'manchine', 2, 2, 'Abstrak'),
(77, 'boltzman', 2, 2, 'Abstrak'),
(78, 'klasifikasi', 2, 2, 'Abstrak'),
(79, 'penelitian', 3, 2, 'Abstrak'),
(80, 'dimana', 1, 2, 'Abstrak'),
(81, 'citra', 3, 2, 'Abstrak'),
(82, 'cerah', 2, 2, 'Abstrak'),
(83, 'mendung', 2, 2, 'Abstrak'),
(84, 'hujan', 2, 2, 'Abstrak'),
(85, 'inputan', 2, 2, 'Abstrak'),
(86, 'menggunkan', 1, 2, 'Abstrak'),
(87, 'metode', 1, 2, 'Abstrak'),
(88, 'keluaran', 1, 2, 'Abstrak'),
(89, 'sistem', 1, 2, 'Abstrak'),
(90, 'penentuan', 1, 2, 'Abstrak'),
(91, 'tergolong', 1, 2, 'Abstrak'),
(92, 'golongan', 1, 2, 'Abstrak'),
(93, 'akurasian', 1, 2, 'Abstrak'),
(94, 'aplikasi', 1, 3, 'Judul'),
(95, 'permainan', 1, 3, 'Judul'),
(96, 'lawan', 1, 3, 'Judul'),
(97, 'algoritma', 1, 3, 'Judul'),
(98, 'depth', 1, 3, 'Judul'),
(99, 'search', 1, 3, 'Judul'),
(100, 'aplikasi', 1, 4, 'Judul'),
(101, 'kuis', 1, 4, 'Judul'),
(102, 'pengetahuan', 1, 4, 'Judul'),
(103, 'berbasis', 1, 4, 'Judul'),
(104, 'web', 1, 4, 'Judul'),
(105, 'metode', 1, 4, 'Judul'),
(106, 'linear', 1, 4, 'Judul'),
(107, 'congruential', 1, 4, 'Judul'),
(108, 'generators', 1, 4, 'Judul');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `h_pengguna` varchar(255) NOT NULL,
  `h_tanggal` date NOT NULL,
  `h_waktu` time NOT NULL,
  `h_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `h_pengguna`, `h_tanggal`, `h_waktu`, `h_ip`) VALUES
(1, 'GIS', 'intan', '2020-12-31', '14:53:25', '::1'),
(2, 'Kecerdasan Buatan', 'intan', '2020-12-31', '14:53:36', '::1'),
(3, 'Pengolahan Citra', 'intan', '2020-12-31', '14:53:48', '::1'),
(4, 'Data Mining', 'intan', '2020-12-31', '14:54:01', '::1'),
(5, 'SPK', 'intan', '2020-12-31', '14:54:09', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_panjang_vektor`
--

CREATE TABLE `tbl_panjang_vektor` (
  `vektor_id` int(11) NOT NULL,
  `vektor_kata` varchar(255) NOT NULL,
  `vektor_nilai` double NOT NULL,
  `vektor_data` int(11) NOT NULL,
  `vektor_category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_panjang_vektor`
--

INSERT INTO `tbl_panjang_vektor` (`vektor_id`, `vektor_kata`, `vektor_nilai`, `vektor_data`, `vektor_category`) VALUES
(1, 'aplikasi', 0, 3, 'uji'),
(2, 'aplikasi', 0, 16, 'latih'),
(3, 'aplikasi', 0, 17, 'latih'),
(4, 'permainan', 0.031008131515815, 3, 'uji'),
(5, 'permainan', 0.031008131515815, 16, 'latih'),
(6, 'lawan', 0.031008131515815, 3, 'uji'),
(7, 'lawan', 0.031008131515815, 16, 'latih'),
(8, 'algoritma', 0.031008131515815, 3, 'uji'),
(9, 'algoritma', 0.031008131515815, 16, 'latih'),
(10, 'depth', 0.031008131515815, 3, 'uji'),
(11, 'depth', 0.031008131515815, 16, 'latih'),
(12, 'search', 0.031008131515815, 3, 'uji'),
(13, 'search', 0.031008131515815, 16, 'latih'),
(14, 'kuis', 0, 3, 'uji'),
(15, 'kuis', 0.22764469170526, 17, 'latih'),
(16, 'pengetahuan', 0, 3, 'uji'),
(17, 'pengetahuan', 0.22764469170526, 17, 'latih'),
(18, 'berbasis', 0, 3, 'uji'),
(19, 'berbasis', 0.22764469170526, 17, 'latih'),
(20, 'web', 0, 3, 'uji'),
(21, 'web', 0.22764469170526, 17, 'latih'),
(22, 'metode', 0, 3, 'uji'),
(23, 'metode', 0.22764469170526, 17, 'latih'),
(24, 'linear', 0, 3, 'uji'),
(25, 'linear', 0.22764469170526, 17, 'latih'),
(26, 'congruential', 0, 3, 'uji'),
(27, 'congruential', 0.22764469170526, 17, 'latih'),
(28, 'generators', 0, 3, 'uji'),
(29, 'generators', 0.22764469170526, 17, 'latih');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `user_email` varchar(225) NOT NULL,
  `user_login` varchar(225) NOT NULL,
  `user_pass` varchar(225) NOT NULL,
  `user_level` int(11) NOT NULL,
  `user_status` varchar(20) NOT NULL,
  `h_pengguna` varchar(100) NOT NULL,
  `h_tanggal` date NOT NULL,
  `h_waktu` time NOT NULL,
  `h_lokasi` varchar(250) NOT NULL,
  `h_ip` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_name`, `user_email`, `user_login`, `user_pass`, `user_level`, `user_status`, `h_pengguna`, `h_tanggal`, `h_waktu`, `h_lokasi`, `h_ip`) VALUES
(1, 'Intan Rahmi', 'intan.160170043@mhs.unimal.ac.id', 'intan', '2b5e148f18eb011f5863b6b171a66a41', 1, 'Aktif', '', '0000-00-00', '00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wds`
--

CREATE TABLE `tbl_wds` (
  `wds_id` int(11) NOT NULL,
  `wds_kata` varchar(255) NOT NULL,
  `wds_data` int(50) NOT NULL,
  `wds_nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wds`
--

INSERT INTO `tbl_wds` (`wds_id`, `wds_kata`, `wds_data`, `wds_nilai`) VALUES
(1, 'aplikasi', 16, 0),
(2, 'aplikasi', 17, 0),
(3, 'permainan', 16, 0.031008131515815),
(4, 'lawan', 16, 0.031008131515815),
(5, 'algoritma', 16, 0.031008131515815),
(6, 'depth', 16, 0.031008131515815),
(7, 'search', 16, 0.031008131515815),
(8, 'kuis', 17, 0),
(9, 'pengetahuan', 17, 0),
(10, 'berbasis', 17, 0),
(11, 'web', 17, 0),
(12, 'metode', 17, 0),
(13, 'linear', 17, 0),
(14, 'congruential', 17, 0),
(15, 'generators', 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wdt`
--

CREATE TABLE `tbl_wdt` (
  `wdt_id` int(11) NOT NULL,
  `wdt_kata` varchar(255) NOT NULL,
  `wdt_data` int(30) NOT NULL,
  `wdt_nilai` double NOT NULL,
  `wdt_category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wdt`
--

INSERT INTO `tbl_wdt` (`wdt_id`, `wdt_kata`, `wdt_data`, `wdt_nilai`, `wdt_category`) VALUES
(1, 'aplikasi', 3, 0, 'uji'),
(2, 'aplikasi', 16, 0, 'latih'),
(3, 'aplikasi', 17, 0, 'latih'),
(4, 'permainan', 3, 0.17609125905568, 'uji'),
(5, 'permainan', 16, 0.17609125905568, 'latih'),
(6, 'lawan', 3, 0.17609125905568, 'uji'),
(7, 'lawan', 16, 0.17609125905568, 'latih'),
(8, 'algoritma', 3, 0.17609125905568, 'uji'),
(9, 'algoritma', 16, 0.17609125905568, 'latih'),
(10, 'depth', 3, 0.17609125905568, 'uji'),
(11, 'depth', 16, 0.17609125905568, 'latih'),
(12, 'search', 3, 0.17609125905568, 'uji'),
(13, 'search', 16, 0.17609125905568, 'latih'),
(14, 'kuis', 3, 0, 'uji'),
(15, 'kuis', 17, 0.47712125471966, 'latih'),
(16, 'pengetahuan', 3, 0, 'uji'),
(17, 'pengetahuan', 17, 0.47712125471966, 'latih'),
(18, 'berbasis', 3, 0, 'uji'),
(19, 'berbasis', 17, 0.47712125471966, 'latih'),
(20, 'web', 3, 0, 'uji'),
(21, 'web', 17, 0.47712125471966, 'latih'),
(22, 'metode', 3, 0, 'uji'),
(23, 'metode', 17, 0.47712125471966, 'latih'),
(24, 'linear', 3, 0, 'uji'),
(25, 'linear', 17, 0.47712125471966, 'latih'),
(26, 'congruential', 3, 0, 'uji'),
(27, 'congruential', 17, 0.47712125471966, 'latih'),
(28, 'generators', 3, 0, 'uji'),
(29, 'generators', 17, 0.47712125471966, 'latih');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data_latih`
--
ALTER TABLE `tbl_data_latih`
  ADD PRIMARY KEY (`latih_id`);

--
-- Indexes for table `tbl_data_uji`
--
ALTER TABLE `tbl_data_uji`
  ADD PRIMARY KEY (`uji_id`);

--
-- Indexes for table `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  ADD PRIMARY KEY (`hasil_id`);

--
-- Indexes for table `tbl_kata_latih`
--
ALTER TABLE `tbl_kata_latih`
  ADD PRIMARY KEY (`kata_id`);

--
-- Indexes for table `tbl_kata_uji`
--
ALTER TABLE `tbl_kata_uji`
  ADD PRIMARY KEY (`kata_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_panjang_vektor`
--
ALTER TABLE `tbl_panjang_vektor`
  ADD PRIMARY KEY (`vektor_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_wds`
--
ALTER TABLE `tbl_wds`
  ADD PRIMARY KEY (`wds_id`);

--
-- Indexes for table `tbl_wdt`
--
ALTER TABLE `tbl_wdt`
  ADD PRIMARY KEY (`wdt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  MODIFY `hasil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_kata_latih`
--
ALTER TABLE `tbl_kata_latih`
  MODIFY `kata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT for table `tbl_kata_uji`
--
ALTER TABLE `tbl_kata_uji`
  MODIFY `kata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_panjang_vektor`
--
ALTER TABLE `tbl_panjang_vektor`
  MODIFY `vektor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_wds`
--
ALTER TABLE `tbl_wds`
  MODIFY `wds_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_wdt`
--
ALTER TABLE `tbl_wdt`
  MODIFY `wdt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
