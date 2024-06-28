<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userLog.aspx.cs" Inherits="FinalSLTB.pages.userLog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/userLog.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
        <div class="main">
        <div class="sub">
            <div class="sub1">
            </div>
            <div class="sub2">
               <div class="content">
                 <form id="form1" runat="server">
                 <h1 style="text-align: center;">Login</h1>
                 <label for="cars">Select User</label><br>
                    <select class="selectUser" id="selectUser">
                    <option value="USER">USER</option>
                    <option value="ADMIN">ADMIN</option>
                    <option value="AGENT">AGENT</option>
                    </select>
                 <p></p>
                 <label for="">UserName</label><br>
                 <asp:TextBox runat="server" ID="userName" placeholder="UserName"/><br>
                 <label for="">Password</label><br>
                 <asp:TextBox runat="server" TextMode="Password"  ID="password" placeholder="Password" />
                 <p>Froget Password?</p>
                 <div style="text-align: center;">
                     <asp:Button runat="server" ID="buttn" Text="LOG-IN" OnClick="Unnamed1_Click" /> 
                 </div>
                 <p style="text-align: center;"><a style="text-decoration: none;color: blue;" href="register.aspx">Already have'nt an account Register</a></p>
                </form>
                 <div style="margin-top: 25px;">
                    <img src="../assert/newlogo.png" width="200" height="60" alt="" srcset="">
                 </div>
               </div>
            </div>
        </div>
    </div>
</body>
</html>
