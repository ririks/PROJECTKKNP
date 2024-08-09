<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="FrontKKN.aspx.cs" Inherits="FrontKKN"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>KKN</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class="main">
    <section></section>
    <section id="book-a-table" class="book-a-table section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>Formulir</h2>
            <p>Kuliah Kerja Nyata</p>
        </div>
        <!-- End Section Title -->

        <div class="container" data-aos="fade-up" data-aos-delay="100">
            <form method="post" role="form"  runat="server">
                <div class="row gy-4">
                    <div class="col-lg-4 col-md-6">
                        <label>Nama Kelompok</label>
                        <asp:TextBox ID="tNamaKel" runat="server" class="form-control" placeholder="Masukkan Nama Kelompok" />
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="tNamaKel" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>Tempat Penelitian</label>
                        <asp:TextBox ID="tTemPen" runat="server" class="form-control" placeholder="Masukkan Nama Desa/Tempat" />
                        <asp:RequiredFieldValidator ID="rfvTemPen" runat="server" ControlToValidate="tTemPen" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>Lokasi/Alamat Lengkap</label>
                        <asp:TextBox ID="tAlamat" runat="server" class="form-control" placeholder="Masukkan Alamat Desa" />
                        <asp:RequiredFieldValidator ID="rfvAlamat" runat="server" ControlToValidate="tAlamat" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>Judul Kegiatan/Penelitian</label>
                        <asp:TextBox ID="tJudul" runat="server" class="form-control" placeholder="Masukkan Judul Kegiatan/Penelitian" />
                        <asp:RequiredFieldValidator ID="rfvJudul" runat="server" ControlToValidate="tJudul" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>Durasi Kegiatan</label>
                        <asp:TextBox ID="tDurasi" runat="server" class="form-control" placeholder="Masukkan Durasi Kegiatan (ex: 1 bulan)" />
                        <asp:RequiredFieldValidator ID="rfvDurasi" runat="server" ControlToValidate="tDurasi" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <hr />
                    <label class="text-center">Ketua Kelompok</label>
                    <div class="col-lg-4 col-md-6">
                        <label>NIM</label>
                        <asp:TextBox ID="tNim" runat="server" class="form-control" placeholder="Masukkan NIM" />
                        <asp:RequiredFieldValidator ID="rfvNim" runat="server" ControlToValidate="tNim" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>Nama Mahasiswa</label>
                        <asp:TextBox ID="tNama" runat="server" class="form-control" placeholder="Masukkan Nama Mahasiswa" />
                        <asp:RequiredFieldValidator ID="rfvNama" runat="server" ControlToValidate="tNama" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>Kelas</label>
                        <asp:TextBox ID="tKelas" runat="server" class="form-control" placeholder="Masukkan Kelas" />
                        <asp:RequiredFieldValidator ID="rfvKelas" runat="server" ControlToValidate="tKelas" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>Program Studi</label>
                        <asp:TextBox ID="tProdi" runat="server" class="form-control" placeholder="Masukkan Program Studi" />
                        <asp:RequiredFieldValidator ID="rfvProdi" runat="server" ControlToValidate="tProdi" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>Fakultas</label>
                        <asp:TextBox ID="tFakultas" runat="server" class="form-control" placeholder="Masukkan Fakultas (ex: FTIK)" />
                        <asp:RequiredFieldValidator ID="rfvFakultas" runat="server" ControlToValidate="tFakultas" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>Angkatan</label>
                        <asp:TextBox ID="tAngkatan" runat="server" class="form-control" placeholder="Masukkan Tahun Masuk (ex: 2022)" />
                        <asp:RequiredFieldValidator ID="rfvAngkatan" runat="server" ControlToValidate="tAngkatan" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>Jumlah SKS</label>
                        <asp:TextBox ID="tSks" runat="server" class="form-control" placeholder="Masukkan Jumlah SKS" />
                        <asp:RequiredFieldValidator ID="rfvSks" runat="server" ControlToValidate="tSks" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <label>IPK Sementara</label>
                        <asp:TextBox ID="tIpk" runat="server" class="form-control" placeholder="Masukkan IPK (ex: 4.00)" />
                        <asp:RequiredFieldValidator ID="rfvIpk" runat="server" ControlToValidate="tIpk" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <br />
                        <asp:Button ID="btnAdd" runat="server" Text="+ Tambahkan Anggota" OnClientClick="showAdditionalMembers(); return false;" CssClass="btn btn-outline-secondary" />
                    </div>
                    <hr />
                    <!-- Panel with hidden elements -->
                    <div id="additionalMembers" style="display: none;">
                        <div class="row gy-4">
                            <label class="text-center">Anggota 1</label>
                            <div class="col-lg-4 col-md-6">
                                <label>NIM</label>
                                <asp:TextBox ID="tNim2" runat="server" class="form-control" placeholder="Masukkan NIM" />
                                <asp:RequiredFieldValidator ID="rfvNim2" runat="server" ControlToValidate="tNim2" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Nama Mahasiswa</label>
                                <asp:TextBox ID="tNama2" runat="server" class="form-control" placeholder="Masukkan Nama Mahasiswa" />
                                <asp:RequiredFieldValidator ID="rfvNama2" runat="server" ControlToValidate="tNama2" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Kelas</label>
                                <asp:TextBox ID="tKelas2" runat="server" class="form-control" placeholder="Masukkan Kelas" />
                                <asp:RequiredFieldValidator ID="rfvKelas2" runat="server" ControlToValidate="tKelas2" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Program Studi</label>
                                <asp:TextBox ID="tProdi2" runat="server" class="form-control" placeholder="Masukkan Program Studi" />
                                <asp:RequiredFieldValidator ID="rfvProdi2" runat="server" ControlToValidate="tProdi2" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Fakultas</label>
                                <asp:TextBox ID="tFakultas2" runat="server" class="form-control" placeholder="Masukkan Fakultas (ex: FTIK)" />
                                <asp:RequiredFieldValidator ID="rfvFakultas2" runat="server" ControlToValidate="tFakultas2" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Angkatan</label>
                                <asp:TextBox ID="tAngkatan2" runat="server" class="form-control" placeholder="Masukkan Tahun Masuk (ex: 2022)" />
                                <asp:RequiredFieldValidator ID="rfvAngkatan2" runat="server" ControlToValidate="tAngkatan2" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Jumlah SKS</label>
                                <asp:TextBox ID="tSks2" runat="server" class="form-control" placeholder="Masukkan Jumlah SKS" />
                                <asp:RequiredFieldValidator ID="rfvSks2" runat="server" ControlToValidate="tSks2" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>IPK Sementara</label>
                                <asp:TextBox ID="tIpk2" runat="server" class="form-control" placeholder="Masukkan IPK (ex: 4.00)" />
                                <asp:RequiredFieldValidator ID="rfvIpk2" runat="server" ControlToValidate="tIpk2" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <hr />
                            <label class="text-center">Anggota 2</label>
                            <div class="col-lg-4 col-md-6">
                                <label>NIM</label>
                                <asp:TextBox ID="tNim3" runat="server" class="form-control" placeholder="Masukkan NIM" />
                                <asp:RequiredFieldValidator ID="rfvNim3" runat="server" ControlToValidate="tNim3" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Nama Mahasiswa</label>
                                <asp:TextBox ID="tNama3" runat="server" class="form-control" placeholder="Masukkan Nama Mahasiswa" />
                                <asp:RequiredFieldValidator ID="rfvNama3" runat="server" ControlToValidate="tNama3" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Kelas</label>
                                <asp:TextBox ID="tKelas3" runat="server" class="form-control" placeholder="Masukkan Kelas" />
                                <asp:RequiredFieldValidator ID="rfvKelas3" runat="server" ControlToValidate="tKelas3" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Program Studi</label>
                                <asp:TextBox ID="tProdi3" runat="server" class="form-control" placeholder="Masukkan Program Studi" />
                                <asp:RequiredFieldValidator ID="rfvProdi3" runat="server" ControlToValidate="tProdi3" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Fakultas</label>
                                <asp:TextBox ID="tFakultas3" runat="server" class="form-control" placeholder="Masukkan Fakultas (ex: FTIK)" />
                                <asp:RequiredFieldValidator ID="rfvFakultas3" runat="server" ControlToValidate="tFakultas3" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Angkatan</label>
                                <asp:TextBox ID="tAngkatan3" runat="server" class="form-control" placeholder="Masukkan Tahun Masuk (ex: 2022)" />
                                <asp:RequiredFieldValidator ID="rfvAngkatan3" runat="server" ControlToValidate="tAngkatan3" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Jumlah SKS</label>
                                <asp:TextBox ID="tSks3" runat="server" class="form-control" placeholder="Masukkan Jumlah SKS" />
                                <asp:RequiredFieldValidator ID="rfvSks3" runat="server" ControlToValidate="tSKs3" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>IPK Sementara</label>
                                <asp:TextBox ID="tIpk3" runat="server" class="form-control" placeholder="Masukkan IPK (ex: 4.00)" />
                                <asp:RequiredFieldValidator ID="rfvIpk3" runat="server" ControlToValidate="tIpk3" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <hr />
                            <label class="text-center">Anggota 3</label>
                            <div class="col-lg-4 col-md-6">
                                <label>NIM</label>
                                <asp:TextBox ID="tNim4" runat="server" class="form-control" placeholder="Masukkan NIM" />
                                <asp:RequiredFieldValidator ID="rfvNim4" runat="server" ControlToValidate="tNim4" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Nama Mahasiswa</label>
                                <asp:TextBox ID="tNama4" runat="server" class="form-control" placeholder="Masukkan Nama Mahasiswa" />
                                <asp:RequiredFieldValidator ID="rfvNama4" runat="server" ControlToValidate="tNama4" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Kelas</label>
                                <asp:TextBox ID="tKelas4" runat="server" class="form-control" placeholder="Masukkan Kelas" />
                                <asp:RequiredFieldValidator ID="rfvKelas4" runat="server" ControlToValidate="tKelas4" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Program Studi</label>
                                <asp:TextBox ID="tProdi4" runat="server" class="form-control" placeholder="Masukkan Program Studi" />
                                <asp:RequiredFieldValidator ID="rfvProdi4" runat="server" ControlToValidate="tProdi4" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Fakultas</label>
                                <asp:TextBox ID="tFakultas4" runat="server" class="form-control" placeholder="Masukkan Fakultas (ex: FTIK)" />
                                <asp:RequiredFieldValidator ID="rfvFakultas4" runat="server" ControlToValidate="tFakultas4" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Angkatan</label>
                                <asp:TextBox ID="tAngkatan4" runat="server" class="form-control" placeholder="Masukkan Tahun Masuk (ex: 2022)" />
                                <asp:RequiredFieldValidator ID="rfvAngkatan4" runat="server" ControlToValidate="tAngkatan4" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Jumlah SKS</label>
                                <asp:TextBox ID="tSks4" runat="server" class="form-control" placeholder="Masukkan Jumlah SKS" />
                                <asp:RequiredFieldValidator ID="rfvSks4" runat="server" ControlToValidate="tSks4" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>IPK Sementara</label>
                                <asp:TextBox ID="tIpk4" runat="server" class="form-control" placeholder="Masukkan IPK (ex: 4.00)" />
                                <asp:RequiredFieldValidator ID="rfvIpk4" runat="server" ControlToValidate="tIpk4" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <hr />
                            <label class="text-center">Anggota 4</label>
                            <div class="col-lg-4 col-md-6">
                                <label>NIM</label>
                                <asp:TextBox ID="tNim5" runat="server" class="form-control" placeholder="Masukkan NIM" />
                                <asp:RequiredFieldValidator ID="rfvNim5" runat="server" ControlToValidate="tNim5" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Nama Mahasiswa</label>
                                <asp:TextBox ID="tNama5" runat="server" class="form-control" placeholder="Masukkan Nama Mahasiswa" />
                                <asp:RequiredFieldValidator ID="rfvNama5" runat="server" ControlToValidate="tNama5" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Kelas</label>
                                <asp:TextBox ID="tKelas5" runat="server" class="form-control" placeholder="Masukkan Kelas" />
                                <asp:RequiredFieldValidator ID="rfvKelas5" runat="server" ControlToValidate="tKelas5" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Program Studi</label>
                                <asp:TextBox ID="tProdi5" runat="server" class="form-control" placeholder="Masukkan Program Studi" />
                                <asp:RequiredFieldValidator ID="rfvProdi5" runat="server" ControlToValidate="tProdi5" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>q
                            <div class="col-lg-4 col-md-6">
                                <label>Fakultas</label>
                                <asp:TextBox ID="tFakultas5" runat="server" class="form-control" placeholder="Masukkan Fakultas (ex: FTIK)" />
                                <asp:RequiredFieldValidator ID="rfvFakultas5" runat="server" ControlToValidate="tFakultas5" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Angkatan</label>
                                <asp:TextBox ID="tAngkatan5" runat="server" class="form-control" placeholder="Masukkan Tahun Masuk (ex: 2022)" />
                                <asp:RequiredFieldValidator ID="rfvAngkatan5" runat="server" ControlToValidate="tAngkatan5" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>Jumlah SKS</label>
                                <asp:TextBox ID="tSks5" runat="server" class="form-control" placeholder="Masukkan Jumlah SKS" />
                                <asp:RequiredFieldValidator ID="rfvSKs5" runat="server" ControlToValidate="tSKs5" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <label>IPK Sementara</label>
                                <asp:TextBox ID="tIpk5" runat="server" class="form-control" placeholder="Masukkan IPK (ex: 4.00)" />
                                <asp:RequiredFieldValidator ID="rfvIpk5" runat="server" ControlToValidate="tIpk5" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                            </div>
                        </div>
                        </div>
                    </div>
                    <!-- End hidden elements -->
                    <div class="text-center mt-4">
                        <asp:Button ID="btnSubmit" runat="server" Text=" Daftar " CssClass="btn btn-outline-primary" OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </form>
            <!-- End Reservation Form -->
        </div>
    </section>
</main>
</asp:Content>