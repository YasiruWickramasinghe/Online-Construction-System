<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewProfit.aspx.cs" Inherits="Construction_Project.ViewProfit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
        <div class="container-fluid">

            <div class="row">


                <!--SideBAr open-->
                 <div class="sidebar">
      <center>

        <img src="images/user1.png" class="profile_image" alt="name">
        <h4>Steve</h4>
      </center>
       <a href="FMdashboard.aspx"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
       <a href="UtilityForm.aspx"><i class="fas fa-sliders-h"></i><span>Insert UtilityBills</span></a>
       <a href="BillView.aspx"><i class="fas fa-cogs"></i><span>Utility Expenses</span></a>
       <a href="profitCalculation.aspx"><i class="fas fa-sliders-h"></i><span>Calculate Profit</span></a>
       <a href="#"><i class="fas fa-table"></i><span>Profit Tables</span></a>
       <a href="InsertSalaryaspx.aspx"><i class="fas fa-th"></i><span>Salary Forms</span></a>
       <a href="SalaryView.aspx"><i class="fas fa-th"></i><span>Payroll</span></a>    </div>
                <!--sidebar end-->






                <div class="col-lg-10">
                    <div id="ui">

                        <div class="card">

                            <div class="card-body">

                                <div class="row">
                                    <div class="col">

                                        <center> <h5 style="color:#000000"><b>Gross Profit/Loss History </b></h5></center>
                                    </div>
                                </div>



                                <div class="row">
                                    <div class="col">
                                        <hr>
                                    </div>

                                </div>

                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinancialManagementConnectionString %>" SelectCommand="SELECT * FROM [Profit]"></asp:SqlDataSource>

                                    <div class="col">
                                        <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Date" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                                                <asp:BoundField DataField="Expenses" HeaderText="Expenses" SortExpression="Expenses" />
                                                <asp:BoundField DataField="Income" HeaderText="Income" SortExpression="Income" />
                                                <asp:BoundField DataField="Profit" HeaderText="Profit" SortExpression="Profit" />
                                            </Columns>
                                        </asp:GridView>

                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinancialManagementConnectionString2 %>" SelectCommand="SELECT * FROM [Profit]"></asp:SqlDataSource>

                                    </div>
                                </div>


                            </div>


                        </div>



                    </div>


                </div>
            </div>

        </div>



    </div>




</asp:Content>

