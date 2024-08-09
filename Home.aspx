<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Homepage</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class="main">

<!-- Hero Section -->
<section id="hero" class="hero section dark-background">

    <img src="Home/assets/img/hero.jpeg" alt="" data-aos="fade-in">

    <div class="container">
    <div class="row">
        <div class="col-lg-8 d-flex flex-column align-items-center align-items-lg-start">
        <h2 data-aos="fade-up" data-aos-delay="100">Transformasi Diri Melalui <br/> <span>Pengalaman Nyata</span></h2>
        <div class="d-flex mt-4" data-aos="fade-up" data-aos-delay="300">
            <a href="#menu" class="cta-btn">Persyaratan</a>
        </div>
        </div>
        <div class="col-lg-4 d-flex align-items-center justify-content-center mt-5 mt-lg-0">
        <a href="https://youtu.be/T-3ZQauMlmA?si=i9Okc--juAka8rB8" class="glightbox pulsating-play-btn"></a>
        </div>
    </div>
    </div>

</section><!-- /Hero Section -->

<!-- About Section -->
<section id="about" class="about section">

    <div class="container" data-aos="fade-up" data-aos-delay="100">

    <div class="row gy-4">
        <div class="col-lg-6 order-1 order-lg-1">
        <img src="Home/assets/img/logoo.png" class="img-fluid about-img" alt="">
        </div>
        <div class="col-lg-6 order-2 order-lg-2 content">
        <h3>Tentang Kami</h3>
        <p>Global Institute of Technology and Business adalah lembaga pendidikan yang berfokus pada pengembangan kompetensi di bidang teknologi dan bisnis. Kami mempersiapkan generasi unggul dengan wawasan luas dan integritas tinggi melalui pendekatan pendidikan holistik. Program unggulan kami, Kuliah Kerja Nyata (KKN) dan Kuliah Kerja Praktik (KKP), memberikan mahasiswa kesempatan untuk mengaplikasikan ilmu di masyarakat dan dunia industri, mengembangkan keterampilan praktis, serta membangun karakter siap bersaing di era globalisasi. Bergabunglah dengan kami dan mulai perjalanan Anda menuju masa depan yang gemilang!</p>
        </div>
    </div>

    </div>

</section><!-- /About Section -->

<!-- Why Us Section -->
<section id="program" class="why-us section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
    <h2>Program</h2>
    <p>Buka Peluang: Program KKN dan KKP</p>
    </div><!-- End Section Title -->

    <div class="container">

    <div class="row gy-4">

        <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
        <div class="card-item">
            <span>01</span>
            <h4><a href="" class="stretched-link">Kuliah Kerja Nyata (KKN)</a></h4>
            <p>Kuliah Kerja Nyata (KKN) adalah program wajib bagi mahasiswa di beberapa perguruan tinggi di Indonesia. Tujuan utamanya adalah memberikan pengalaman praktis kepada mahasiswa dalam menerapkan pengetahuan yang telah dipelajari di kampus ke dalam kehidupan nyata di masyarakat. Selama periode tertentu, mahasiswa terlibat dalam proyek-proyek pengabdian kepada masyarakat yang bertujuan untuk meningkatkan kualitas hidup di berbagai daerah.</p>
        </div>
        </div><!-- Card Item -->

        <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
        <div class="card-item">
            <span>02</span>
            <h4><a href="" class="stretched-link">Kuliah Kerja Praktek (KKP)</a></h4>
            <p>Kuliah Kerja Praktik (KKP) adalah program di mana mahasiswa menjalani magang atau praktik kerja di industri atau institusi terkait dengan bidang studi mereka. Program ini dirancang untuk memberikan pengalaman kerja langsung kepada mahasiswa sehingga mereka dapat mengembangkan keterampilan praktis, memahami dinamika kerja di lapangan, dan mempersiapkan diri untuk masuk ke dunia kerja setelah lulus.</p>
        </div>
        </div><!-- Card Item -->

        <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
        <img src="Home/assets/img/2.jpeg" class="img-fluid">
        </div>
        
        </div><!-- Card Item -->

    </div>

    </div>

</section><!-- /Why Us Section -->

<!-- Menu Section -->
<section id="menu" class="menu section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
    <h2>Persyaratan</h2>
    <p>Eksplor Persyaratan Program KKN dan KKP Kami</p>
    </div><!-- End Section Title -->

    <div class="container isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">

    <div class="row" data-aos="fade-up" data-aos-delay="100">
        <div class="col-lg-12 d-flex justify-content-center">
        <ul class="menu-filters isotope-filters">
            <li data-filter=".filter-kkn" class="filter-active"><b>Kuliah Kerja Nyata (KKN)</b></li>
            <li data-filter=".filter-kkp"><b>Kuliah Kerja Praktek (KKP)</b></li>
        </ul>
    </div>
    </div><!-- Menu Filters -->

    <div class="row isotope-container" data-aos="fade-up" data-aos-delay="200">

        <div class="col-lg-6 menu-item isotope-item filter-kkn">
        <div class="menu-content">
            <a href="#">Status Mahasiswa</a>
        </div>
        <div class="menu-ingredients">
            Peserta harus merupakan mahasiswa aktif Global Institute yang telah menyelesaikan semester 5 dan sedang mengikuti semester 6.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkn">
        <div class="menu-content">
            <a href="#">Surat Keterangan Aktif Kuliah dari perguruan tinggi</a>
        </div>
        <div class="menu-ingredients">
            Surat Keterangan Aktif Kuliah adalah dokumen resmi yang dikeluarkan oleh perguruan tinggi untuk memverifikasi status mahasiswa sebagai mahasiswa aktif.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkn">
        <div class="menu-content">
            <a href="#">Kartu Tanda Mahasiswa (KTM) yang masih berlaku</a>
        </div>
        <div class="menu-ingredients">
            Kartu Tanda Mahasiswa (KTM) yang masih berlaku adalah identitas resmi yang mencatat status keanggotaan mahasiswa di perguruan tinggi.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkn">
        <div class="menu-content">
            <a href="#">Fotokopi KTP atau identitas lain yang sah</a>
        </div>
        <div class="menu-ingredients">
            Fotokopi KTP atau identitas lain yang sah digunakan untuk verifikasi identitas mahasiswa dalam berbagai keperluan administratif.
        </div>
        </div><!-- Menu Item -->
          
        <div class="col-lg-6 menu-item isotope-item filter-kkn">
        <div class="menu-content">
            <a href="#">Dokumen administratif lain yang mungkin diperlukan oleh lembaga penyelenggara.</a>
        </div>
        <div class="menu-ingredients">
            Dokumen administratif lain yang mungkin diperlukan oleh lembaga penyelenggara meliputi surat izin orang tua, sertifikat pelatihan, atau surat pengantar dari perguruan tinggi terkait.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkn">
        <div class="menu-content">
            <a href="#">Menentukan tujuan proyek yang spesifik</a>
        </div>
        <div class="menu-ingredients">
            Menetapkan tujuan proyek yang spesifik untuk KKN melibatkan identifikasi kebutuhan masyarakat yang akan dilayani serta pengukuran yang terukur untuk mengevaluasi keberhasilan pelaksanaan proyek tersebut.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkn">
        <div class="menu-content">
            <a href="#">Merancang Metode Pelaksanaan dan Rencana Kegiatan</a>
        </div>
        <div class="menu-ingredients">
            Merancang metode pelaksanaan dan rencana kegiatan KKN melibatkan strategi yang dipilih untuk mencapai tujuan proyek, alokasi sumber daya, serta penggunaan evaluasi untuk memantau kemajuan dan mencapai pencapaian tujuan yang diinginkan.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkn">
        <div class="menu-content">
            <a href="#">Orientasi atau pelatihan praprogram</a>
        </div>
        <div class="menu-ingredients">
            Orientasi atau pelatihan praprogram adalah persiapan awal untuk memperkenalkan mahasiswa dengan tugas, tanggung jawab, dan persyaratan yang terkait dengan pelaksanaan program KKN atau KKP.
        </div>
        </div><!-- Menu Item -->

        <!-- KKP -->

        <div class="col-lg-6 menu-item isotope-item filter-kkp">
        <div class="menu-content">
            <a href="#">Persyaratan Akademik</a>
        </div>
        <div class="menu-ingredients">
            Peserta program KKP harus telah menyelesaikan minimal 90 SKS dan memenuhi syarat IPK minimal 2.50 yang ditetapkan oleh perguruan tinggi.
        </div>
        </div><!-- Menu Item-->
          
        <div class="col-lg-6 menu-item isotope-item filter-kkp">
        <div class="menu-content">
            <a href="#">Surat Keterangan Aktif Kuliah dari perguruan tinggi</a>
        </div>
        <div class="menu-ingredients">
            Surat Keterangan Aktif Kuliah adalah dokumen resmi yang dikeluarkan oleh perguruan tinggi untuk memverifikasi status mahasiswa sebagai mahasiswa aktif.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkp">
        <div class="menu-content">
            <a href="#">Kartu Tanda Mahasiswa (KTM) yang masih berlaku</a>
        </div>
        <div class="menu-ingredients">
            Kartu Tanda Mahasiswa (KTM) yang masih berlaku adalah identitas resmi yang mencatat status keanggotaan mahasiswa di perguruan tinggi.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkp">
        <div class="menu-content">
            <a href="#">Fotokopi KTP atau identitas lain yang sah</a>
        </div>
        <div class="menu-ingredients">
            Fotokopi KTP atau identitas lain yang sah digunakan untuk verifikasi identitas mahasiswa dalam berbagai keperluan administratif.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkp">
        <div class="menu-content">
            <a href="#">Dokumen administratif lain yang mungkin diperlukan oleh lembaga penyelenggara</a>
        </div>
        <div class="menu-ingredients">
            Dokumen administratif lain yang mungkin diperlukan oleh lembaga penyelenggara meliputi surat izin orang tua, sertifikat pelatihan, atau surat pengantar dari perguruan tinggi terkait.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkp">
        <div class="menu-content">
            <a href="#">Memilih tempat KKP sesuai bidang studi dan minat akademik</a>
        </div>
        <div class="menu-ingredients">
            Memilih tempat KKP yang sesuai dengan bidang studi dan minat akademik memastikan pengalaman praktis yang relevan dan bermanfaat bagi perkembangan profesional mahasiswa.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkp">
        <div class="menu-content">
            <a href="#">Menyusun rencana kerja atau proposal KKP yang disetujui dosen pembimbing akademik</a>
        </div>
        <div class="menu-ingredients">
            Menyusun rencana kerja atau proposal KKP yang disetujui oleh dosen pembimbing akademik memastikan bahwa proyek tersebut terarah dan sesuai dengan standar akademik yang berlaku.
        </div>
        </div><!-- Menu Item -->

        <div class="col-lg-6 menu-item isotope-item filter-kkp">
        <div class="menu-content">
            <a href="#">Berpartisipasi dalam sesi orientasi atau pelatihan yang diselenggarakan sebelum memulai KKP</a>
        </div>
        <div class="menu-ingredients">
            Berpartisipasi dalam sesi orientasi atau pelatihan yang diselenggarakan sebelum memulai KKP membantu mahasiswa memahami tugas dan persyaratan program secara mendalam.
        </div>
        </div><!-- Menu Item -->

    </div><!-- Menu Container -->

    </div>

</section><!-- /Menu Section -->

<!-- Specials Section -->
<section id="specials" class="specials section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
    <h2>FAQ</h2>
    <p>Cek Informasi Khusus Kami</p>
    </div><!-- End Section Title -->

    <div class="container" data-aos="fade-up" data-aos-delay="100">

    <div class="row">
        <div class="col-lg-3">
        <ul class="nav nav-tabs flex-column">
            <li class="nav-item">
            <a class="nav-link active show" data-bs-toggle="tab" href="#specials-tab-1">Perbedaan KKN dan KKP</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" data-bs-toggle="tab" href="#specials-tab-2">Cara Mendaftar</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" data-bs-toggle="tab" href="#specials-tab-3">Lama Durasi</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" data-bs-toggle="tab" href="#specials-tab-4">Manfaat</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" data-bs-toggle="tab" href="#specials-tab-5">Proses Penempatan</a>
            </li>
        </ul>
        </div>
        <div class="col-lg-9 mt-4 mt-lg-0">
        <div class="tab-content">
            <div class="tab-pane active show" id="specials-tab-1">
            <div class="row">
                <div class="col-lg-8 details order-2 order-lg-1">
                <h3>Apa perbedaan antara KKP (Kuliah Kerja Praktek) dan KKN (Kuliah Kerja Nyata)?</h3>
                <p>KKP adalah program di mana mahasiswa dapat mengalami praktik langsung sesuai dengan bidang studi mereka di lingkungan kerja.</p>
                <p>KKN adalah kesempatan bagi mahasiswa untuk memberikan kontribusi kepada masyarakat melalui proyek-proyek yang berbasis pada kebutuhan nyata di lapangan.</p>
                </div>
                <div class="col-lg-4 text-center order-1 order-lg-2">
                <img src="Home/assets/img/specials1.png" alt="" class="img-fluid">
                </div>
            </div>
            </div>
            <div class="tab-pane" id="specials-tab-2">
            <div class="row">
                <div class="col-lg-8 details order-2 order-lg-1">
                <h3>Bagaimana cara saya mendaftar untuk program KKP atau KKN di Global Institute?</h3>
                <p>Anda dapat mendaftar dengan mengikuti prosedur pendaftaran yang ditentukan oleh departemen akademik. Biasanya, ini melibatkan pengajuan formulir dan persyaratan lainnya yang harus dipenuhi.
                </p>
                </div>
                <div class="col-lg-4 text-center order-1 order-lg-2">
                <img src="Home/assets/img/specials2.png" alt="" class="img-fluid">
                </div>
            </div>
            </div>
            <div class="tab-pane" id="specials-tab-3">
            <div class="row">
                <div class="col-lg-8 details order-2 order-lg-1">
                <h3>Berapa lama durasi program KKP dan KKN di Global Institute?</h3>
                <p>Durasi program KKP dan KKN dapat bervariasi tergantung pada kurikulum dan kebutuhan program. Biasanya, KKP berlangsung selama satu semester, sedangkan KKN bisa berlangsung beberapa minggu hingga beberapa bulan.
                </p>
                </div>
                <div class="col-lg-4 text-center order-1 order-lg-2">
                <img src="Home/assets/img/specials3.png" alt="" class="img-fluid">
                </div>
            </div>
            </div>
            <div class="tab-pane" id="specials-tab-4">
            <div class="row">
                <div class="col-lg-8 details order-2 order-lg-1">
                <h3> Apa manfaat mengikuti program KKP atau KKN di Global Institute?</h3>
                <p>Program ini memberikan kesempatan bagi mahasiswa untuk mendapatkan pengalaman praktis yang berharga, membangun jaringan profesional, serta mengembangkan keterampilan yang relevan dengan bidang studi mereka.</p>
                </div>
                <div class="col-lg-4 text-center order-1 order-lg-2">
                <img src="Home/assets/img/specials4.png" alt="" class="img-fluid">
                </div>
            </div>
            </div>
            <div class="tab-pane" id="specials-tab-5">
            <div class="row">
                <div class="col-lg-8 details order-2 order-lg-1">
                <h3>Bagaimana proses penempatan mahasiswa dalam tempat KKP atau KKN di Global Institute?</h3>
                <p>Global Institute memiliki proses penempatan yang terstruktur untuk memastikan mahasiswa ditempatkan sesuai dengan minat dan keahlian akademik mereka. Tim kami akan membantu dalam menemukan tempat yang cocok.</p>
                </div>
                <div class="col-lg-4 text-center order-1 order-lg-2">
                <img src="Home/assets/img/specials5.png" alt="" class="img-fluid">
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>

    </div>

</section><!-- /Specials Section -->

<!-- Book A Table Section -->
<section id="book-a-table" class="book-a-table section">

    <!-- Section Title -->
    <!--<div class="container section-title" data-aos="fade-up">
    <h2>Pendaftaran</h2>
    <p>Daftarkan dirimu sekarang!</p>
    </div>-->
    <!-- End Section Title -->

    <!--<div class="container" data-aos="fade-up" data-aos-delay="100">

    <form action="forms/book-a-table.php" method="post" role="form" class="php-email-form">
        <div class="row gy-4">
        <div class="col-lg-4 col-md-6">
            <label>NIM</label>
            <input type="text" name="name" class="form-control" id="nim" placeholder="Masukkan NIM" required="" readonly>
        </div>
        <div class="col-lg-4 col-md-6">
            <label>Nama Mahasiswa</label>
            <input type="text" class="form-control" name="email" id="name" placeholder="Masukkan Nama" required="" readonly>
        </div>
        <div class="col-lg-4 col-md-6">
            <label>Jumlah SKS</label>
            <input type="text" class="form-control" name="phone" id="sks" placeholder="Masukkan Jumlah SKS" required="" readonly>
        </div>
        <div class="col-lg-4 col-md-6">
            <label>Program</label>
            <select id="program" name="program" class="form-control">
            <option value="KKP">Kuliah Kerja Praktek</option>
            <option value="KKN">Kuliah Kerja Nyata</option>
            </select>
        </div>
        <div class="col-lg-4 col-md-6">
            <label>IPK Sementara</label>
            <input type="text" class="form-control" name="phone" id="sks" placeholder="Masukkan IPK" required="">
        </div>
        <div class="col-lg-4 col-md-6"></div>
        <div class="col-lg-4 col-md-6">
            <label>Judul Kegiatan</label>
            <input type="text" class="form-control" name="phone" id="judul" placeholder="Masukkan Judul Kegiatan" required="">
        </div>
        <div class="col-lg-4 col-md-6">
            <label>Lokasi Penempatan</label>
            <input type="text" class="form-control" name="phone" id="judul" placeholder="Masukkan Lokasi Penempatan" required="">
        </div>
        <div class="form-group mt-3">
        <label>Deskripsi Kegiatan</label>
        <textarea class="form-control" name="message" rows="5" placeholder="Masukkan Deksripsi Kegiatan Yang Akan Dilakukan"></textarea>
        </div>

        <div class="text-center mt-3">
        <div class="loading">Loading</div>
        <div class="error-message"></div>
        <div class="sent-message">Pendaftaran Anda Telah Terkirim.</div>
        <button type="submit">Daftar</button>
        </div>
    </form>-->
    <!-- End Reservation Form -->

    <!--</div>-->

</section>
<!-- /Book A Table Section -->

<!-- Testimonials Section -->
<section id="testimonials" class="testimonials section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
    <h2>Testimoni</h2>
    <p>Temukan kesan tentang program KKN dan KKP kami</p>
    </div><!-- End Section Title -->

    <div class="container" data-aos="fade-up" data-aos-delay="100">

    <div class="swiper init-swiper" data-speed="600" data-delay="5000" data-breakpoints="{ &quot;320&quot;: { &quot;slidesPerView&quot;: 1, &quot;spaceBetween&quot;: 40 }, &quot;1200&quot;: { &quot;slidesPerView&quot;: 3, &quot;spaceBetween&quot;: 40 } }">
        <script type="application/json" class="swiper-config">
        {
            "loop": true,
            "speed": 600,
            "autoplay": {
            "delay": 5000
            },
            "slidesPerView": "auto",
            "pagination": {
            "el": ".swiper-pagination",
            "type": "bullets",
            "clickable": true
            },
            "breakpoints": {
            "320": {
                "slidesPerView": 1,
                "spaceBetween": 40
            },
            "1200": {
                "slidesPerView": 3,
                "spaceBetween": 20
            }
            }
        }
        </script>
        <div class="swiper-wrapper">

        <div class="swiper-slide">
            <div class="testimonial-item" "="">
        <p>
            <i class=" bi bi-quote quote-icon-left"></i>
            <span>KKP memberikan saya kesempatan untuk menerapkan pengetahuan akademis dalam situasi nyata industri. Saya belajar banyak tentang praktik yang relevan dalam bidang studi saya.</span>
            <i class="bi bi-quote quote-icon-right"></i>
            </p>
            <img src="Home/assets/img/testimonials/annisa.jpg" class="testimonial-img" alt="">
            <h3>Annisa Saputri</h3>
            <h4>Mahasiswa</h4>
            </div>
        </div><!-- End testimonial item -->

        <div class="swiper-slide">
            <div class="testimonial-item">
            <p>
                <i class="bi bi-quote quote-icon-left"></i>
                <span>Program KKN membuka mata saya terhadap tantangan nyata yang dihadapi oleh masyarakat. Ini adalah pengalaman berharga yang tidak akan saya lupakan.</span>
                <i class="bi bi-quote quote-icon-right"></i>
            </p>
            <img src="Home/assets/img/testimonials/Fitriani.jpg" class="testimonial-img" alt="">
            <h3>Fitriani</h3>
            <h4>Mahasiswa</h4>
            </div>
        </div><!-- End testimonial item -->

        <div class="swiper-slide">
            <div class="testimonial-item">
            <p>
                <i class="bi bi-quote quote-icon-left"></i>
                <span>Partisipasi dalam program KKP tidak hanya meningkatkan pemahaman saya tentang industri, tetapi juga memberi saya kesempatan untuk memberikan kontribusi positif kepada perusahaan tempat saya magang.</span>
                <i class="bi bi-quote quote-icon-right"></i>
            </p>
            <img src="Home/assets/img/testimonials/ica.jpg" class="testimonial-img" alt="">
            <h3>Ica Marica</h3>
            <h4>Mahasiswa</h4>
            </div>
        </div><!-- End testimonial item -->

        <div class="swiper-slide">
            <div class="testimonial-item">
            <p>
                <i class="bi bi-quote quote-icon-left"></i>
                <span>KKN memberi saya perspektif baru tentang kehidupan masyarakat pedesaan. Saya merasa lebih terhubung dengan realitas sosial di sekitar saya."</span>
                <i class="bi bi-quote quote-icon-right"></i>
            </p>
            <img src="Home/assets/img/testimonials/rizkyana.jpg" class="testimonial-img" alt="">
            <h3>Rizkyana</h3>
            <h4>Mahasiswa</h4>
            </div>
        </div><!-- End testimonial item -->

        <div class="swiper-slide">
            <div class="testimonial-item">
            <p>
                <i class="bi bi-quote quote-icon-left"></i>
                <span>KKP memberikan saya kesempatan untuk menerapkan pengetahuan akademis dalam situasi nyata industri. Saya belajar banyak tentang praktik yang relevan dalam bidang studi saya.</span>
                <i class="bi bi-quote quote-icon-right"></i>
            </p>
            <img src="Home/assets/img/testimonials/chafeera.jpg" class="testimonial-img" alt="">
            <h3>Syafeera</h3>
            <h4>Mahasiswa</h4>
            </div>
        </div><!-- End testimonial item -->

        </div>
        <div class="swiper-pagination"></div>
    </div>

    </div>

</section><!-- /Testimonials Section -->

<!-- Gallery Section -->
<!--<section id="gallery" class="gallery section">-->

    <!-- Section Title -->
    <!--<div class="container section-title" data-aos="fade-up">
    <h2>Gallery</h2>
    <p>Some photos from Our Restaurant</p>
    </div>-->
    <!-- End Section Title -->

    <!--<div class="container-fluid" data-aos="fade-up" data-aos-delay="100">

    <div class="row g-0">

        <div class="col-lg-3 col-md-4">
        <div class="gallery-item">
            <a href="assets/img/gallery/gallery-1.jpg" class="glightbox" data-gallery="images-gallery">
            <img src="Home/assets/img/gallery/gallery-1.jpg" alt="" class="img-fluid">
            </a>
        </div>
        </div>-->
        <!-- End Gallery Item -->

        <!--<div class="col-lg-3 col-md-4">
        <div class="gallery-item">
            <a href="assets/img/gallery/gallery-2.jpg" class="glightbox" data-gallery="images-gallery">
            <img src="Home/assets/img/gallery/gallery-2.jpg" alt="" class="img-fluid">
            </a>
        </div>
        </div>-->
        <!-- End Gallery Item -->

        <!--<div class="col-lg-3 col-md-4">
        <div class="gallery-item">
            <a href="assets/img/gallery/gallery-3.jpg" class="glightbox" data-gallery="images-gallery">
            <img src="Home/assets/img/gallery/gallery-3.jpg" alt="" class="img-fluid">
            </a>
        </div>
        </div>-->
        <!-- End Gallery Item -->

        <!--<div class="col-lg-3 col-md-4">
        <div class="gallery-item">
            <a href="assets/img/gallery/gallery-4.jpg" class="glightbox" data-gallery="images-gallery">
            <img src="Home/assets/img/gallery/gallery-4.jpg" alt="" class="img-fluid">
            </a>
        </div>
        </div>-->
        <!-- End Gallery Item -->

        <!--<div class="col-lg-3 col-md-4">
        <div class="gallery-item">
            <a href="assets/img/gallery/gallery-5.jpg" class="glightbox" data-gallery="images-gallery">
            <img src="Home/assets/img/gallery/gallery-5.jpg" alt="" class="img-fluid">
            </a>
        </div>
        </div>-->
        <!-- End Gallery Item -->

        <!--<div class="col-lg-3 col-md-4">
        <div class="gallery-item">
            <a href="assets/img/gallery/gallery-6.jpg" class="glightbox" data-gallery="images-gallery">
            <img src="Home/assets/img/gallery/gallery-6.jpg" alt="" class="img-fluid">
            </a>
        </div>
        </div>-->
        <!-- End Gallery Item -->

        <!--<div class="col-lg-3 col-md-4">
        <div class="gallery-item">
            <a href="assets/img/gallery/gallery-7.jpg" class="glightbox" data-gallery="images-gallery">
            <img src="Home/assets/img/gallery/gallery-7.jpg" alt="" class="img-fluid">
            </a>
        </div>
        </div>-->
        <!-- End Gallery Item -->

        <!--<div class="col-lg-3 col-md-4">
        <div class="gallery-item">
            <a href="assets/img/gallery/gallery-8.jpg" class="glightbox" data-gallery="images-gallery">
            <img src="Home/assets/img/gallery/gallery-8.jpg" alt="" class="img-fluid">
            </a>
        </div>
        </div>-->
        <!-- End Gallery Item -->

    <!--</div>

    </div>

</section>-->
<!-- /Gallery Section -->


<!-- Contact Section -->
<section id="contact" class="contact section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
    <h2>LOKASI</h2>
    <p>Kampus Global Institute</p>
    </div><!-- End Section Title -->
    <div class="mb-5" data-aos="fade-up" data-aos-delay="200">
    <iframe style="border:0; width: 100%; height: 400px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15866.551827042933!2d106.6080643!3d-6.1791919!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69fed8e67cb0ad%3A0x2888b42a70065bd2!2sGlobal%20Institute%20%7C%20Institut%20Teknologi%20dan%20Bisnis%20Bina%20Sarana%20Global!5e0!3m2!1sid!2sid!4v1719574226627!5m2!1sid!2sid" frameborder="0" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div><!-- End Google Maps -->
      
    <!--<div class="container" data-aos="fade-up" data-aos-delay="100">

    <div class="row gy-4">

        <div class="col-lg-4">
        <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="300">
            <i class="bi bi-geo-alt flex-shrink-0"></i>
            <div>
            <h3>Lokasi</h3>
            <p>Jl. Aria Santika No.43, Margasari, Kec. Karawaci, Kota Tangerang, Banten 15113</p>
            </div>
        </div>

        <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="400">
            <i class="bi bi-clock flex-shrink-0"></i>
            <div>
            <h3>Jam Buka</h3>
            <p>Senin - Minggu :<br>08.00 - 22.000</p>
            </div>
        </div>

        <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="400">
            <i class="bi bi-telephone flex-shrink-0"></i>
            <div>
            <h3>Telepon</h3>
            <p>(021) 5522727</p>
            </div>
        </div>

        <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="500">
            <i class="bi bi-envelope flex-shrink-0"></i>
            <div>
            <h3>Email</h3>
            <p>kampus@global.ac.id</p>
            </div>
        </div>

        </div>

        <div class="col-lg-8">
        <form action="forms/contact.php" method="post" class="php-email-form" data-aos="fade-up" data-aos-delay="200">
            <div class="row gy-4">

            <div class="col-md-6">
                <input type="text" name="name" class="form-control" placeholder="Your Name" required="">
            </div>

            <div class="col-md-6 ">
                <input type="email" class="form-control" name="email" placeholder="Your Email" required="">
            </div>

            <div class="col-md-12">
                <input type="text" class="form-control" name="subject" placeholder="Subject" required="">
            </div>

            <div class="col-md-12">
                <textarea class="form-control" name="message" rows="6" placeholder="Message" required=""></textarea>
            </div>

            <div class="col-md-12 text-center">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>

                <button type="submit">Send Message</button>
            </div>

            </div>
        </form>
        </div>

    </div>

    </div>-->

</section><!-- /Contact Section -->

</main>
</asp:Content>