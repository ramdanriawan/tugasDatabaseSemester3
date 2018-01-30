--perintah untuk membuat database dbKlinik--
--create database dbKlinik;

--perintah untuk membuat table dokter
--create table dokter (
--	kdDokter int identity(1,1) primary key not null, 
--	nama varchar(20) not null, 
--	alamatDokter varchar(50),
--	spesialis varchar(20) not null
--);

--perintah untuk membuat table pasien
--create table pasien(
--	kdPasien int identity(1,1) primary key not null,
--	nama varchar(20) not null,
--	alamatPasien varchar(50) not null,
--	tanggalDatang date not null,
--	kdDokter int not null,
--	constraint fk_pasien_dokter 
--	foreign key (kdDokter) 
--	references dokter(kdDokter)
--);

--perintah untuk membuat table petugas
--create table petugas(
--	kdPetugas int identity(1,1) primary key not null,
--	nama varchar(20) not null,
--	alamat varchar(50) not null
--);

--perintah untuk membuat table ruang
--create table ruang(
--	kdRuang int identity(1,1) primary key not null,
--	namaRuang varchar(20) not null,
--	namaGedung varchar(20) not null
--);

--perintah untuk membuat table obat
--create table obat(
--	kdObat int identity(1,1) primary key not null,
--	namaObat varchar(20) not null,
--	jenisObat varchar(20) not null,
--	bentukObat varchar(20) not null,
--	tanggalKadaluarsa date not null
--	);

--perintah untuk membuat table pembayaran
--create table pembayaran(
--	kdPembayaran int identity(1,1) primary key not null,
--	kdPasien int not null,
--	kdPetugas int not null,
--	constraint fk_pasien_pembayaran
--	foreign key(kdPasien) references pasien(kdPasien),
--	constraint fk_petugas_pembayaran
--	foreign key (kdPetugas) references petugas(kdPetugas),
--	jumlahPembayaran int not null
--);

--perintah untuk membuat table rawat inap
--create table rawatInap(
--	kdRawatInap int identity(1,1) primary key not null,
--	kdPasien int not null,
--	kdRuang int not null,
--	constraint fk_pasien_rawat_inap 
--	foreign key(kdPasien) 
--	references pasien(kdPasien),
--	constraint fk_ruang_rawat_inap
--	foreign key(kdRuang)
--	references ruang(kdRuang)
--);

--perintah untuk mengisi data di table petugas
--insert into petugas values
--	('Ramdan Riawan', 'jl. h. ibrahim rt 19 rawasari jambi'),
--	('Dennys Janisman Z', 'jl. mekar jaya jerbol rt 09 muaro jambi');

--perintah untuk mengisi data di table dokter
--insert into dokter values
--	('Rifka Pebriani', 'Perumahan bogenville blok el no 5', 'Kardiolog'),
--	('Triyanda Muhammad I', 'Lr. Anggrek2 rt 25, kebon handil, jelutung jambi', 'THT');

--perintah untuk mengisi data di table ruang
--insert into ruang values
--	('UGD', 'Gedung Fresia'),
--	('Flamboyan', 'Gedung Flamboyan');

--perintah untuk mengisi data di table pasien
--insert into pasien values
	--('Rahmat Dimas K', 'Jl. Pluit Sakti V no. 30 Jakarta', '2018-01-30', 33),
	--('Rizaka Mandala P', 'Jl. Lobi Lobi No. 415 Jakarta','2018-01-29', 34),
	--('Rezky Nanda S', 'Pusat Perfilman Usmar Ismail, Kuningan Jakarta', '2018-01-28', 33),
	--('Fulan Septian A', 'Jl. Tampak Siring I No. 12 Jaka Setia – Bekasi', '2018-01-27', 34);


--perintah untuk mengisi data di table rawat inap
--insert into rawatInap values
--	(11, 1),
--	(12, 2);

--perintah untuk mengisi data di table pembayaran
insert into pembayaran values
	(11, 1, 30000),
	(12, 1, 40000),
	(13, 2, 50000),
	(14, 2, 60000);

