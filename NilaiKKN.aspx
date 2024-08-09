<%@ Page Title="" Language="C#" MasterPageFile="~/DosenDashboard.master" AutoEventWireup="true" CodeFile="NilaiKKN.aspx.cs" Inherits="NilaiKKN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
    <html>
    <head>
        <title></title>
        <!-- Tambahkan Font Awesome CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMA8SaY6pN1+tKpFylhbfp4lFipNK/XnPa+lb2h" crossorigin="anonymous">
        <style type="text/css">
            .style1 {
                height: 30px;
            }
            .style2 {
                height: 29px;
            }
            table {
                width: 100%;
            }
            td {
                padding: 5px;
            }
            .form-section {
                vertical-align: top;
                width: 33%;
            }
            .btn-pdf {
                background-color: lightblue;
                border: none;
                color: white;
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                width: 100px; 
            }
            .btn-edit {
                background-color: yellow;
                border: none;
                color: black;
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                width: 100px; 
            }
            .btn-save, .btn-update {
                color: white; /* Warna font putih */
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                width: 100px; 
                border: none; /* Remove border */
            }
            .btn-save {
                background-color: blue;
            }
            .btn-update {
                background-color: green;
            }
            .btn-icon {
                margin-right: 8px;
            }
            .button-container {
                text-align: left; /* Menengahkan tombol */
            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="form-section">
                        <table>
                            <tr>
                                <td>Nama Mahasiswa</td>
                                <td>:</td>
                                <td><asp:DropDownList runat="server" ID="ddlNamaMahasiswa"></asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td>Kelas</td>
                                <td>:</td>
                                <td><asp:DropDownList runat="server" ID="ddlKelas"></asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td>Prodi</td>
                                <td>:</td>
                                <td><asp:DropDownList runat="server" ID="ddlProdi"></asp:DropDownList></td>
                            </tr>
                        </table>
                    </td>
                    <td class="form-section">
                        <table>
                            <tr>
                                <td>Disiplin</td>
                                <td>:</td>
                                <td><asp:TextBox runat="server" Text="" ID="txtdisiplin"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Kerja Sama</td>
                                <td>:</td>
                                <td><asp:TextBox runat="server" Text="" ID="txtkerjasama"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Inisiatif</td>
                                <td>:</td>
                                <td><asp:TextBox runat="server" Text="" ID="txtinisiatif"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Kerajinan</td>
                                <td>:</td>
                                <td><asp:TextBox runat="server" Text="" ID="txtkerajinan"></asp:TextBox></td>
                            </tr>
                        </table>
                    </td>
                    <td class="form-section">
                        <table>
                            <tr>
                                <td>Tanggung Jawab</td>
                                <td>:</td>
                                <td><asp:TextBox runat="server" Text="" ID="txttanggungjawab"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Sikap</td>
                                <td>:</td>
                                <td><asp:TextBox runat="server" Text="" ID="txtsikap"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>Laporan</td>
                                <td>:</td>
                                <td><asp:TextBox runat="server" Text="" ID="txtlaporan"></asp:TextBox></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp
                    </td>
                    <td colspan="3" class="style1 button-container">
                        <asp:Button ID="txtsave" Text="Save" runat="server" CssClass="btn btn-save" onclick="txtsave_Click" />
                        <asp:Button ID="txtupdate" runat="server" Text="Update" CssClass="btn btn-update" onclick="txtupdate_Click" Visible="false" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="grc1" runat="server" BackColor="White" BorderColor="#cccccc" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Nama Mahasiswa" DataField="nama_mahasiswa" />
                <asp:BoundField HeaderText="Kelas" DataField="kelas" />
                <asp:BoundField HeaderText="Prodi" DataField="prodi" />
                <asp:BoundField HeaderText="Disiplin" DataField="disiplin" />
                <asp:BoundField HeaderText="Kerja Sama" DataField="kerjasama" />
                <asp:BoundField HeaderText="Inisiatif" DataField="inisiatif" />
                <asp:BoundField HeaderText="Kerajinan" DataField="kerajinan" />
                <asp:BoundField HeaderText="Tanggung Jawab" DataField="tanggung_jawab" />
                <asp:BoundField HeaderText="Sikap" DataField="sikap" />
                <asp:BoundField HeaderText="Laporan" DataField="laporan" />
                <asp:BoundField HeaderText="Total" DataField="total" />
                <asp:BoundField HeaderText="Hasil Akhir" DataField="rata_rata" />
                <asp:BoundField HeaderText="Grade" DataField="grade" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkCetak" runat="server" CommandArgument='<%# Eval("id_kkn") %>' OnClick="lnkCetak_Click" ToolTip="Cetak" CssClass="btn-pdf">
                            <i class="fas fa-print btn-icon"></i> Cetak
                        </asp:LinkButton>
                        <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%# Eval("id_kkn") %>' OnClick="lnkEdit_Click" ToolTip="Edit" CssClass="btn-edit">
                            <i class="fas fa-edit btn-icon"></i> Edit
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="true" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#f1f1f1" />
            <SortedAscendingHeaderStyle BackColor="#007088" />
            <SortedDescendingCellStyle BackColor="#cAc9c9" />
            <SortedDescendingHeaderStyle BackColor="#00547e" />
        </asp:GridView>
        </form>
    </body>
    </html>
</asp:Content>
