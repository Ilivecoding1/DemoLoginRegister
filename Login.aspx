<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DemoApplicationRegister.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%-- boot strap local folder path --%>
    <%--<link href="bootstrap-4.6.1-dist/css/bootstrap.min.css" rel="stylesheet" />--%>
    <%-- boot strap css cdn --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <%-- jquery local folder path --%>
    <%--<script src="JScript/jquery-3.6.0.min.js"></script>--%>
    <%-- jquery cdn --%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   <script type="text/javascript">
       function ShowPassword(checkBox) {
           var passwordTextBox = document.getElementById('txtPassword');
           if (checkBox.checked == true) {
               passwordTextBox.setAttribute("type", "text");
           }
           else {
               passwordTextBox.setAttribute("type", "password");
           }
       }
   </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- <script type="text/javascript">
                 $(document).ready(function(){
                     alert('Hello your javascript is working fine');
                 });

             </script>--%>
            <h1>-Login Form-</h1>
            <table>
                <tr>
                    <td>Enter Username:</td><td>
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Enter Password:</td><td>
                        <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr><td></td><td>
                    <input type="checkbox" onclick="ShowPassword(this)" />Show Password
                    <br />
                    <asp:CheckBox ID="chkRemember" runat="server" Text="Remember Me?" />
                             </td>
                    <td></td></tr>
                 <tr>
                    <td></td><td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
                </tr>
            </table>
            <div class="container">
                <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label><br />
            <a href="WebForm1.aspx">Go to register page</a>
            </div>
            
        </div>
        <%-- bootstrap local folder js script --%>
    <%--<script src="bootstrap-4.6.1-dist/js/bootstrap.min.js"></script>--%>
    <%-- bootstrap cdn js script --%>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    </form>
     
</body>
</html>
