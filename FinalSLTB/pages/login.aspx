<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalSLTB.pages.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/login.css" rel="stylesheet" />
    <script defer src="../script/loging.js"></script>
    <title>Login</title>
</head>
<body>
         <div class="navigationSection">
        <div class="nav">
            <a href="" class="item"><img src="../assert/newlogo.png" width="180" height="50" alt="" srcset=""></a>
            <a href="" class="item2"><img src="../assert/356500.svg" alt="" width="130" height="50" srcset=""></a>
            <a href="" class="loginbtn"><img src="../assert/profile.png" width="50" height="50" alt="" srcset=""></a>
        </div>
    </div>
    <div class="secondNavigationSection">
        <div class="nav">
            <p></p>
            <a href="" class="sendTicket">Send Ticket</a>
            <a href="" class="">TranserTicet</a>
        </div>
    </div>
    <div class="loginHeroSection">
        <div class="logingFormSection">
            <div class="ligingFormItem">
                <h2>ADMIN LOGING</h2>
                <div class="topHeadingSection">
                    <img src="../assert/warning.png" width="50" height="50" alt="" srcset="">
                    <p>Only for eSeat & SLTB Staff & Agents</p>
                </div>
                <div class="logingField">
                    <div class="tabBar">
                        <button class="tablink" onclick="openPage('Admin', this, '#ff0505')" id="defaultOpen">ADMIN</button>
                        <button class="tablink" onclick="openPage('Staff', this, 'green')">STAFF</button>
                        <button class="tablink" onclick="openPage('other', this, 'yellow')">OTHERS</button>
                    </div>
                    <form id="form1" runat="server">
                    <div id="Admin" class="tabcontent">
                        <asp:TextBox runat="server" ID="userName" placeholder="UserName"/>
                        <asp:TextBox runat="server" TextMode="Password"  ID="password" placeholder="Password"/>
                        <asp:Button  runat="server"  Text="LOG-IN" OnClick="Admin_LogIN" BackColor="Aqua" Width="130" Height="60" Font-Bold="true" /> 
                    </div>
                    <div id="Staff" class="tabcontent">
                        <input type="text" placeholder="UserName">
                        <input type="email" placeholder="Email">
                        <input type="password" name="" id="" placeholder="Password">
                        <div class="logingBtn"> <button type="button">Loging</button> </div>
                    </div>
                    <div id="other" class="tabcontent">
                        <input type="text" placeholder="UserName">
                        <input type="text" placeholder="UserName">
                        <input type="email" placeholder="Email">
                        <input type="password" name="" id="" placeholder="Password">
                        <div class="logingBtn"> <button type="button">Loging</button> </div> 
                    </div>
                    </form>
                </div>     
            </div>
            
        </div>
        
    </div>

    <div class="loginSctionFooter">
        <div class="logingFooterSub">
            <div class="item">
                <p>Login</p>
                <p>Send Ticket</p>
                <p>Transfre Ticket</p>
                <p>ConatctUs</p>
            </div>
            <div class="item">
                <p>FAQ</p>
                <p>T&C</p>
                <p>Privacy Policy</p>
            </div>
            <div class="item">
                <p>Download On</p>
                <div>
                  <img src="../assert/app-store-png-logo-33115.png" width="180" height="30" alt="" srcset="">
                </div>
                <div>
                    <img src="../assert/icons8-facebook-500.png" width="50" height="50" alt="" srcset="">
                    <img src="../assert/whatsapp.png" width="50" height="50" alt="" srcset="">
                </div>
            </div>
            <div class="item">
                <img src="../assert/newlogo.png" width="180" height="50" alt="" srcset="">
                <p>Hands Global Holdings (Pvt) Ltd.</p>
                <p>No. 21/5, Pagoda Road, Nugegoda.</p>
                <p>Hotline: 1315</p>
                <p>info@eseat.lk</p>
            </div>
            <div class="item">
            <img src="../assert/356500.svg" width="80" height="35" alt="" srcset="">
                <p>Sri Lanka Transport Board</p>
                <p>No. 200, Kirula Road, Colombo 5</p>
                <p>+94 (0) 11 7706000 | +94 (0) 11 25811120 - 4</p>
                <p>94 (0) 11 2589683 | info@sltb.lk</p>
            </div>
        </div>
        <p class="last">©2022 Hands Global Holdings (Pvt) Ltd. All rights reserved</p>
    </div> 
    </form>
</body>
</html>
