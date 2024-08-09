<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<%-- Add content controls here --%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Manage User</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <form id="form1" runat="server">
            <div class="row">
                <div class="column">
                    <div class="input-box">
                        <span>User ID</span>
                        <asp:TextBox runat="server" Text="" ID="txtuserid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredUserID" runat="server" ErrorMessage="User Id tidak boleh kosong" ControlToValidate="txtuserid" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-box">
                        <span>Username</span>
                        <asp:TextBox runat="server" Text="" ID="txtusername"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredUserName" runat="server" ErrorMessage="Username tidak boleh kosong" ControlToValidate="txtusername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-box">
                      <span>Password</span>
                      <asp:TextBox runat="server" Text="" ID="txtpassword"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="Password tidak boleh kosong" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-box">
                      <span>Confirm Password</span>
                      <asp:TextBox ID="txtconfirm" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtconfirm" ErrorMessage="Confirm tidak boleh kosong" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirm" EnableViewState="False" ErrorMessage="Password tidak Sesuai" ForeColor="Blue"></asp:CompareValidator>
                    </div>
                </div>

                <div class="column">
                    <div class="input-box">
                      <span>Nim</span>
                      <asp:TextBox runat="server" Text="" ID="txtnim"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredNim" runat="server" ErrorMessage="NIM tidak boleh kosong" ControlToValidate="txtnim" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-box">
                      <span>Nama Mahasiswa</span>
                      <asp:TextBox runat="server" Text="" ID="txtnama"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredNama" runat="server" ErrorMessage="Nama Mahasiswa tidak boleh kosong" ControlToValidate="txtnama" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-box">
                      <span>Status</span>
                      <asp:DropDownList runat="server" ID="ddlstatus">
                        <asp:ListItem Text="mahasiswa" Value="mahasiswa"></asp:ListItem>
                        <asp:ListItem Text="admin" Value="admin"></asp:ListItem>
                        <asp:ListItem Text="dosen" Value="dosen"></asp:ListItem>
                      </asp:DropDownList>
                    </div>
                <br />
                <br />
                <div class="column">
                    <div class="flex">
                        <div class="input-box">
                          <asp:Button ID="txtsave" Text="Save" runat="server" CssClass="btn" OnClick="txtsave_Click" />
                        </div>
                        <div class="input-box">
                          <asp:Button ID="txtUpdate" runat="server" Text="Update" CssClass="btn" OnClick="txtUpdate_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

            <asp:GridView ID="grc1" runat="server" CssClass="gridview-container" BackColor="White" BorderColor="#cccccc" BorderStyle="None" BorderWidth="1px" CellPadding="5" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="id_user" />
                    <asp:BoundField HeaderText="User Name" DataField="username" HeaderStyle-Width="100px" />
                    <asp:BoundField HeaderText="NIM" DataField="nim" HeaderStyle-Width="100px" />
                    <asp:BoundField HeaderText="Nama Mahasiswa" DataField="nama_mahasiswa" HeaderStyle-Width="170px" />
                    <asp:BoundField HeaderText="Password" DataField="password" HeaderStyle-Width="100px" />
                    <asp:BoundField HeaderText="Confirm" DataField="confirm_password" HeaderStyle-Width="100px" />
                    <asp:BoundField HeaderText="Status" DataField="status" />
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkdelete" runat="server" CssClass="button" Text="Delete" CommandArgument='<%# Eval("id_user") %>' CausesValidation="false" OnClick="lnkdelete_Click"></asp:LinkButton> 
                            <asp:LinkButton ID="lnkEdit" runat="server" CssClass="button" Text="Edit" CommandArgument='<%# Eval("id_user") %>' CausesValidation="false" OnClick="lnkEdit_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="true" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#f1f1f1" />
                <SortedAscendingHeaderStyle BackColor="#007088" />
                <SortedDescendingCellStyle BackColor="#cAc9c9" />
                <SortedDescendingHeaderStyle BackColor="#00547e" />
            </asp:GridView>
        </form>
      </div>
</asp:Content>