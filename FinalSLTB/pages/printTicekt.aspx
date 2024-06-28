<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="printTicekt.aspx.cs" Inherits="FinalSLTB.pages.printTicekt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/printTicket.css" rel="stylesheet" />
    <script defer src="../script/pdfDownload.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="main-frame-ticket">
        <div class="sub-frame-ticket" id="content">
            <div class="head">
               <div class="logo">
                <img src="../assert/bus.png" width="50" height="45" alt="" srcset="" style="margin-right: 10px;">
                <h2 style="color: aliceblue;">BUS TICKET</h2>
               </div>
               <h2 style="color: aliceblue;">2024/04/01</h2>

            </div>
            <div class="content-body">
                <div class="barcode-image">
                    <img src="../assert/9185593.png" width="160" height="260" alt="" srcset="">
                </div>
                <div class="arival-dispature">
                    <label for="">ARRIVAL</label>
                    <input id="arrival" type="text">
                    <label for="">DISPATURE</label>
                    <input id="dispatch" type="text">
                </div>
                <div class="other-information">
                    <div class="date-time">
                        <div class="date">
                            <label  for="">DATE</label><br>
                            <input id="date" type="text">
                        </div>
                        <div class="date">
                            <label  for="">TIME</label>
                            <br>
                            <input id="time" type="text">
                        </div>
                    </div>
                    <label for="">SEAT</label>
                    <input id="seat" type="text">
                    <label for="">PRICE</label>
                    <input id="price" type="text">
                </div>
            </div>
            <div class="footer">
                <p style="color: aliceblue;">Copyright 1999-2024 by Refsnes Data. All Rights Reserved. Ticky is Powered by Sandeepa.</p>
            </div>
        </div>
        <div class="print-btn" id="print">
            <button type="button">Print</button>
            <button type="button">Main</button>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/printThis/1.15.0/printThis.js"></script>
    </form>
</body>
</html>
