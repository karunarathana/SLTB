<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proceedOrder.aspx.cs" Inherits="FinalSLTB.pages.proceedOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/proceedOrder.css" rel="stylesheet" />
    <script defer src="../script/proceed.js"></script>
    <title></title>
</head>
<body>
         <!-- This is navigation bar html -->
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
    <!-- End code naviation bar -->
    <div class="heroSection">
        <div class="leftside">
            <div class="mainHeading">
                <img src="../assert/payment_4795601.png" width="40" alt="" srcset="">
                <p style="margin-left: 10px;">You have to complete your booking</p>
            </div>
            <div class="details">
                <h2>Your Details</h2>
                <div class="userInput">
                     <form id="form1" runat="server">
                       <div> 
                        <label for="">Name</label><br>
                        <asp:TextBox ID="name"  runat="server" placeholder="Bus Type" required/>
                       </div>
                       <div>
                        <label for="">*Mobile No.</label><br>
                        <asp:TextBox ID="number"  runat="server" placeholder="+94719370815"  required/>
                       </div>
                       <div>
                        <label for="">NIC/Passport No.</label><br>
                        <asp:TextBox ID="nic"  runat="server" placeholder="200116403609" required />
                       </div>
                       <div>
                        <label for="">Email</label><br>
                        <asp:TextBox ID="email"  runat="server" placeholder="Joh@Smith.com" required />
                       </div>
                    </div>
                    <div class="procesBtn" style="display: flex;justify-content: end;margin-top:10px">
                        <asp:Button Width="100" Height="40" BackColor="Violet"  ForeColor="Black" Font-Bold="true" BorderStyle="None" runat="server" ID="LoginBtn" type="Button" Text="BOOK" OnClick="LoginBtn_Click" />
                    </div>
                   <input type="hidden" id="bookcount" runat="server" />
                   <input type="hidden" id="busid" runat="server" />
                   <input type="hidden" id="bookseat" runat="server" />
                   <input type="hidden" id="currentseat" runat="server" />
                   </form>
                </div>
                <h2>Payment Method</h2>
                <div class="paymentMethod">
                    <div class="paymentGateWay visa"></div>
                    <div class="paymentGateWay Mcash"></div>
                    <div class="paymentGateWay EzCash"></div>
                    <div class="paymentGateWay Upay"></div>
                </div>
                <div class="check" style="display: flex;">
                    <input type="checkbox" name="" id="">
                    <p style="margin-left: 10px;">I Agree to <span style="color: rgb(254, 149, 12);">Terms & Conditions</span></p>
                </div>
                <div class="procesBtn" style="display: flex;justify-content: end;">
                    <!--<button type="button">Process to pay</button>-->
                </div>
        </div>
        <div class="rightSide">
            <div class="seatNo">
                <p id="showSeat">Seat No:[43,48]</p>
            </div>
            <div class="Fare-Breaker">
                <p>Fare Breaker</p>
            </div>
            <div class="journey-Summary">
                <p>Journey Summary</p>
            </div>
        </div>
    </div>
     <!-- This is webpage Footer Navigation code -->
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
    <!-- End webpage footer navigation code -->
</body>
</html>
