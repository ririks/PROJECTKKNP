<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="LihatNilai.aspx.cs" Inherits="LihatNilai" %>

<!DOCTYPE html>
<html>
<head>
    <title>Lihat Nilai</title>
    <link href="/Home/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2 class="text-center">Daftar Nilai</h2>
            <div class="mt-3">
                <asp:GridView ID="GridViewKkp" runat="server" AutoGenerateColumns="false" CssClass="table table-striped">
                    <Columns>
                        <asp:BoundField DataField="nama_mahasiswa" HeaderText="Nama Mahasiswa" />
                        <asp:BoundField DataField="kelas" HeaderText="Kelas" />
                        <asp:BoundField DataField="prodi" HeaderText="Prodi" />
                        <asp:BoundField DataField="disiplin" HeaderText="Disiplin" />
                        <asp:BoundField DataField="kerjasama" HeaderText="Kerja Sama" />
                        <asp:BoundField DataField="inisiatif" HeaderText="Inisiatif" />
                        <asp:BoundField DataField="kerajinan" HeaderText="Kerajinan" />
                        <asp:BoundField DataField="tanggung_jawab" HeaderText="Tanggung Jawab" />
                        <asp:BoundField DataField="sikap" HeaderText="Sikap" />
                        <asp:BoundField DataField="prestasi" HeaderText="Prestasi" />
                        <asp:BoundField DataField="total" HeaderText="Total" />
                        <asp:BoundField DataField="rata_rata" HeaderText="Rata-Rata" />
                        <asp:BoundField DataField="grade" HeaderText="Grade" />
                    </Columns>
                </asp:GridView>

                <asp:GridView ID="GridViewKkn" runat="server" AutoGenerateColumns="false" CssClass="table table-striped" Visible="false">
                    <Columns>
                        <asp:BoundField DataField="nama_mahasiswa" HeaderText="Nama Mahasiswa" />
                        <asp:BoundField DataField="kelas" HeaderText="Kelas" />
                        <asp:BoundField DataField="prodi" HeaderText="Prodi" />
                        <asp:BoundField DataField="disiplin" HeaderText="Disiplin" />
                        <asp:BoundField DataField="kerjasama" HeaderText="Kerja Sama" />
                        <asp:BoundField DataField="inisiatif" HeaderText="Inisiatif" />
                        <asp:BoundField DataField="kerajinan" HeaderText="Kerajinan" />
                        <asp:BoundField DataField="tanggung_jawab" HeaderText="Tanggung Jawab" />
                        <asp:BoundField DataField="sikap" HeaderText="Sikap" />
                        <asp:BoundField DataField="laporan" HeaderText="Laporan" />
                        <asp:BoundField DataField="total" HeaderText="Total" />
                        <asp:BoundField DataField="rata_rata" HeaderText="Rata-Rata" />
                        <asp:BoundField DataField="grade" HeaderText="Grade" />
                    </Columns>
                </asp:GridView>

                <asp:Button ID="btnCetakPdf" runat="server" Text="Cetak PDF" CssClass="btn btn-primary mt-3" OnClick="lnkCetak_Click" />
            </div>
        </div>
    </form>
</body>
</html>
