<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="DemoApplicationRegister.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ShowFooter="True" DataKeyNames="Uid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="Uid" InsertVisible="False" SortExpression="Uid">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Uid") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Uid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox14" runat="server" placeholder="Enter Name"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dob" SortExpression="Dob">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Dob") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Dob") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextBox15" runat="server" placeholder="dd/MM/yyyy"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age" SortExpression="Age">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextBox16" runat="server" placeholder="Enter Age"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                        <EditItemTemplate>
                           <asp:DropDownList ID="ddlRowEditGender" runat="server" Text='<%# Bind("Gender") %>'>
                                 <%--<asp:ListItem Selected="True" Text="-Select-" Value="0"></asp:ListItem>--%>
                                 <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                 <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                             </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                             <asp:DropDownList ID="DropDownList1" runat="server">
                                 <asp:ListItem Selected="True" Text="-Select-" Value="0"></asp:ListItem>
                                 <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                 <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                             </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Adhar" SortExpression="Adhar">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Adhar") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Adhar") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextBox17" runat="server" placeholder="Enter Adhar"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pan" SortExpression="Pan">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Pan") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Pan") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextBox18" runat="server" placeholder="Enter Pan"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="State" SortExpression="State">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextBox19" runat="server" placeholder="Enter State"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City" SortExpression="City">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextBox20" runat="server" placeholder="Enter City"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salary" SortExpression="Salary">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Salary") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("Salary") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextBox21" runat="server" placeholder="Enter Salary"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Marriedstatus" SortExpression="Marriedstatus">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Marriedstatus") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("Marriedstatus") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                             <asp:DropDownList ID="DropDownList2" runat="server">
                                  <asp:ListItem Selected="True" Text="-Select-" Value="0"></asp:ListItem>
                                 <asp:ListItem Text="Single" Value="1"></asp:ListItem>
                                 <asp:ListItem Text="Married" Value="2"></asp:ListItem>
                             </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextBox22" runat="server" placeholder="Enter Email"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextBox23" runat="server" placeholder="Enter Phone"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Upass" SortExpression="Upass">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Upass") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("Upass") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextBox24" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
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
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterConnectionString %>" DeleteCommand="DELETE FROM [EmpRegister] WHERE [Uid] = @Uid" InsertCommand="INSERT INTO [EmpRegister] ([Name], [Dob], [Age], [Gender], [Adhar], [Pan], [State], [City], [Salary], [Marriedstatus], [Email], [Phone], [Upass]) VALUES (@Name, @Dob, @Age, @Gender, @Adhar, @Pan, @State, @City, @Salary, @Marriedstatus, @Email, @Phone, @Upass)" SelectCommand="SELECT [Uid], [Name], [Dob], [Age], [Gender], [Adhar], [Pan], [State], [City], [Salary], [Marriedstatus], [Email], [Phone], [Upass] FROM [EmpRegister]" UpdateCommand="UPDATE [EmpRegister] SET [Name] = @Name, [Dob] = @Dob, [Age] = @Age, [Gender] = @Gender, [Adhar] = @Adhar, [Pan] = @Pan, [State] = @State, [City] = @City, [Salary] = @Salary, [Marriedstatus] = @Marriedstatus, [Email] = @Email, [Phone] = @Phone, [Upass] = @Upass WHERE [Uid] = @Uid">
                <DeleteParameters>
                    <asp:Parameter Name="Uid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Dob" Type="DateTime" />
                    <asp:Parameter Name="Age" Type="Double" />
                    <asp:Parameter Name="Gender" Type="Int32" />
                    <asp:Parameter Name="Adhar" Type="String" />
                    <asp:Parameter Name="Pan" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Salary" Type="Double" />
                    <asp:Parameter Name="Marriedstatus" Type="Int32" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Upass" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Dob" Type="DateTime" />
                    <asp:Parameter Name="Age" Type="Double" />
                    <asp:Parameter Name="Gender" Type="Int32" />
                    <asp:Parameter Name="Adhar" Type="String" />
                    <asp:Parameter Name="Pan" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Salary" Type="Double" />
                    <asp:Parameter Name="Marriedstatus" Type="Int32" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Upass" Type="String" />
                    <asp:Parameter Name="Uid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
