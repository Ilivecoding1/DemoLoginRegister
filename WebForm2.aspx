<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="DemoApplicationRegister.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
            <h2>Employee Details Using Grid View</h2>
            <h3>Welcome,<asp:Label ID="lblUsername" runat="server" Text="" ForeColor="Maroon"></asp:Label></h3>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="true" PageSize="3" Font-Size="Smaller" OnPageIndexChanging="GridView1_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Dob" HeaderText="DOB" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Adhar" HeaderText="Adhar" />
                    <asp:BoundField DataField="Pan" HeaderText="PAN" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" />
                    <asp:BoundField DataField="Marriedstatus" HeaderText="MarriedStatus" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:BoundField DataField="FilesName" HeaderText="Image Name" />
                    <asp:ImageField DataImageUrlField="FilesName" HeaderText="Image" ControlStyle-Height="50" ControlStyle-Width="50">
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
            
            <br />
             <h2>Employee Details Using Repeater</h2>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td><img src='../<%#Eval("FilesName") %>' height="100" width="100" /></td><td>
                                <table>
                                    <tr><td>Name</td><td>
                                        <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name") %>'></asp:Label></td></tr>
                                    <tr><td>DOB</td><td>
                                        <asp:Label ID="lblDOB" runat="server" Text='<%#Eval("Dob") %>'></asp:Label></td></tr>
                                </table>
                                          </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>
