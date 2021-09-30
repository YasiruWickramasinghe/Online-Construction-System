<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="tr_update_transportations.aspx.cs" Inherits="Construction_Project.tr_update_transportations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container-fluid">
        <div class="row">
            <!--Navigation Bar-->
            <div class="col-sm-2 ">
                <div class="tr_sidebar">
                    <header>Transport</header>
                    <ul>
                        <li><a href="tr_itp_home.aspx"><i class="fas fa-home "></i>Home</a></li>
                        <li><a href="tr_transportations.aspx"><i class="fas fa-bus-alt "></i>Transports</a></li>
                        <li><a href="tr_vehicle.aspx"><i class="fas fa-truck-moving"></i>Vehicles</a></li>
                        <li><a href="tr_drivers.aspx"><i class="fas fa-user-secret"></i>Drivers</a></li>
                        <li><a href="tr_payments.aspx"><i class="fas fa-money-check-alt"></i>Payments</a></li>
                        <li><a href="tr_orders.aspx"><i class="fas fa-chalkboard-teacher"></i>Orders</a></li>
                        <li><a href="tr_reports.aspx"><i class="fas fa-file-alt"></i>Reports</a></li>
                    </ul>
                </div>
            </div>

            <!--Transport Update Form-->
            <div class="col-sm-7">
                <div class="card cardbackground">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                    <h3>Update Transport</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col ">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4 ">
                                <label>Transport ID:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <div class="row">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="EX:TR001"></asp:TextBox>
                                        <asp:Button ID="Button1" class="btn btn-outline-success btn-sm" runat="server" Text="Find" OnClick="Button1_Click"/>
                                    </div>
                                    </div>
                                    <div class="row">
                                        <p class="text-danger note">(note:click find button to check if transportID already exsist)</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                       

                        <div class="row">
                            <div class="col-sm-4 ">
                                <label>Order ID:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="EX: OR001"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-sm-2">
                                <label>Start Point:</label>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Enter Starting point"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-sm-2">
                                <label>End Point:</label>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Enter Ending point"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">

                            <div class="col-sm-2">
                                <label>material:</label>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control " ID="DropDownList1" runat="server">

                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Sand" Value="Sand" />
                                        <asp:ListItem Text="Iron" Value="Iron" />
                                        <asp:ListItem Text="Wood" Value="Wood" />
                                        <asp:ListItem Text="Cements" Value="Cements" />
                                        <asp:ListItem Text="Stone" Value="Stone" />

                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-sm-2">
                                <label>material size:</label>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Enter material size"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col"> 
                             <span class="badge badge-pill badge-info">Assign Driver & Vehicle</span>
                            </div>  
                        </div>

                        <div class="row">
                            <div class="col-sm-4 ">
                                <label>Driver ID:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="EX: DR001"></asp:TextBox>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4 ">
                                <label>Vehicle ID:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="EX: VE001"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                             <span class="badge badge-pill badge-info">Payment Details</span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <label>Amount:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Enter Amount" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Date:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Enter Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <!--insert Button-->
                         <div class="row">
                            <div class="col">
                                       <asp:Button ID="Button2" class="btn btn-warning btn-lg btn-block" runat="server" Text="Update" OnClick="Button2_Click"/>                                   
                            </div>
                        </div>

                </div>
            </div>
           </div>
                <!--Image Buttons for Drivers and Vehicles-->
                <div class="col-sm-3 ">
                     <div class="row"> 
                        <div class="card p-3 border border-secondary cardbackground" style="width: 18rem;">
                            <img class="card-img-top shadow bg-white rounded" src="imgs/tr_transport_home/tr_home4.jpg" />      
                            <div class="card-body ">
                                <h4 class="card-title text-center">Vehicles</h4>
                               <asp:Button class="btn btn-outline-primary btn-sm btn-block" ID="Button3" runat="server" Text="VIEW" OnClick="Button3_Click" />
                            </div>
                        </div>   
                    </div>
                    <br />
                    <div class="row"> 
                        <div class="card p-3 border border-secondary cardbackground" style="width: 18rem;">
                            <img class="card-img-top shadow bg-white rounded" src="imgs/tr_transport_home/tr_home2.jpg" />      
                            <div class="card-body">
                                <h4 class="card-title text-center">Drivers</h4>
                                <asp:Button class="btn btn-outline-primary btn-sm btn-block" ID="Button4" runat="server" Text="VIEW" OnClick="Button4_Click" />
                            </div>  
                        </div>
                    </div>
                    </div>
            </div>
        </div>

</asp:Content>
