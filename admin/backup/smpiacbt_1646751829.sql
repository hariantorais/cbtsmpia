
/*---------------------------------------------------------------
  SQL DB BACKUP 08.03.2022 23:03 
  HOST: localhost
  DATABASE: ecandy28r3
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `berita`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `file_pendukung`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `file_pendukung`;
CREATE TABLE `file_pendukung` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban`;
CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `jawaban_tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban_tugas`;
CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `jenis`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `jenis` VALUES   ('PTS','Penilaian Tengah Semester','tidak');
INSERT INTO `jenis` VALUES ('USBK','Ujian Sekolah','aktif');

/*---------------------------------------------------------------
  TABLE: `jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `jurusan_id` varchar(25) NOT NULL,
  `nama_jurusan_sp` varchar(100) DEFAULT NULL,
  `kurikulum` varchar(120) DEFAULT NULL,
  `jurusan_sp_id` varchar(50) DEFAULT NULL,
  `kurikulum_id` varchar(20) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('IXC','IX','IXC',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIA','IX','XIA',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIB','IX','XIB',NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `level`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `level` VALUES   ('IX','IX',NULL);

/*---------------------------------------------------------------
  TABLE: `log`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
INSERT INTO `log` VALUES   ('1','3','login','masuk','2020-04-12 07:58:45');
INSERT INTO `log` VALUES ('2','3','testongoing','sedang ujian','2020-04-12 07:58:56');
INSERT INTO `log` VALUES ('3','3','login','Selesai Ujian','2020-04-12 08:00:07');
INSERT INTO `log` VALUES ('4','3','testongoing','sedang ujian','2020-04-12 08:00:35');
INSERT INTO `log` VALUES ('5','3','login','Selesai Ujian','2020-04-12 08:03:43');
INSERT INTO `log` VALUES ('6','3','login','Selesai Ujian','2020-04-12 08:03:43');
INSERT INTO `log` VALUES ('7','3','login','Selesai Ujian','2020-04-12 08:03:43');
INSERT INTO `log` VALUES ('8','3','login','Selesai Ujian','2020-04-12 08:03:43');
INSERT INTO `log` VALUES ('9','3','login','Selesai Ujian','2020-04-12 08:03:43');
INSERT INTO `log` VALUES ('10','3','login','Selesai Ujian','2020-04-12 08:03:43');
INSERT INTO `log` VALUES ('11','3','login','Selesai Ujian','2020-04-12 08:03:43');
INSERT INTO `log` VALUES ('12','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('13','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('14','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('15','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('16','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('17','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('18','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('19','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('20','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('21','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('22','3','login','Selesai Ujian','2020-04-12 08:03:44');
INSERT INTO `log` VALUES ('23','3','login','Selesai Ujian','2020-04-12 08:03:45');
INSERT INTO `log` VALUES ('24','3','login','Selesai Ujian','2020-04-12 08:03:45');
INSERT INTO `log` VALUES ('25','3','login','Selesai Ujian','2020-04-12 08:03:45');
INSERT INTO `log` VALUES ('26','3','login','Selesai Ujian','2020-04-12 08:03:45');
INSERT INTO `log` VALUES ('27','3','login','Selesai Ujian','2020-04-12 08:03:45');
INSERT INTO `log` VALUES ('28','3','login','Selesai Ujian','2020-04-12 08:03:45');
INSERT INTO `log` VALUES ('29','3','login','Selesai Ujian','2020-04-12 08:03:45');
INSERT INTO `log` VALUES ('30','3','login','Selesai Ujian','2020-04-12 08:03:45');
INSERT INTO `log` VALUES ('31','3','login','Selesai Ujian','2020-04-12 08:03:45');
INSERT INTO `log` VALUES ('32','3','login','Selesai Ujian','2020-04-12 08:03:45');
INSERT INTO `log` VALUES ('33','3','login','Selesai Ujian','2020-04-12 08:03:46');
INSERT INTO `log` VALUES ('34','3','login','Selesai Ujian','2020-04-12 08:03:46');
INSERT INTO `log` VALUES ('35','3','login','Selesai Ujian','2020-04-12 08:03:46');
INSERT INTO `log` VALUES ('36','3','login','Selesai Ujian','2020-04-12 08:03:46');
INSERT INTO `log` VALUES ('37','3','login','Selesai Ujian','2020-04-12 08:03:46');
INSERT INTO `log` VALUES ('38','3','login','Selesai Ujian','2020-04-12 08:03:46');
INSERT INTO `log` VALUES ('39','3','login','Selesai Ujian','2020-04-12 08:03:46');
INSERT INTO `log` VALUES ('40','3','login','Selesai Ujian','2020-04-12 08:03:46');
INSERT INTO `log` VALUES ('41','3','login','Selesai Ujian','2020-04-12 08:03:46');
INSERT INTO `log` VALUES ('42','3','login','Selesai Ujian','2020-04-12 08:03:46');
INSERT INTO `log` VALUES ('43','3','login','Selesai Ujian','2020-04-12 08:03:47');
INSERT INTO `log` VALUES ('44','3','login','Selesai Ujian','2020-04-12 08:03:47');
INSERT INTO `log` VALUES ('45','3','login','Selesai Ujian','2020-04-12 08:03:47');
INSERT INTO `log` VALUES ('46','3','login','Selesai Ujian','2020-04-12 08:03:47');
INSERT INTO `log` VALUES ('47','3','login','Selesai Ujian','2020-04-12 08:03:47');
INSERT INTO `log` VALUES ('48','3','login','Selesai Ujian','2020-04-12 08:03:47');
INSERT INTO `log` VALUES ('49','3','login','Selesai Ujian','2020-04-12 08:03:47');
INSERT INTO `log` VALUES ('50','3','login','Selesai Ujian','2020-04-12 08:03:47');
INSERT INTO `log` VALUES ('51','3','login','Selesai Ujian','2020-04-12 08:03:47');
INSERT INTO `log` VALUES ('52','3','testongoing','sedang ujian','2020-04-12 08:05:34');
INSERT INTO `log` VALUES ('53','3','login','Selesai Ujian','2020-04-12 08:07:56');
INSERT INTO `log` VALUES ('54','4','login','masuk','2020-04-12 11:26:09');
INSERT INTO `log` VALUES ('55','4','testongoing','sedang ujian','2020-04-12 11:27:48');
INSERT INTO `log` VALUES ('56','4','logout','keluar','2020-04-12 11:28:07');
INSERT INTO `log` VALUES ('57','4','login','masuk','2020-04-12 11:28:16');
INSERT INTO `log` VALUES ('58','4','testongoing','sedang ujian','2020-04-12 11:28:22');
INSERT INTO `log` VALUES ('59','4','login','Selesai Ujian','2020-04-12 11:29:49');
INSERT INTO `log` VALUES ('60','4','login','Selesai Ujian','2020-04-12 11:30:26');
INSERT INTO `log` VALUES ('61','4','testongoing','sedang ujian','2020-04-12 11:36:46');
INSERT INTO `log` VALUES ('62','4','testongoing','sedang ujian','2020-04-12 11:37:06');
INSERT INTO `log` VALUES ('63','4','login','Selesai Ujian','2020-04-12 11:39:07');
INSERT INTO `log` VALUES ('64','4','login','Selesai Ujian','2020-04-12 11:39:18');
INSERT INTO `log` VALUES ('65','4','testongoing','sedang ujian','2020-04-12 11:39:56');
INSERT INTO `log` VALUES ('66','4','login','Selesai Ujian','2020-04-12 11:42:17');
INSERT INTO `log` VALUES ('67','1','login','masuk','2022-03-08 12:08:00');
INSERT INTO `log` VALUES ('68','1','testongoing','sedang ujian','2022-03-08 12:37:31');
INSERT INTO `log` VALUES ('69','1','login','Selesai Ujian','2022-03-08 12:39:07');

/*---------------------------------------------------------------
  TABLE: `mapel`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL DEFAULT '0',
  `idpk` varchar(255) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL DEFAULT 0,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL DEFAULT 0,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL DEFAULT 0,
  `level` varchar(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) NOT NULL,
  `kkm` int(3) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
INSERT INTO `mapel` VALUES   ('1','IPA_USBK21','a:1:{i:0;s:5:\"semua\";}','269','IPA','40','0','40','0','100','0','IX','4','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','2022-03-08 16:44:58','1','65','');
INSERT INTO `mapel` VALUES ('2','MATEMATIKA_USBK21','a:1:{i:0;s:5:\"semua\";}','265','IPA','40','0','40','0','100','0','IX','4','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','2022-03-08 16:45:14','1','65','');
INSERT INTO `mapel` VALUES ('3','BINDO_USBK21','a:1:{i:0;s:5:\"semua\";}','282','BIND','50','0','50','0','100','0','IX','4','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','2022-03-08 16:46:39','1','65','');
INSERT INTO `mapel` VALUES ('4','BING_USBK21','a:1:{i:0;s:5:\"semua\";}','270','BING','50','0','50','0','100','0','IX','4','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','2022-03-08 16:47:18','1','65','');
INSERT INTO `mapel` VALUES ('5','PKN_USBK21','a:1:{i:0;s:5:\"semua\";}','277','PKN','50','0','50','0','100','0','IX','4','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','2022-03-08 16:47:56','1','65','');
INSERT INTO `mapel` VALUES ('6','IPS_USBK21','a:1:{i:0;s:5:\"semua\";}','262','IPS','50','0','50','0','100','0','IX','4','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','2022-03-08 16:50:28','1','65','');
INSERT INTO `mapel` VALUES ('7','PENJASKES_USBK21','a:1:{i:0;s:5:\"semua\";}','275','PJOK','50','0','50','0','100','0','IX','4','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','2022-03-08 16:50:04','1','65','');
INSERT INTO `mapel` VALUES ('8','PAI_USBK21','a:1:{i:0;s:5:\"semua\";}','276','PAI','50','0','50','0','100','0','IX','4','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','2022-03-08 16:51:01','1','65','islam');
INSERT INTO `mapel` VALUES ('9','PRAKARYA_USBK21','a:1:{i:0;s:5:\"semua\";}','266','PRKY','50','0','50','0','100','0','IX','4','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','2022-03-08 16:52:01','1','65','');
INSERT INTO `mapel` VALUES ('10','SENIBUDAYA_USBK21','a:1:{i:0;s:5:\"semua\";}','281','SNB','50','0','50','0','100','0','IX','4','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','2022-03-08 16:52:25','1','65','');

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `mata_pelajaran` VALUES   ('BIND','BAHASA INDONESIA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('BING','BAHASA INGGRIS',NULL);
INSERT INTO `mata_pelajaran` VALUES ('IPA','ILMU PENGETAHUAN ALAM',NULL);
INSERT INTO `mata_pelajaran` VALUES ('IPS','ILMU PENGETAHUAN SOSIAL',NULL);
INSERT INTO `mata_pelajaran` VALUES ('MTK','MATEMATIKA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PAI','PENDIDIKAN AGAMA ISLAM',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PJOK','PENDIDIKAN JASMANI DAN OLAHRAGA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PKN','PENDIDIKAN KEWARGANEGARAAN',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PRKY','PRAKARYA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('SNB','SENI BUDAYA',NULL);

/*---------------------------------------------------------------
  TABLE: `materi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `materi`;
CREATE TABLE `materi` (
  `id_materi` int(255) NOT NULL AUTO_INCREMENT,
  `idguru` int(11) NOT NULL DEFAULT 0,
  `id_mapel` int(11) NOT NULL DEFAULT 0,
  `materi` mediumtext DEFAULT '0',
  `judul` varchar(255) NOT NULL DEFAULT '0',
  `file` varchar(255) DEFAULT NULL,
  `tgl` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `nilai`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(10) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `pengawas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengawas`;
CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;
INSERT INTO `pengawas` VALUES   ('1','-','HARIANTO','','ibnurais.abdillah@gmail.com','$2y$10$G/H/ltegPLKHZ9yWznUn2.MtCRXw4zx/zPAkgnndNKONxg593yFee','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('261','-','ADI ISKANDAR, S.Pd.I',NULL,'guru1','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('262','-','Drs. AGUS SAMSUL AFANDI',NULL,'guru2','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('263','-','AHZAR, S.Pd.I',NULL,'guru3','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('264','-','HAERUDIN, S.Pd',NULL,'guru4','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('265','-','HERJAN PANDI KUSNADI, S.Pd',NULL,'guru5','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('266','-','Japarwadi, S.Pd.SD',NULL,'guru6','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('267','-','JUMAWAN, S.Pd',NULL,'guru7','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('268','-','Lalu Miftahudin, S.Pd',NULL,'guru8','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('269','-','Lalu Muhammad Rispan Sugi Saputra, S.Pd',NULL,'guru9','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('270','-','Mahmut Dianto, S.Pd',NULL,'guru10','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('271','-','MISWARI, S.Pd',NULL,'guru11','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('272','-','MOHAMMAD PATIX ARIANGGA, S.Pd',NULL,'guru12','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('273','-','Multazam, S.Pd',NULL,'guru13','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('274','-','SAMIUN ALIM, S.Pd',NULL,'guru14','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('275','-','SANDIKA, S.Pd',NULL,'guru15','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('276','-','SAUFIAN SAURI, S.Pd',NULL,'guru16','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('277','-','SUHENDRI, SH',NULL,'guru17','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('278','-','Syafi\'i',NULL,'guru18','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('279','-','ULIAN TUHIBBI, S.Pd',NULL,'guru19','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('280','-','Wahyudi',NULL,'guru20','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('281','-','YAHYA, S.Pd',NULL,'guru21','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('282','-','YAYAN PUTRA, S.Pd',NULL,'guru22','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
INSERT INTO `pengumuman` VALUES   ('8','eksternal','INFO JADWAL UJIAN','1','<p>Untuk ujian sekolah dilakukan secara daring atau online menggunakan Hp Android, PC, Laptop. Aplikasi ujian diakses dengan browser Google Chrome.</p>','2020-04-04 23:23:29');

/*---------------------------------------------------------------
  TABLE: `pk`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pk`;
CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `referensi_jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `referensi_jurusan`;
CREATE TABLE `referensi_jurusan` (
  `jurusan_id` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `untuk_sma` int(1) NOT NULL,
  `untuk_smk` int(1) NOT NULL,
  `jenjang_pendidikan_id` int(1) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `ruang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `ruang` VALUES   ('R1','R1');

/*---------------------------------------------------------------
  TABLE: `savsoft_options`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_options`;
CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `savsoft_qbank`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_qbank`;
CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `semester`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `periode_aktif` enum('1','0') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `server`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `server` VALUES   ('SR01','SR01','aktif');

/*---------------------------------------------------------------
  TABLE: `sesi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sesi`;
CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `sesi` VALUES   ('1','1');
INSERT INTO `sesi` VALUES ('2','2');
INSERT INTO `sesi` VALUES ('3','3');

/*---------------------------------------------------------------
  TABLE: `session`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `header_kartu` text DEFAULT NULL,
  `nama_ujian` text DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `url_host` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `setting` VALUES   ('1','SMPIA - CBT','0348','<b>SMPIA</b> - CBT','SMP','AHMAD YANI, S.Pd','-','Erot Daya','Aikmel           ','Lombok Timur','','','smp-ia.sch.id','smp.assunnah@gmail.com','dist/img/logo50.png','','KARTU PESERTA','Ujian Sekolah','2.5','Jl. Jurusan Mataram - Lb. Lombok km. 55','Asia/Makassar','pusat','SR01','ujian.smkhsagung.sch.id','VKLuYN7LwjjwuU','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','2.8.1');

/*---------------------------------------------------------------
  TABLE: `sinkron`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sinkron`;
CREATE TABLE `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int(11) DEFAULT NULL,
  PRIMARY KEY (`nama_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `sinkron` VALUES   ('DATA1','siswa','629','2020-04-12 07:53:57','1');
INSERT INTO `sinkron` VALUES ('DATA2','bank soal','33','2020-04-12 08:02:36','1');
INSERT INTO `sinkron` VALUES ('DATA3','soal','880','2020-04-12 08:02:36','1');
INSERT INTO `sinkron` VALUES ('DATA4','jadwal','','','0');

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int(10) DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int(11) DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int(4) DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int(4) DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int(15) DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int(4) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `online` int(1) DEFAULT 0,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
INSERT INTO `siswa` VALUES   ('1','XIA','semua','0056305680','','Abdul Hapis','IX','R1','1','sntr001','ps001','siswa.png','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `siswa` VALUES ('2','XIA','semua','0062834474','','Abdullah','IX','R1','1','sntr002','ps002','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('3','XIA','semua','0079425208','','Abdurrahman Naji','IX','R1','1','sntr003','ps003','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('4','XIA','semua','0066341545','','Abdurrahman Shiddiq','IX','R1','1','sntr004','ps004','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('5','XIA','semua','0068524063','','ABI SURYA','IX','R1','1','sntr005','ps005','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('6','XIA','semua','0066302725','','Ahmad Ammar Azmi','IX','R1','1','sntr006','ps006','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('7','XIA','semua','0063524227','','Ahmad Ziyad Rifqi','IX','R1','1','sntr007','ps007','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('8','XIA','semua','0075730974','','Anwarul Haq','IX','R1','1','sntr008','ps008','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('9','XIA','semua','0075279350','','DIMAS RIZKY PRATAMASYAH','IX','R1','1','sntr009','ps009','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('10','XIA','semua','0074107727','','IHSAN HASRUL AMRIL','IX','R1','1','sntr010','ps010','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('11','XIA','semua','0075943384','','ILHAM HAQIQI','IX','R1','1','sntr011','ps011','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('12','XIA','semua','0076119716','','Imam Jauhari','IX','R1','1','sntr012','ps012','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('13','XIA','semua','0075325847','','Imam Syah Rahman','IX','R1','1','sntr013','ps013','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('14','XIA','semua','0065038571','','Lalu Ahmad Dzakwan Hakim','IX','R1','1','sntr014','ps014','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('15','XIA','semua','0066175518','','M. Nabil Al Farizqi','IX','R1','1','sntr015','ps015','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('16','XIA','semua','0072393118','','M.M. Mohammad Al\'Fatih','IX','R1','1','sntr016','ps016','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('17','XIA','semua','0072838267','','Mohammad Amiril Salim Mahardika','IX','R1','1','sntr017','ps017','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('18','XIA','semua','0075443314','','Muh. Fasha Aprian','IX','R1','1','sntr018','ps018','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('19','XIA','semua','0061713989','','Muhamad Sudaesi','IX','R1','1','sntr019','ps019','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('20','XIA','semua','0069416742','','MUHAMMAD ARIQ NABHAN','IX','R1','1','sntr020','ps020','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('21','XIA','semua','0079864264','','MUHAMMAD BINTANG KASTARA NURRAYA','IX','R1','1','sntr021','ps021','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('22','XIA','semua','0071723117','','MUHAMMAD FAIZ AL-HUSAINI','IX','R1','1','sntr022','ps022','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('23','XIA','semua','0078444752','','Muhammad Hanzalah','IX','R1','1','sntr023','ps023','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('24','XIA','semua','0077400887','','Muhammad Razin','IX','R1','1','sntr024','ps024','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('25','XIA','semua','0069732073','','MUHAMMAD SAMIR','IX','R1','1','sntr025','ps025','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('26','XIA','semua','0062189597','','Muhammad Yusuf Alwi','IX','R1','1','sntr026','ps026','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('27','XIA','semua','0066429459','','PAHIMUL AHKAM','IX','R1','1','sntr027','ps027','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('28','XIA','semua','0063073511','','Tholib Ammar','IX','R1','1','sntr028','ps028','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('29','XIA','semua','0076941976','','ZHILAL FATHURRAHMAN','IX','R1','1','sntr029','ps029','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('30','XIA','semua','0079731429','','ZILAL ASSYUHADA','IX','R1','1','sntr030','ps030','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('31','XIB','semua','0075033499','','Abdurrafi','IX','R1','2','sntr031','ps031','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('32','XIB','semua','0066376084','','APLIN SAOKI','IX','R1','2','sntr032','ps032','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('33','XIB','semua','0087510766','','AHMAD GHAZI','IX','R1','2','sntr033','ps033','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('34','XIB','semua','0061969144','','ALFIAN HADI','IX','R1','2','sntr034','ps034','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('35','XIB','semua','0068904073','','Ali Hamzar','IX','R1','2','sntr035','ps035','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('36','XIB','semua','0065401542','','BAZZAR AL FAZY','IX','R1','2','sntr036','ps036','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('37','XIB','semua','0069604366','','DIDIN ATMA ZAKI','IX','R1','2','sntr037','ps037','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('38','XIB','semua','0065529127','','Doni Dion','IX','R1','2','sntr038','ps038','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('39','XIB','semua','0064177216','','HAGIBUL ARDANU','IX','R1','2','sntr039','ps039','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('40','XIB','semua','0078956192','','HARAZIL NANDO APRIANDI','IX','R1','2','sntr040','ps040','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('41','XIB','semua','0065934293','','Hayyan','IX','R1','2','sntr041','ps041','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('42','XIB','semua','0061631854','','ILHAM BANU MUZAKKI','IX','R1','2','sntr042','ps042','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('43','XIB','semua','0064745280','','Imad Kaisan','IX','R1','2','sntr043','ps043','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('44','XIB','semua','0064656599','','JUAN ABDUL KHOLID','IX','R1','2','sntr044','ps044','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('45','XIB','semua','0078631934','','KASA KHOLID IMAM','IX','R1','2','sntr045','ps045','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('46','XIB','semua','0075941317','','KHAIRUL FALAH ZAYAN WARID RAFSANJANI','IX','R1','2','sntr046','ps046','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('47','XIB','semua','0078769719','','Lalu M. Hafizh Adiya Putra Aspari','IX','R1','2','sntr047','ps047','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('48','XIB','semua','0069835762','','M. Adil Nusairi','IX','R1','2','sntr048','ps048','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('49','XIB','semua','3064930265','','M. Riyad Ramadhan','IX','R1','2','sntr049','ps049','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('50','XIB','semua','0062422387','','M. ZAIDI FADILAH','IX','R1','2','sntr050','ps050','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('51','XIB','semua','0066231659','','MAHDY ACHMAD SWAILIM','IX','R1','2','sntr051','ps051','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('52','XIB','semua','0078391249','','Moh. Azi Saphana Ridho','IX','R1','2','sntr052','ps052','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('53','XIB','semua','0071756987','','MUHAMAD ASADE ALFARID','IX','R1','2','sntr053','ps053','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('54','XIB','semua','0076906082','','Muhammad Gaelby Salahuddin','IX','R1','2','sntr054','ps054','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('55','XIB','semua','0062610498','','Muzakir Kholid','IX','R1','2','sntr055','ps055','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('56','XIB','semua','0075438905','','Nanang Dimas Pratama','IX','R1','2','sntr056','ps056','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('57','XIB','semua','0064355287','','NAZRIL AMRI','IX','R1','2','sntr057','ps057','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('58','XIB','semua','0075971811','','RIZKY ADE RAMADAN','IX','R1','2','sntr058','ps058','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('59','XIB','semua','0071692679','','SABIL AL ISLAM','IX','R1','2','sntr059','ps059','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('60','XIB','semua','0065135903','','Salman Alparisi','IX','R1','2','sntr060','ps060','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('61','XIB','semua','0079491765','','Umar Al-Faruq','IX','R1','2','sntr061','ps061','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('62','XIB','semua','0078082102','','Yasin Ali','IX','R1','2','sntr062','ps062','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('63','IXC','semua','0075167500','','Abdul Malik','IX','R1','3','sntr063','ps063','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('64','IXC','semua','0068603856','','ABDULLAH UMAR','IX','R1','3','sntr064','ps064','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('65','IXC','semua','0084641489','','ABDUR RHOFIQ','IX','R1','3','sntr065','ps065','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('66','IXC','semua','0067040460','','AFFAN AZIZI','IX','R1','3','sntr066','ps066','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('67','IXC','semua','0064385791','','AGAS SATRIA APANDI','IX','R1','3','sntr067','ps067','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('68','IXC','semua','0067328608','','AHMAD FADLI','IX','R1','3','sntr068','ps068','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('69','IXC','semua','0061924350','','Ahmad Yasin','IX','R1','3','sntr069','ps069','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('70','IXC','semua','0078821172','','ANGGARA TRI SUPUTRA','IX','R1','3','sntr070','ps070','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('71','IXC','semua','0069122353','','Arrifki','IX','R1','3','sntr071','ps071','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('72','IXC','semua','0063115341','','Chris Zuhrian','IX','R1','3','sntr072','ps072','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('73','IXC','semua','0072899072','','FATHIRRAHMAN BURHANI','IX','R1','3','sntr073','ps073','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('74','IXC','semua','0068524957','','HEZI SAPUTRA','IX','R1','3','sntr074','ps074','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('75','IXC','semua','0059017056','','JAMI\'UL MU\'MININ','IX','R1','3','sntr075','ps075','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('76','IXC','semua','0054317047','','LALU ABDURRO\'UF','IX','R1','3','sntr076','ps076','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('77','IXC','semua','0073605238','','Lalu Ravi Taali Rizqi','IX','R1','3','sntr077','ps077','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('78','IXC','semua','0079056485','','Lalu Wahyu Alfian Maulana','IX','R1','3','sntr078','ps078','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('79','IXC','semua','0092781512','','LEBZO ROSNANU ZAKARIADI','IX','R1','3','sntr079','ps079','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('80','IXC','semua','0079489839','','M. DADANG MAOLANA','IX','R1','3','sntr080','ps080','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('81','IXC','semua','0078711568','','M. Safari','IX','R1','3','sntr081','ps081','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('82','IXC','semua','0059723301','','M. YUSRIL HAZIM','IX','R1','3','sntr082','ps082','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('83','IXC','semua','0072324801','','M.AZQA FARIS IRAWAN','IX','R1','3','sntr083','ps083','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('84','IXC','semua','0075717875','','MALIK ILHAM','IX','R1','3','sntr084','ps084','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('85','IXC','semua','0078111686','','MOH. HIZBI MAOLANA','IX','R1','3','sntr085','ps085','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('86','IXC','semua','0071534017','','MOHAMAD ZUPAERON','IX','R1','3','sntr086','ps086','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('87','IXC','semua','0089037176','','MUH. DENIS ADIANTARA','IX','R1','3','sntr087','ps087','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('88','IXC','semua','0060030951','','Muhammad Ilham Firdaus','IX','R1','3','sntr088','ps088','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('89','IXC','semua','0074594094','','MUHAMMAD NAZI','IX','R1','3','sntr089','ps089','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('90','IXC','semua','0067695121','','MUHAMMAD RIZKY RAMDHANI','IX','R1','3','sntr090','ps090','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('91','IXC','semua','0075586209','','MUHAMMAD YASIR','IX','R1','3','sntr091','ps091','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('92','IXC','semua','0074412384','','Pityan Mubarrak','IX','R1','3','sntr092','ps092','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('93','IXC','semua','0077943737','','SANDY FATHIR ROHMAN','IX','R1','3','sntr093','ps093','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('94','IXC','semua','0072653582','','SULISTIAWAN','IX','R1','3','sntr094','ps094','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('95','IXC','semua','0073628320','','TORIQUL HADI','IX','R1','3','sntr095','ps095','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0');

/*---------------------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `soal`;
CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `pilA` longtext DEFAULT NULL,
  `pilB` longtext DEFAULT NULL,
  `pilC` longtext DEFAULT NULL,
  `pilD` longtext DEFAULT NULL,
  `pilE` longtext DEFAULT NULL,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `file1` mediumtext DEFAULT NULL,
  `fileA` mediumtext DEFAULT NULL,
  `fileB` mediumtext DEFAULT NULL,
  `fileC` mediumtext DEFAULT NULL,
  `fileD` mediumtext DEFAULT NULL,
  `fileE` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
INSERT INTO `soal` VALUES   ('8','1','1','<p>Sebuah mistar digunakan untuk mengukur panjang beberapa pensil seperti gambar dibawah ini. Berdasarkan gambar, panjang pensil yang benar adalah....</p>\r\n<p><img src=\"http://smp-ia.sch.id/elearning/userfiles/US_IPA_2021/SOAL_NO_1.png?time=1617768534299\" alt=\"\" /></p>','1','<p>Pensil I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 3,5 cm</p>','<p>Pensil II&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 4,7 cm</p>','<p>Pensil III&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 2,2 cm</p>','<p>Pensil IV&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 2,6 cm</p>','','C','','','','','','','');
INSERT INTO `soal` VALUES ('9','1','2','<p>Perhatikan gambar&nbsp; dibawah ini!</p>\r\n<p><img src=\"http://smp-ia.sch.id/elearning/userfiles/US_IPA_2021/SOAL_NO_2.png?time=1617768614353\" alt=\"\" /></p>\r\n<p>Alat diatas digunakan untuk memisahkan campuran dengan menggunakan metode....&nbsp;&nbsp;&nbsp;&nbsp;</p>','1','<p>Distilasi</p>','<p>Kristalisasi</p>','<p>Kromatografi</p>','<p>Filtrasi</p>','','A','','','','','','','');

/*---------------------------------------------------------------
  TABLE: `token`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `token` VALUES   ('1','VGGPDF','2020-04-05 00:29:17','00:15:00');

/*---------------------------------------------------------------
  TABLE: `tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `tugas`;
CREATE TABLE `tugas` (
  `id_tugas` int(255) NOT NULL AUTO_INCREMENT,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL DEFAULT '0',
  `mapel` varchar(255) NOT NULL DEFAULT '0',
  `judul` varchar(50) NOT NULL DEFAULT '0',
  `tugas` longtext NOT NULL DEFAULT '0',
  `file` varchar(255) DEFAULT '0',
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`id_tugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `ujian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `kode_nama` varchar(255) DEFAULT '0',
  `id_pk` varchar(255) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int(2) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `reset` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `ujian` VALUES   ('1','UAS21-IPA','a:1:{i:0;s:5:\"semua\";}','269','1','USBK','ILMU PENGETAHUAN ALAM','40','0','25','4','0','40','0','20','2022-03-08 12:35:00','2022-03-08 14:00:00','12:35:00',NULL,'IX','a:3:{i:0;s:3:\"IXC\";i:1;s:3:\"XIA\";i:2;s:3:\"XIB\";}','1','1','1','0','1','65','1','','1');
