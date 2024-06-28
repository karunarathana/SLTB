<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="FinalSLTB.pages.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script defer src="../script/admin2.js"></script>
    <link href="../css/admin.css" rel="stylesheet" />
    <title>Admin Dashboard</title>
</head>
<body>
           <!-- Start navigation Section -->
    <div class="navigationSection">
        <div class="nav">
            <a href="" class="item"><img src="../assert/newlogo.png" width="180" height="50" alt="" srcset=""></a>
            <a href="" class="item2"><img src="../assert/356500.svg" alt="" width="130" height="50" srcset=""></a>
            <a href="" class="loginbtn"><img src="../assert/profile.png" width="50" height="50" alt="" srcset=""></a>
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        </div>
    </div>
    <div class="secondNavigationSection">
        <div class="nav">
            <p></p>
            <a href="" class="sendTicket">Send Ticket</a>
            <a href="" class="">TranserTicet</a>
        </div>
    </div>
    <!-- End of navofation Section -->

    <!-- This is Hero Section Interface -->
    <div class="heroSection">
        <div class="leftBar">
            <h2>Menu</h2>
            <div class="nav-btn">
                <button class="w3-bar-item w3-button tablink" onclick="openCity(event, 'MBus')">Manage Bus</button>
                <button class="w3-bar-item w3-button tablink" onclick="openCity(event, 'Paris')">Manage User</button>
                <button class="w3-bar-item w3-button tablink" onclick="openCity(event, 'Tokyo')">View Bus</button>
                <button class="w3-bar-item w3-button tablink" onclick="openCity(event, 'v1')">Others</button>
                <button class="w3-bar-item w3-button tablink" onclick="openCity(event, 'v2')">Setting</button>
            </div>
            <div class="bottom-bar">
                <p>Nipun Sandeepa</p>
                <img src="../assert/newlogo.png" width="120" height="40" alt="" srcset="">
            </div>              
        </div>

        <div class="rightBar">
            <div id="MBus" class="w3-container city w3-animate-opacity custom-MBus" style="display:block">
              <form id="form1" runat="server">
                <h2>Manage Bus </h2>
                <p>To be the excellent provider of passenger transport.</p>
                <p class="Mbus-bottom">The Sri Lanka Transport Board is a bus service provider in Sri Lanka. Between 1958 and 1978</p>
                 <div class="input-flex">
                         <asp:TextBox ID="search"  runat="server"  placeholder="Seaching..." /> <asp:Button runat="server" id="SearchBtn" Text="Search" OnClick="SearchBtn_Click"  /> 
                        <div class="column-one">
                            <div class="field username">
                                <label for="Username_">Despature</label><br>
                                <asp:TextBox ID="Despature"  runat="server" placeholder="Despature"  />
                            </div>
                            <div class="field password">
                                <label for="Password_">Despature Time</label><br>
                               <asp:TextBox ID="DespatureTime"  runat="server" placeholder="Despature Time" />
                            </div>
                            <div class="field email">
                                <label for="Email_">Arrival</label><br>
                                <asp:TextBox ID="Arrival"  runat="server" placeholder="Arrival" />
                            </div>
                        </div>
                        <div class="column-two">
                            <div class="field phone">
                                <label for="Phone_">Arrival Date</label><br>
                                <asp:TextBox ID="ArrivalDate"  runat="server" placeholder="Arrival Date" />
                            </div>
                            <div class="field phone">
                                <label for="Phone_">Arrival Time</label><br>
                               <asp:TextBox ID="ArrivalTime"  runat="server" placeholder="Arrival Time"  />
                            </div>
                            <div class="field phone">
                                <label for="Phone_">Bus Type</label><br>
                               <asp:TextBox ID="BusType"  runat="server" placeholder="Bus Type" />
                            </div>
                        </div>
                        <div class="column-three">
                            <div class="field phone">
                                <label for="Phone_">Model</label><br>
                                <asp:TextBox ID="Model"  runat="server" placeholder="Model"  />
                            </div>
                            <div class="field phone">
                                <label for="Phone_">Bus Schedule ID</label><br>
                               <asp:TextBox ID="scheduleId"  runat="server" placeholder="Bus Schedule ID"/>
                            </div>
                            <div class="field phone">
                                <label for="Phone_">Price</label><br>
                                <asp:TextBox ID="Price"  runat="server" placeholder="Price"  />
                            </div>
                        </div>
                         <div class="column-four">
                            <div class="field phone">
                                <label for="Phone_">Seats</label><br>
                                <asp:TextBox ID="Seats"  runat="server" placeholder="Seats" />
                            </div>
                            <div class="field phone">
                                <label for="Phone_">Depot Name</label><br>
                                <asp:TextBox ID="DepotName"  runat="server" placeholder="Depot Name" />
                            </div>
                            <div class="field phone">
                                <label for="Phone_">Booking Closeing Time</label><br>
                               <asp:TextBox ID="closeTime"  runat="server"  placeholder="Booking Closeing Time"  /> 
                            </div>
                        </div>
                        <div class="crud-buton">
                             <asp:Button  runat="server" id="insert" OnClick="inserData" Text="Insert"  /> 
                             <asp:Button runat="server" id="update" Text="Update" OnClick="update_Click"  /> 
                             <asp:Button runat="server" id="delete" Text="Delete" OnClick="delete_Click"  /> 
                        </div>
                    
                 </div>
                </form>
              </div>
              <div id="Paris" class="w3-container city w3-animate-opacity " style="display:none">
                <h2 style="color:white">Add User</h2>
                <p style="color:white">Add User Account</p> 
                <p style="color:white">The Paris area is one of the largest population centers in Europe, with more than 12 million inhabitants.</p>
                <div class="input-flex">
                  
                        <div class="column-one">
                            <div class="field username">
                                <label for="Username_">Username</label><br>
                                <input type="text" name="Username" id="Username_" placeholder="User Name" required>
                            </div>
                            <div class="field password">
                                <label for="Password_">password</label><br>
                                <input type="password" name="password" id="Password_" placeholder="Password" required>
                            </div>
                            <div class="field email">
                                <label for="Email_">Email</label><br>
                                <input type="email" name="email" id="Email_"  placeholder="Email" required>
                            </div>
                        </div>
                        <div class="column-two">
                            <div class="field phone">
                                <label for="Phone_">phone</label><br>
                                <input type="tel" placeholder="Tel Number" name="phone" id="Phone_">
                            </div>
                        </div>    
                 </div>
                 <div class="crud-buton">
                      <button id="insert">Insert</button><button id="update">Update</button><button id="delete">Delete</button>
                 </div>
              </div>
              <div id="Tokyo" class="w3-container city w3-animate-opacity viewData" style="display:none">
                <h2>View Bus</h2>
                <p>View All Bus In Databse</p>
                <p>It is the center of the Greater Tokyo Area, and the most populous metropolitan area in the world.</p>
                
                   <div class="table"  style="overflow-x: auto;">
                    <table>
                         
                       <asp:GridView ID="GridView1" runat="server"></asp:GridView> 
                       
                    </table>
                </div>
                  
              </div>
        </div>  
    </div>

    <!-- End of Hero Section  Section -->


    <!-- This is footer navigation Interface -->
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
    <!-- End of footer navigation  Section -->
</body>
</html>
