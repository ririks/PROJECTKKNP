<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="Mahasiswa.aspx.cs" Inherits="Mahasiswa" %>

<%-- Add content controls here --%>

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
    <div>
        <table>
            <tr>
                <td>
                    ID Mahasiswa
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtid_mahasiswa"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredID" runat="server" 
                        ErrorMessage="User Id tidak boleh kosong" ControlToValidate="txtid_mahasiswa" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    NIM
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtNim"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Nama
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtNama"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredNim" runat="server" 
                        ErrorMessage="NIM tidak boleh kosong" ControlToValidate="txtNama" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Kelas
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtKelas"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredNama" runat="server" 
                        ErrorMessage="Nama Mahasiswa tidak boleh kosong" ControlToValidate="txtKelas" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Prodi
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtProdi"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Nama Mahasiswa tidak boleh kosong" ControlToValidate="txtProdi" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Fakultas
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtFakultas"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Nama Mahasiswa tidak boleh kosong" ControlToValidate="txtFakultas" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Konsentrasi
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtKonsen"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Nama Mahasiswa tidak boleh kosong" ControlToValidate="txtKonsen" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Angkatan
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtAngkatan"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Nama Mahasiswa tidak boleh kosong" ControlToValidate="txtAngkatan" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    SKS
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtSKS"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Nama Mahasiswa tidak boleh kosong" ControlToValidate="txtSKS" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
                <td class="auto-style1">
                    &nbsp
                </td>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp
                </td>
                <td colspan="2" class="style1">
                    <asp:Button ID="txtsave" Text="save" runat="server" onclick="txtsave_Click" />
                    <asp:Button ID="txtUpdate" runat="server" onclick="txtUpdate_Click" 
                        Text="Update" Width="45px" />
                </td>
            </tr>
        </table>
    </div>
    <asp:GridView ID="grc1" runat="server" BackColor="White" BorderColor="#cccccc" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="false">
    <Columns>
    <asp:BoundField HeaderText="Id_Mahasiswa" DataField="id_mahasiswa" />
    <asp:BoundField HeaderText="NIM" DataField="nim" />
    <asp:BoundField HeaderText="Nama Mahasiswa" DataField="nama_mahasiswa" />
    <asp:BoundField HeaderText="Kelas" DataField="kelas" />
    <asp:BoundField HeaderText="Prodi" DataField="prodi" />
    <asp:BoundField HeaderText="Fakultas" DataField="fakultas" />
    <asp:BoundField HeaderText="Konsentrasi" DataField="konsentrasi" />
    <asp:BoundField HeaderText="Angkatan" DataField="angkatan" />
    <asp:BoundField HeaderText="SKS" DataField="sks" />
    <asp:TemplateField HeaderText="Action">
    <ItemTemplate>
    <asp:LinkButton ID="lnkdelete" runat="server" Text="Delete" CommandArgument='<% lval("userid")  %>' OnClick="lnkdelete_Click" CausesValidation="false" ></asp:LinkButton> ||
    <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandArgument='<% lval("userid")  %>' OnClick="lnkEdit_Click" CausesValidation="false" ></asp:LinkButton>
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