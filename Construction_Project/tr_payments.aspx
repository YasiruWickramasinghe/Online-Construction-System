﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="tr_payments.aspx.cs" Inherits="Construction_Project.tr_payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

                <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
                </script>

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

            <!--Transportation details-->
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body ">
                        <div class="row">
                            <div class="col">
                                <h3 class="text-center">PAYMENT LIST</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT * FROM [tr_payments]"></asp:SqlDataSource>
                            <div class="col">
                            <asp:GridView class="table table-striped table-bordered cardbackgroundHome" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="payment_id">
                                <Columns>
                                    <asp:BoundField DataField="payment_id" HeaderText="Payment ID" SortExpression="payment_id" InsertVisible="False" ReadOnly="True" />
                                    <asp:BoundField DataField="transport_id" HeaderText="Transport ID/Vehicle ID" SortExpression="transport_id" />
                                    <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                                    <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                </Columns>
                                </asp:GridView>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--Image -->
                <div class="col-sm-2">
                     <div class="row"> 
                        <div class="card p-3 border border-secondary cardbackground" style="width: 18rem;">
                            <img class="card shadow bg-white rounded " src="imgs/tr_transport_home/tr_home6.jpg" />      
                        </div>   
                    </div>
                    
                  </div>
        </div>
    </div>

</asp:Content>
