<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DemoApplicationRegister.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Demo</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%-- boot strap local folder path --%>
    <%--<link href="bootstrap-4.6.1-dist/css/bootstrap.min.css" rel="stylesheet" />--%>
    <%-- boot strap css cdn --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <%-- jquery local folder path --%>
    <script src="JScript/jquery-3.6.0.min.js"></script>
    <%-- jquery cdn --%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="container">
             <h2>Employee Form</h2>
            <br />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                     <table>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" placeholder="Enter name"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" ErrorMessage="Invalid Email" ForeColor="Red" Font-Size="Small" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="Enter phone"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="[0-9]{10}" ErrorMessage="Invalid Phone" ForeColor="Red" Font-Size="Small" ControlToValidate="txtPhone"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>D.O.B.</td>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:TextBox ID="txtDOB" runat="server" OnTextChanged="txtDOB_TextChanged" placeholder="dd/mm/yyyy"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/cal-images.jpeg" Height="25" Width="40" OnClick="ImageButton1_Click" />
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                   <%-- <td>Your Age</td>
                    <td>
                        <asp:Label ID="lblAge" runat="server" Text=""></asp:Label></td>--%>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton ID="rdoMale" runat="server" Text="Male" GroupName="rdoGender" />
                        <asp:RadioButton ID="rdoFemale" runat="server" Text="Female" GroupName="rdoGender" />
                    </td>
                </tr>
                <tr>
                    <td>Marital Status</td>
                    <td>
                        <asp:DropDownList ID="ddlMarried" runat="server">
                            <asp:ListItem Selected="True" Value="0">-Please Select-</asp:ListItem>
                            <asp:ListItem Value="1">Single</asp:ListItem>
                            <asp:ListItem Value="2">Married</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Documents</td>
                    <td>
                        <asp:CheckBox ID="chkAadhar" runat="server" Text="Aadhar" />
                        <asp:CheckBox ID="chkPAN" runat="server" Text="PAN" />
                    </td>
                </tr>
                <tr>
                    <td>Salary</td>
                    <td>
                        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox></td>
                </tr>
                <%--<tr>
                    <td>State</td>
                    <td>
                        <asp:DropDownList ID="ddlState" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <asp:DropDownList ID="ddlCity" runat="server"></asp:DropDownList></td>
                </tr>--%>
                <tr>
                    <td>Profile Pic</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit Details" OnClick="btnSubmit_Click" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <a href="Login.aspx" target="_blank">Go to Login</a></td>
                </tr>
            </table>
            <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Maroon"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
           
           
            <br />
            <br />
            
        </div>

        <div class="container-fluid">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" Font-Size="Smaller" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Uid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="Uid" InsertVisible="False" SortExpression="Uid">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Uid") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Uid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dob" SortExpression="Dob">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Dob") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Dob") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age" SortExpression="Age">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlGender" runat="server" Text='<%# Bind("Gender") %>'>
                                <%--<asp:ListItem Selected="True" Text="Select Gender" Value="0"></asp:ListItem>--%>
                                <asp:ListItem  Text="Male" Value="1"></asp:ListItem>
                                <asp:ListItem  Text="Female" Value="2"></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Adhar" SortExpression="Adhar">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Adhar") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Adhar") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pan" SortExpression="Pan">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Pan") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Pan") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="State" SortExpression="State">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City" SortExpression="City">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salary" SortExpression="Salary">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Salary") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("Salary") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Marriedstatus" SortExpression="Marriedstatus">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlMarried" runat="server" Text='<%# Bind("Marriedstatus") %>'>
                                <%--<asp:ListItem Selected="True" Text="Select Status" Value="0"></asp:ListItem>--%>
                                <asp:ListItem  Text="Single" Value="1"></asp:ListItem>
                                <asp:ListItem  Text="Married" Value="2"></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("Marriedstatus") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Upass" SortExpression="Upass">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Upass") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("Upass") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterConnectionString2 %>" DeleteCommand="DELETE FROM [EmpRegister] WHERE [Uid] = @Uid" InsertCommand="INSERT INTO [EmpRegister] ([Name], [Dob], [Age], [Gender], [Adhar], [Pan], [State], [City], [Salary], [Marriedstatus], [Email], [Phone], [Upass]) VALUES (@Name, @Dob, @Age, @Gender, @Adhar, @Pan, @State, @City, @Salary, @Marriedstatus, @Email, @Phone, @Upass)" SelectCommand="SELECT [Uid], [Name], [Dob], [Age],case when  [Gender]=1 then 'Male' else 'Female' end as [Gender], [Adhar], [Pan], [State], [City], [Salary],case when [Marriedstatus]=1 then 'Single' else 'Married' end as [Marriedstatus], [Email], [Phone], [Upass] FROM [EmpRegister]" UpdateCommand="UPDATE [EmpRegister] SET [Name] = @Name, [Dob] = @Dob, [Age] = @Age, [Gender] = @Gender, [Adhar] = @Adhar, [Pan] = @Pan, [State] = @State, [City] = @City, [Salary] = @Salary, [Marriedstatus] = @Marriedstatus, [Email] = @Email, [Phone] = @Phone, [Upass] = @Upass WHERE [Uid] = @Uid">
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
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
    <%-- bootstrap local folder js script --%>
    <%--<script src="bootstrap-4.6.1-dist/js/bootstrap.min.js"></script>--%>
    <%-- bootstrap cdn js script --%>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
</body>
</html>
