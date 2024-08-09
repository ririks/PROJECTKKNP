<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="InputDosen.aspx.cs" Inherits="InputDosen" %>

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
                    ID Dosen
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtid_dosen"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredID" runat="server" 
                        ErrorMessage="Id tidak boleh kosong" ControlToValidate="txtid_dosen" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Nama Dosen
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtNama"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredUserName" runat="server" 
                        ErrorMessage="Nama dosen tidak boleh kosong" ControlToValidate="txtNama" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    NIDN
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtNidn"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredNim" runat="server" 
                        ErrorMessage="NIDN tidak boleh kosong" ControlToValidate="txtNidn" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    No Telp
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtTelp"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredNama" runat="server" 
                        ErrorMessage="No Telp tidak boleh kosong" ControlToValidate="txtTelp" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox runat="server" Text="" ID="txtEmail"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Email tidak boleh kosong" ControlToValidate="txtEmail" 
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
    <asp:BoundField HeaderText="Id Dosen" DataField="id_dosen" />
    <asp:BoundField HeaderText="Nama Dosen" DataField="nama_dosen" />
    <asp:BoundField HeaderText="NIDN" DataField="nidn" />
    <asp:BoundField HeaderText="No Telp" DataField="no_telp" />
    <asp:BoundField HeaderText="Email" DataField="email" />
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

