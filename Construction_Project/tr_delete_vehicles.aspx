﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="tr_delete_vehicles.aspx.cs" Inherits="Construction_Project.tr_delete_vehicles" %>
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

             <!--Vehicle Update Form-->
           <div class="col-sm-7">
                <div class="card cardbackground">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                    <h3>Delete Vehicle</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col ">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4 ">
                                <label>Vehicle ID:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <div class="row">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="EX:VE001" ></asp:TextBox>
                                        <asp:Button ID="Button1" class="btn btn-outline-success btn-sm" runat="server" Text="Find" OnClick="Button1_Click"/>
                                    </div>
                                    <div class="row">
                                        <p class="text-danger note">(note:click find button to check if VehicleID already exsist)</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                       

                        <div class="row">
                            <div class="col-sm-4 ">
                                <label>Vehicle Number:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Can't Modify" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-sm-4">
                                <label>Color:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Can't Modify" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                         <div class="row">

                             <div class="col-sm-2">
                                <label>Transmission:</label>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control " ID="DropDownList2" runat="server" ReadOnly="True" Enabled="False">
                                        <asp:ListItem Text="Can't Modify" Value="Can't Modify" />
                                        <asp:ListItem Text="Auto" Value="Auto" />
                                        <asp:ListItem Text="Manual" Value="Manual" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-sm-2">
                                <label>Type:</label>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control " ID="DropDownList1" runat="server" ReadOnly="True" Enabled="False">
                                        <asp:ListItem Text="Can't Modify" Value="Can't Modify" />
                                        <asp:ListItem Text="Long Vehicle" Value="Long Vehicle" />
                                        <asp:ListItem Text="Car" Value="Car" />
                                        <asp:ListItem Text="Tiper" Value="Tiper" />
                                        <asp:ListItem Text="Mini Cab" Value="Mini Cab" />
                                        <asp:ListItem Text="Bus" Value="Bus" />
                                    </asp:DropDownList>
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Can't Modify" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Date:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Can't Modify" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <!--Update Button-->
                         <div class="row">
                            <div class="col">
                                        <asp:Button ID="Button2" class="btn btn-danger btn-lg btn-block" runat="server" Text="Delete" OnClick="Button2_Click" />                                      
                            </div>
                        </div>

                </div>
            </div>
           </div>
                <!--Image-->
                 <div class="col-sm-3">
                     <div class="row"> 
                        <div class="card p-3 border border-secondary cardbackground" style="width: 18rem;">
                            <img class="card shadow bg-white rounded " src="imgs/tr_transport_home/tr_home4.jpg" />      
                        </div>   
                    </div>
                    
                  </div>
            </div>
        </div>

</asp:Content>
