<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="AdminKKP.aspx.cs" Inherits="AdminKKP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head id="Head1" runat="server">
            <title></title>
            <style type="text/css">
                .style1
                {
                    height: 30px;
                }
                .style2
                {
                    height: 29px;
                }
            </style>
        </head>
    <body>
    <form id="form1" runat="server">
    <asp:GridView ID="grc1" runat="server" BackColor="White" BorderColor="#cccccc" BorderStyle="None"  AutoGenerateColumns="false">
    <Columns>
    <asp:BoundField HeaderText="ID KKP" DataField="id_kkp" />
    <asp:BoundField HeaderText="NIM" DataField="nim" />
    <asp:BoundField HeaderText="Nama Mahasiswa" DataField="nama_mahasiswa" />
    <asp:BoundField HeaderText="Kelas" DataField="kelas" />
    <asp:BoundField HeaderText="Prodi" DataField="prodi" />
    <asp:BoundField HeaderText="Fakultas" DataField="fakultas" />
    <asp:BoundField HeaderText="Angkatam" DataField="angkatan" />
    <asp:BoundField HeaderText="Penempatan Perusahaan" DataField="penempatan" />
    <asp:BoundField HeaderText="Alamat" DataField="alamat" />
    <asp:BoundField HeaderText="Judul Kegiatan" DataField="judul" />
    <asp:BoundField HeaderText="Lama Kegiatan" DataField="lama_kegiatan" />
    <asp:TemplateField HeaderText="Konfirmasi">
        <ItemTemplate>
            <asp:DropDownList runat="server" ID="ddldosen" DataField="nama_dosen" >
            </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                        <asp:Button ID="txtUpdate" runat="server" Text="Update" CssClass="btn" OnClick="txtUpdate_Click" />  
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

