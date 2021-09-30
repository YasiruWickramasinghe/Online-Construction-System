<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="tr_vehicle.aspx.cs" Inherits="Construction_Project.tr_vehicle" %>
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
                                <h3 class="text-center">VEHICLE LIST</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT * FROM [tr_vehicle]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered cardbackgroundHome" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vehicle_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="vehicle_id" HeaderText="Vehicle ID" ReadOnly="True" SortExpression="vehicle_id" />
                                        <asp:BoundField DataField="vehicle_number" HeaderText="Vehicle Number" SortExpression="vehicle_number" />
                                        <asp:BoundField DataField="color" HeaderText="Vehicle Color" SortExpression="color" />
                                        <asp:BoundField DataField="transmission" HeaderText="Transmission" SortExpression="transmission" />
                                        <asp:BoundField DataField="type" HeaderText="Vehicle Type" SortExpression="type" />
                                    </Columns>
                                </asp:GridView>
                                
                                <
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--Image Buttons Insert Update Delete-->
            <div class="col-sm-2">
                <div class="row">
                    <div class="card p-3 border border-secondary  cardbackgroundHome" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center trButHead">Insert vehicle</h5>
                            <center>
                            
                                <asp:Button ID="Button1" runat="server" Text="GO" class="btn btn-outline-success" OnClick="Button1_Click"></asp:Button>
                                </center>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="card p-3 border border-secondary  cardbackgroundHome" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center trButHead">Update Vehicle</h5>
                            <center>
                            
                                <asp:Button ID="Button2" runat="server" Text="GO" class="btn btn-outline-warning" OnClick="Button2_Click"></asp:Button>
                                </center>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="card p-3 border border-secondary  cardbackgroundHome" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center trButHead">Delete Vehicle</h5>
                            <center>
                            
                            <asp:Button ID="Button3" runat="server" Text="GO" class="btn btn-outline-danger" OnClick="Button3_Click"></asp:Button>
                            </center>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
