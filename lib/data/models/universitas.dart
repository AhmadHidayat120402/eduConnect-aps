class Universitas {
  String nama;
  String mark;
  String deskripsi;
  String imageAssets;

  Universitas({
    required this.nama,
    required this.mark,
    required this.deskripsi,
    required this.imageAssets,
  });
}

var universitasData = [
  Universitas(
    nama: 'Universitas Riau',
    mark: '450.0',
    deskripsi:
        "Universitas Riau (UR), terletak di Pekanbaru, Riau, telah berkembang menjadi lembaga pendidikan tinggi yang memegang peran penting dalam pengembangan sumber daya manusia dan kemajuan daerah. Dengan fasilitas modern dan program studi yang beragam, UR menciptakan lingkungan belajar yang kondusif, didukung oleh staf pengajar yang berdedikasi. Aktif dalam kegiatan mahasiswa dan organisasi, UR menciptakan suasana kampus yang dinamis. Melalui inisiatif pengabdian masyarakat, UR berkomitmen untuk memberikan dampak positif pada lingkungan sekitar dan mendukung pembangunan wilayah. Sebagai pusat keunggulan akademis, Universitas Riau terus berupaya menjadi kontributor utama dalam pembangunan berkelanjutan di Riau dan sekitarnya.",
    imageAssets: 'assets/images/univ_riau.jpg',
  ),
  Universitas(
    nama: 'Universitas Indonesia',
    mark: '550.0',
    deskripsi:
        "Universitas Indonesia (UI), didirikan pada tahun 1849, menonjol sebagai institusi pendidikan tinggi terdepan di Indonesia. Kampus yang terletak di Depok, Jawa Barat, mencerminkan warisan sejarah dan tradisi panjang, dimulai sebagai Sekolah Dokter Djawa. Dengan fasilitas dan infrastruktur modern, UI menyediakan lingkungan pembelajaran yang mendukung, melibatkan staf pengajar dan peneliti berkualitas tinggi. Program studi unggulan, baik di tingkat sarjana maupun pascasarjana, mencakup berbagai disiplin ilmu, sementara prestasi akademis dan reputasinya secara internasional mengukuhkan posisinya sebagai lembaga pendidikan terkemuka. Mahasiswa UI aktif dalam kegiatan ekstrakurikuler, menciptakan kehidupan kampus yang dinamis. Selain itu, UI berkomitmen pada pengabdian kepada masyarakat melalui berbagai program dan proyek, menegaskan perannya sebagai agen positif dalam pembangunan sosial dan ekonomi masyarakat.",
    imageAssets: 'assets/images/univ_ui.jpg',
  ),
  Universitas(
    nama: 'Politeknik Padjajaran',
    mark: '450.0',
    deskripsi:
        "Politeknik Padjajaran, yang terletak di Bandung, Jawa Barat, Indonesia, adalah institusi pendidikan tinggi yang menekankan pendidikan vokasional dan teknologi. Dengan fasilitas modern dan kurikulum yang relevan, politeknik ini bertujuan untuk mempersiapkan mahasiswa dengan keterampilan praktis dan pengetahuan teknis yang dibutuhkan dalam dunia kerja. Staf pengajar yang berpengalaman berkomitmen pada pendidikan dan perkembangan mahasiswa, sementara berbagai kegiatan mahasiswa dan kerjasama dengan industri membentuk pengalaman belajar yang holistik. Politeknik Padjajaran juga mungkin berperan dalam mendukung pertumbuhan ekonomi dan industri di wilayahnya. Meskipun informasi terkini dapat ditemukan langsung di situs web resmi politeknik, gambaran ini memberikan gambaran umum tentang kontribusi dan fokus utama institusi ini dalam membekali mahasiswa dengan keterampilan praktis untuk memasuki dunia kerja.",
    imageAssets: 'assets/images/pol_padjajaran.jpg',
  ),
  Universitas(
    nama: 'Universitas Andalas',
    mark: '500.0',
    deskripsi:
        "Universitas Andalas (UNAND) merupakan perguruan tinggi yang terletak di Padang, Sumatra Barat, Indonesia. Didirikan pada tahun 1956, UNAND telah berkembang menjadi salah satu institusi pendidikan tinggi terkemuka di Indonesia. Kampusnya menawarkan berbagai program studi di tingkat sarjana, magister, dan doktor, mencakup berbagai bidang ilmu. Dengan fasilitas modern seperti gedung perkuliahan, laboratorium, dan perpustakaan, UNAND memberikan lingkungan belajar yang kondusif. Staf pengajar yang berkualitas tinggi berperan dalam memberikan pendidikan yang berkualitas dan berkontribusi pada pengembangan ilmu pengetahuan. UNAND juga aktif dalam kegiatan penelitian dan pengabdian masyarakat, menciptakan dampak positif pada lingkungan sekitar. Sebagai pusat pendidikan unggul di Sumatra Barat, UNAND terus berkomitmen untuk mencetak generasi yang kompeten dan berkontribusi pada pembangunan berkelanjutan di tingkat lokal dan nasional.",
    imageAssets: 'assets/images/univ_andalas.jpg',
  ),
  Universitas(
    nama: 'Universitas Diponegoro',
    mark: '550.0',
    deskripsi:
        "Universitas Diponegoro (Undip), yang berlokasi di Semarang, Jawa Tengah, merupakan salah satu perguruan tinggi terkemuka di Indonesia. Didirikan pada tahun 1956, Undip telah berkembang menjadi pusat pendidikan dan penelitian yang dihormati dengan reputasi yang kuat. Kampusnya dilengkapi dengan fasilitas modern, termasuk gedung perkuliahan, laboratorium, dan perpustakaan, menciptakan lingkungan belajar yang stimulatif. Dengan beragam program studi di tingkat sarjana dan pascasarjana, Undip menawarkan pendidikan tinggi yang berkualitas dan relevan dengan kebutuhan pasar kerja. Staf pengajar yang berkualitas tinggi terlibat dalam penelitian dan pengabdian kepada masyarakat, memberikan kontribusi pada perkembangan ilmu pengetahuan dan teknologi. Kehidupan kampus yang dinamis tercermin dalam partisipasi mahasiswa dalam berbagai kegiatan ekstrakurikuler dan organisasi. Sebagai lembaga pendidikan tinggi yang berperan dalam pengembangan sumber daya manusia, Undip terus berkomitmen untuk memberikan kontribusi positif pada masyarakat dan kemajuan bangsa.",
    imageAssets: 'assets/images/univ_diponegoro.jpg',
  ),
  Universitas(
    nama: 'Universitas Brawijaya',
    mark: '550.0',
    deskripsi:
        "Universitas Brawijaya (UB), yang terletak di Malang, Jawa Timur, Indonesia, adalah institusi pendidikan tinggi yang dikenal karena komitmennya pada standar akademis yang tinggi dan kontribusinya terhadap pengembangan ilmu pengetahuan dan teknologi. Dengan sejarah panjang sejak didirikan pada tahun 1963, UB telah tumbuh menjadi salah satu universitas terkemuka di Indonesia. Kampus yang luas dan dilengkapi dengan fasilitas modern mendukung beragam program studi di tingkat sarjana, magister, dan doktor. UB menonjolkan pengajaran yang inovatif, penelitian yang relevan, dan keterlibatan masyarakat, yang semuanya berkontribusi pada pembentukan mahasiswa menjadi individu yang kompeten dan berintegritas. Dengan staf pengajar yang berkualitas tinggi dan mahasiswa yang aktif dalam berbagai kegiatan ekstrakurikuler, Universitas Brawijaya terus berperan dalam mencetak generasi yang siap menghadapi tantangan global dan berkontribusi pada perkembangan masyarakat.",
    imageAssets: 'assets/images/univ_brawijaya.jpg',
  ),
  Universitas(
    nama: 'Universitas Jember',
    mark: '550.0',
    deskripsi:
        "Universitas Jember (UNEJ), terletak di Jember, Jawa Timur, adalah lembaga pendidikan tinggi yang menonjol dengan berbagai program studi dan komitmen pada pengembangan sumber daya manusia. Dengan sejarah panjang dan reputasi yang kuat, UNEJ telah menjadi pusat akademis dan riset di wilayahnya. Kampusnya yang modern menyediakan fasilitas pendidikan, penelitian, dan pengembangan mahasiswa yang memadai. Staf pengajar yang berkualitas tinggi berperan aktif dalam memberikan pembelajaran berkualitas dan mendukung pengembangan intelektual mahasiswa. UNEJ juga terlibat dalam berbagai kegiatan ekstrakurikuler dan program pengabdian masyarakat, menciptakan lingkungan belajar yang beragam dan holistik. Sebagai institusi yang terus berkembang, Universitas Jember berkomitmen untuk berkontribusi pada pembangunan berkelanjutan dan mencetak generasi yang siap menghadapi tantangan masa depan.",
    imageAssets: 'assets/images/univ_jember.jpg',
  ),
  Universitas(
    nama: 'Universitas Malang',
    mark: '500.0',
    deskripsi:
        "Universitas Negeri Malang (UM) merupakan lembaga pendidikan tinggi terkemuka di Indonesia, terletak di kota Malang, Jawa Timur. Didirikan pada tahun 1954, UM memiliki sejarah panjang dalam memberikan kontribusi pada dunia pendidikan dan pengembangan masyarakat. Kampusnya dilengkapi dengan fasilitas modern, termasuk gedung perkuliahan, laboratorium, dan perpustakaan, menciptakan lingkungan belajar yang dinamis dan berkualitas. UM menawarkan berbagai program studi di tingkat sarjana dan pascasarjana, dengan fokus pada pengembangan keterampilan akademis dan karakter mahasiswa. Staf pengajar yang berkualitas tinggi dan berpengalaman berperan dalam menyelenggarakan pengajaran dan penelitian yang relevan. Selain itu, UM aktif dalam kegiatan ekstrakurikuler dan program pengabdian masyarakat, menciptakan atmosfer kampus yang beragam dan proaktif. Universitas Negeri Malang terus berkomitmen untuk menghasilkan lulusan yang berkualitas, berinovasi, dan siap berkontribusi dalam pembangunan masyarakat dan bangsa.",
    imageAssets: 'assets/images/univ_malang.jpeg',
  ),
  Universitas(
    nama: 'Politeknik Jember',
    mark: '550.0',
    deskripsi:
        "Politeknik Jember adalah lembaga pendidikan tinggi di Jember, Jawa Timur, Indonesia, yang memiliki fokus kuat pada pendidikan vokasional dan teknologi. Dengan fasilitas modern dan kurikulum yang disesuaikan dengan kebutuhan industri, Politeknik Jember bertujuan untuk menghasilkan lulusan yang siap bersaing di dunia kerja. Staf pengajar yang berkualitas dan berpengalaman berperan aktif dalam membimbing mahasiswa, sementara berbagai kegiatan mahasiswa, proyek praktikum, dan kerjasama dengan industri membentuk pengalaman belajar yang praktis dan relevan. Sebagai lembaga pendidikan yang terus berkembang, Politeknik Jember berkomitmen untuk mendukung pengembangan sumber daya manusia dan kontribusi pada perkembangan ekonomi lokal dan nasional.",
    imageAssets: 'assets/images/polije.jpg',
  ),
  Universitas(
    nama: 'Universitas Trunojoyo',
    mark: '450.0',
    deskripsi:
        "Universitas Trunojoyo Madura (UTM) adalah lembaga pendidikan tinggi yang terletak di Bangkalan, Madura, Indonesia. Dengan didirikan pada tahun 1964, UTM telah tumbuh menjadi institusi yang berfokus pada penyediaan pendidikan berkualitas dalam berbagai bidang ilmu. Kampusnya dilengkapi dengan fasilitas modern, termasuk gedung perkuliahan, laboratorium, dan perpustakaan, menciptakan lingkungan belajar yang kondusif. Staf pengajar yang berkualitas tinggi berdedikasi untuk memberikan pembelajaran yang efektif dan relevan, sementara berbagai program studi di tingkat sarjana dan pascasarjana menawarkan peluang bagi mahasiswa untuk mengembangkan keterampilan dan pengetahuan mereka. UTM juga aktif dalam kegiatan mahasiswa, organisasi, dan proyek penelitian, menciptakan suasana kampus yang dinamis. Sebagai kontributor penting dalam pengembangan pendidikan di Madura, Universitas Trunojoyo Madura terus berkomitmen untuk memberikan dampak positif pada masyarakat dan mempersiapkan generasi muda untuk tantangan global.",
    imageAssets: 'assets/images/univ_trunojoyo.jpg',
  ),
  Universitas(
    nama: 'Politeknik Malang',
    mark: '550.0',
    deskripsi:
        "Politeknik Negeri Malang (Polinema) adalah lembaga pendidikan tinggi di Malang, Jawa Timur, Indonesia, yang secara konsisten mengedepankan pendidikan vokasional dan teknologi. Didirikan pada tahun 1982, Polinema telah membuktikan diri sebagai pusat pendidikan yang berorientasi pada kebutuhan industri. Kampus yang modern dan dilengkapi dengan fasilitas terkini menciptakan lingkungan pembelajaran yang memadai. Polinema menawarkan berbagai program studi yang relevan dengan tuntutan pasar kerja, dengan staf pengajar yang berkualitas tinggi dan berpengalaman. Selain fokus pada aspek akademis, Polinema juga mendorong partisipasi mahasiswa dalam kegiatan ekstrakurikuler, penelitian, dan kerjasama industri, meningkatkan pengalaman belajar mereka. Sebagai kontributor aktif pada pengembangan sumber daya manusia di wilayahnya, Politeknik Negeri Malang terus memainkan peran penting dalam mendukung pertumbuhan ekonomi dan industri di Jawa Timur.",
    imageAssets: 'assets/images/polinema.jpg',
  ),
  Universitas(
    nama: 'Universitas Airlangga',
    mark: '550.0',
    deskripsi:
        "Universitas Airlangga (UNAIR), yang terletak di Surabaya, Jawa Timur, Indonesia, adalah institusi pendidikan tinggi yang terkenal dengan reputasi akademisnya yang kuat. Didirikan pada tahun 1954, UNAIR telah menjadi pusat keunggulan dalam berbagai disiplin ilmu, mencakup bidang kedokteran, ilmu kesehatan, sosial, hukum, ekonomi, dan sains. Kampusnya dilengkapi dengan fasilitas modern, termasuk laboratorium, perpustakaan, dan pusat riset, menciptakan lingkungan pembelajaran yang kondusif. UNAIR juga dikenal dengan kolaborasinya yang erat dengan industri dan lembaga internasional, memungkinkan mahasiswa untuk mendapatkan pengalaman praktis dan perspektif global. Dengan staf pengajar yang berkualitas dan mahasiswa yang berprestasi, Universitas Airlangga terus berkomitmen untuk memberikan kontribusi positif pada perkembangan ilmu pengetahuan, masyarakat, dan bangsa.",
    imageAssets: 'assets/images/univ_airlangga.jpg',
  ),
  Universitas(
    nama: 'Universitas Gadjah Mada',
    mark: '550.0',
    deskripsi:
        "Universitas Gadjah Mada (UGM), yang berlokasi di Yogyakarta, Indonesia, merupakan salah satu perguruan tinggi terkemuka di negara ini. Didirikan pada tahun 1949, UGM memiliki reputasi yang kuat untuk keunggulan akademis, penelitian, dan kontribusinya pada pembangunan masyarakat. Kampusnya yang luas dilengkapi dengan fasilitas modern, termasuk gedung perkuliahan, laboratorium, dan perpustakaan, menciptakan lingkungan belajar yang mendukung. Dengan beragam program studi di tingkat sarjana, magister, dan doktor, UGM menyediakan pendidikan berkualitas tinggi yang mencakup berbagai disiplin ilmu. Staf pengajar yang berpengalaman dan berprestasi serta mahasiswa yang aktif dalam kegiatan ekstrakurikuler menciptakan suasana kampus yang dinamis. UGM juga dikenal karena upayanya dalam pengembangan riset dan inovasi, menjadikannya pusat unggulan untuk penelitian ilmiah dan pengembangan teknologi di Indonesia. Dengan komitmen pada pengabdian kepada masyarakat, UGM terus berperan dalam mencetak generasi yang berkontribusi pada kemajuan bangsa dan global.",
    imageAssets: 'assets/images/univ_gadjahmada.jpg',
  ),
  Universitas(
    nama: 'Universitas Lampung',
    mark: '500.0',
    deskripsi:
        "Universitas Lampung (Unila), yang terletak di Bandar Lampung, Indonesia, adalah lembaga pendidikan tinggi yang memiliki peran penting dalam pengembangan akademis dan sumber daya manusia di wilayah Lampung. Dengan akar sejarah yang kuat sejak didirikan pada tahun 1965, Unila telah menjadi pusat pembelajaran dan penelitian yang berfokus pada berbagai bidang ilmu. Kampus yang modern dilengkapi dengan fasilitas state-of-the-art, mendukung mahasiswa dalam mengejar pendidikan tinggi berkualitas. Staf pengajar yang berdedikasi dan berpengalaman berperan dalam membimbing mahasiswa menuju prestasi akademis dan pengembangan keterampilan. Selain itu, Unila aktif dalam kegiatan pengabdian kepada masyarakat dan berbagai program kerjasama yang dapat memberikan dampak positif pada masyarakat dan lingkungan sekitar. Sebagai salah satu institusi pendidikan terkemuka di wilayah tersebut, Unila berkomitmen untuk memberikan kontribusi signifikan pada pembangunan daerah dan meningkatkan mutu pendidikan tinggi di Indonesia.",
    imageAssets: 'assets/images/univ_lampung.jpg',
  ),
  Universitas(
    nama: 'Universitas Sebelas Maret',
    mark: '550.0',
    deskripsi:
        "Universitas Sebelas Maret (UNS) yang terletak di Surakarta, Jawa Tengah, Indonesia, dikenal sebagai salah satu perguruan tinggi terkemuka di negara ini. Dibentuk pada tahun 1976, UNS telah memainkan peran penting dalam pengembangan ilmu pengetahuan, pendidikan, dan pengabdian kepada masyarakat. Kampus yang luas dilengkapi dengan fasilitas modern, termasuk gedung perkuliahan, laboratorium, dan perpustakaan yang mendukung berbagai program studi di tingkat sarjana, magister, dan doktor. Staf pengajar yang berkualitas tinggi berdedikasi untuk memberikan pendidikan berkualitas, sementara mahasiswa UNS aktif dalam kegiatan akademis, seni, dan olahraga. Universitas Sebelas Maret juga dikenal karena kontribusinya pada penelitian dan pengembangan teknologi, serta upayanya dalam menjalin kemitraan dengan industri dan lembaga lainnya. Melalui berbagai inisiatif, UNS terus berupaya menjadi pusat keunggulan akademis dan berperan dalam memajukan masyarakat dan pembangunan berkelanjutan.",
    imageAssets: 'assets/images/univ_sebelasmaret.jpg',
  ),
  Universitas(
    nama: 'Universitas Sriwijaya',
    mark: '500.0',
    deskripsi:
        "Universitas Sriwijaya (UNSRI) adalah perguruan tinggi yang terletak di Palembang, Sumatera Selatan, Indonesia. Dibentuk pada tahun 1960, UNSRI telah menjadi salah satu lembaga pendidikan tinggi terkemuka di wilayah Sumatera. Kampusnya dilengkapi dengan fasilitas modern, termasuk gedung perkuliahan, laboratorium, dan pusat penelitian, menciptakan lingkungan belajar yang dinamis. UNSRI menawarkan berbagai program studi di tingkat sarjana, magister, dan doktor, melibatkan staf pengajar yang berkompeten dan berdedikasi. Mahasiswa UNSRI aktif dalam kegiatan ekstrakurikuler, organisasi mahasiswa, dan kegiatan sosial, menciptakan suasana kampus yang hidup dan beragam. Sebagai lembaga pendidikan yang berperan penting dalam pengembangan sumber daya manusia di Sumatera Selatan, UNSRI juga terlibat dalam berbagai kegiatan pengabdian masyarakat untuk mendukung pembangunan wilayah.",
    imageAssets: 'assets/images/univ_sriwijaya.png',
  ),
  Universitas(
    nama: 'Universitas Udayana',
    mark: '550.0',
    deskripsi:
        "Universitas Udayana, terletak di Bali, Indonesia, adalah lembaga pendidikan tinggi terkemuka yang telah berperan penting dalam mengembangkan potensi sumber daya manusia di wilayah tersebut. Dengan didukung oleh fasilitas modern dan staf pengajar berkualitas, universitas ini menawarkan berbagai program studi di tingkat sarjana, magister, dan doktor, mencakup berbagai disiplin ilmu. Universitas Udayana juga dikenal atas komitmennya terhadap penelitian dan pengabdian masyarakat, yang tercermin dalam berbagai proyek penelitian dan kontribusi positifnya terhadap pembangunan lokal. Mahasiswa di Universitas Udayana tidak hanya mendapatkan pendidikan akademis berkualitas, tetapi juga terlibat dalam kegiatan ekstrakurikuler dan organisasi mahasiswa yang memperkaya pengalaman belajar mereka. Dengan fokus pada pengembangan karakter, pengetahuan, dan keterampilan, Universitas Udayana terus berperan sebagai agen perubahan dan pemimpin di bidang pendidikan dan pengembangan masyarakat di Bali.",
    imageAssets: 'assets/images/univ_udayana.jpg',
  ),
];
