<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FinalSLTB.pages.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/index.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script defer src="../script/index.js"></script>
    <title>SLTB.eSeats.LK</title>
</head>
<body>
       <div class="navigationSection">
        <div class="nav">
            <a href="" class="item"><img src="../assert/newlogo.png" width="180" height="50" alt="" srcset=""></a>
            <a href="" class="item2"><img src="../assert/356500.svg" alt="" width="130" height="50" srcset=""></a>
            <a href="" class="item"></a>
            <a href="login.aspx" class="loginbtn"><button type="button" >Loging</button></a>
        </div>
    </div>
    <div class="secondNavigationSection">
        <div class="nav">
            <p></p>
            <a href="" class="sendTicket">Send Ticket</a>
            <a href="" class="">TranserTicet</a>
        </div>
    </div>
    <div class="heroSection">
      <div class="heroSubInterface">
        <div class="onlineSeatReservationTop">
            <p id="onlineSeatText">Online Seat Reservation</p>
        </div>
        <div class="userInput">
            <form id="form1" runat="server">
            <div class="userFlex">
                <img src="../assert/location.png" width="25" height="25" alt="">
                <asp:TextBox ID="from"  runat="server" placeholder="from"  />
                <div class="dropdown">
                <i class="fa fa-caret-down dropbtn" id="dropper1" onclick="myFunction()"></i>
                <div id="myDropdown" class="dropdown-content">
                    <a href="#home">not</a>
                    <a href="#about">About</a>
                    <a href="#contact">Contact</a>
                    <a href="#contact">Contact</a>
                    <a href="#contact">Contact</a>
                    <a href="#contact">Contact</a>
                </div>
                </div>
            </div>
            <div class="userFlex">
                <img src="../assert/location.png" width="25" height="25" alt="">
                <asp:TextBox ID="to"  runat="server" placeholder="To"  />
                <div class="dropdown">
                <i class="fa fa-caret-down dropbtn" id="dropper" onclick="myFunction1()"></i>
                <div id="myDropdown1" class="dropdown-content">
                    <a href="#home">Home</a>
                    <a href="#about">About</a>
                    <a href="#contact">Contact</a>
                    <a href="#contact">Contact</a>
                    <a href="#contact">Contact</a>
                    <a href="#contact">Contact</a>
                </div>
                </div>
            </div>
            <div class="userFlex">
                <img src="../assert/schedule.png" width="25"  height="25" alt="">
                <input class="datePicker" id="datePicker" name="date" type="date" text="2024/06/3" >           
            </div>
                <asp:Button CssClass="buttonStyle"  BackColor="Yellow" Height="55"  runat="server" ID="button" Text="Search Buses" OnClick="SearchBusses_Click" />
            </div>
        </form>
      </div>
    </div>
    <!-- <div class="abouthUS">

    </div> -->
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
</body>
</html>
