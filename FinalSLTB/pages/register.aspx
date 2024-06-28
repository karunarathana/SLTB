<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FinalSLTB.pages.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/register.css" rel="stylesheet" />
    <title>Register</title>
</head>
<body>
      <div class="main">
        <div class="sub">
            <div class="sub1">
            </div>
            <div class="sub2">
               <div class="content">
                 <form id="form1" runat="server">
                 <h1 style="text-align: center;">Register</h1>
                 <label for="">UserName</label><br>
                 <asp:TextBox runat="server" ID="userName" placeholder="UserName"/><br>
                 <label for="">Password</label><br>
                 <asp:TextBox runat="server" TextMode="Password"  ID="password" placeholder="Password"/><br>
                 <div style="text-align: center;">
                   <asp:Button  runat="server" ID="button"  Text="Register" OnClick="user_Register" BackColor="#3366ff" Width="15em" /> 
                 </div>
                 <p style="text-align: center;"><a style="text-decoration: none;color: blue;" href="userLog.aspx">Already have an account Log-In</a></p>
                </form>
                 <div style="margin-top: 15px;">
                    <img src="../assert/newlogo.png" width="200" height="60" alt="" srcset="">
                 </div>
               </div>
            </div>
        </div>
    </div>
</body>
</html>
