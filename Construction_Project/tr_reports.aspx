<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="tr_reports.aspx.cs" Inherits="Construction_Project.tr_reports" %>
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

            <!--Report Details-->
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                    <h3>Generate Transportation Report</h3>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4 ">
                                <label>Report ID:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="EX: TRE001"></asp:TextBox>
                                    <asp:Button ID="Button1" Class="btn btn-success " runat="server" Text="Find"/>
                                    </div>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4 ">
                                <label>From:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-sm-4">
                                <label>TO:</label>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--insert Button-->
                         <div class="row">
                            <div class="col-4">
                                       <asp:Button ID="Button2" Class="btn btn-success btn-block btn-lg" runat="server" Text="Genarate" OnClick="Button2_Click" />                                   
                            </div>
                            <div class="col-4">
                                       <asp:Button ID="Button3" Class="btn btn-danger btn-block btn-lg" runat="server" Text="Delete" OnClick="Button3_Click" />                                   
                            </div> 
                        </div> 

                        <br />

                         <div class="row">
                            <div class="col ">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <h4 class="text-center">Report</h4>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6 ">
                                <label>Transportations:</label>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:Label  ID="Label1" runat="server" ></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6 ">
                                <label>Material Size:</label>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:Label  ID="Label2" runat="server" ></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row"> 
                            <div class="col-sm-6 ">
                                <label>Iron Transportations:</label>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:Label  ID="Label3" runat="server" ></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row"> 
                            <div class="col-sm-6 ">
                                <label>Sand Transportations:</label>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:Label  ID="Label4" runat="server" ></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row"> 
                            <div class="col-sm-6 ">
                                <label>Wood Transportations:</label>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:Label  ID="Label5" runat="server" ></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row"> 
                            <div class="col-sm-6 ">
                                <label>Cements Transportations:</label>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:Label  ID="Label6" runat="server" ></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row"> 
                            <div class="col-sm-6 ">
                                <label>Stone Transportations:</label>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:Label  ID="Label7" runat="server" ></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>


                </div>
            </div>
           </div>
                <!--Transport Details-->
                     <div class="col-sm-6"> 
                         <div class="card">
                             <div class="card-body ">

                                <div class="row">
                                    <div class="col">
                                        <h3>Transport Report List</h3>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col">
                                        <hr>
                                    </div>
                                </div>

                                 <div class="row">
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT [report_id], [tot_trans], [sum_materi_size], [tot_iron], [tot_sand], [tot_wood], [tot_cements], [tot_stone] FROM [tr_transportation_report]"></asp:SqlDataSource>   
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered cardbackgroundHome" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="report_id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="report_id" HeaderText="Report ID" ReadOnly="True" SortExpression="report_id" />
                                                <asp:BoundField DataField="tot_trans" HeaderText="Total Transportation" SortExpression="tot_trans" />
                                                <asp:BoundField DataField="sum_materi_size" HeaderText="Sum Of Material Size" SortExpression="sum_materi_size" />
                                                <asp:BoundField DataField="tot_iron" HeaderText="Iron Transports" SortExpression="tot_iron" />
                                                <asp:BoundField DataField="tot_sand" HeaderText="Sand Transports" SortExpression="tot_sand" />
                                                <asp:BoundField DataField="tot_wood" HeaderText="Wood Transports" SortExpression="tot_wood" />
                                                <asp:BoundField DataField="tot_cements" HeaderText="Cements Transports" SortExpression="tot_cements" />
                                                <asp:BoundField DataField="tot_stone" HeaderText="Stone Transports" SortExpression="tot_stone" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
            </div>
        </div>

</asp:Content>
