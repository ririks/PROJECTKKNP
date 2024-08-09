<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="FrontKKP.aspx.cs" Inherits="FrontKKP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>KKP</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class="main">
    <section></section>
    <section id="book-a-table" class="book-a-table section">
    <!-- Section Title -->
      
    <div class="container section-title" data-aos="fade-up">
        <h2>Formulir</h2>
        <p>Kuliah Kerja Praktek</p>
    </div>
    <!-- End Section Title -->

    <div class="container" data-aos="fade-up" data-aos-delay="100">
        <form method="post" role="form" runat="server">
            <div class="row gy-4">
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
                <hr />
                <div class="col-lg-6 col-md-12">
                    <label>Nama Perusahaan/Instansi</label>
                    <asp:TextBox ID="tNP" runat="server" class="form-control" placeholder="Masukkan Nama Perusahaan/Instansi" />
                    <asp:RequiredFieldValidator ID="rfvNP" runat="server" ControlToValidate="tNP" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                </div>
                <div class="col-lg-6 col-md-12">
                    <label>Alamat Perusahaan/Instansi</label>
                    <asp:TextBox ID="tAlamat" runat="server" class="form-control" placeholder="Masukkan Alamat Perusahaan/Instansi" />
                    <asp:RequiredFieldValidator ID="rfvAlamat" runat="server" ControlToValidate="tAlamat" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                </div>
                <div class="col-lg-6 col-md-12">
                    <label>Judul Kegiatan/Penelitian</label>
                    <asp:TextBox ID="tJudul" runat="server" class="form-control" placeholder="Masukkan Judul Kegiatan/Penelitian" />
                    <asp:RequiredFieldValidator ID="rfvJudul" runat="server" ControlToValidate="tJudul" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                </div>
                <div class="col-lg-6 col-md-12">
                    <label>Durasi Kegiatan</label>
                    <asp:TextBox ID="tDurasi" runat="server" class="form-control" placeholder="Masukkan Durasi Kegiatan (ex: 3 bulan)" />
                    <asp:RequiredFieldValidator ID="rfvDurasi" runat="server" ControlToValidate="tDurasi" ErrorMessage="Field ini wajib diisi." ForeColor="#ff373d" />
                </div>
                  
                <div class="text-center mt-4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Daftar" CssClass="btn btn-outline-primary"   OnClick="btnSubmit_Click" />
                </div>
            </div>
        </form>
        <!-- End Reservation Form -->
    </div>
    </section>
</main>
</asp:Content>
