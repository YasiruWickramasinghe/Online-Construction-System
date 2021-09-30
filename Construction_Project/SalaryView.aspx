<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SalaryView.aspx.cs" Inherits="Construction_Project.SalaryView" %>
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
       <a href="ViewProfit.aspx"><i class="fas fa-table"></i><span>Profit Tables</span></a>
       <a href="InsertSalaryaspx.aspx"><i class="fas fa-th"></i><span>Salary Forms</span></a>
       <a href="SalaryView.aspx"><i class="fas fa-th"></i><span>Payroll</span></a>
    </div>
                <!--sidebar end-->






                <div class="col-lg-10">
                    <div id="ui">

                        <div class="card">

                            <div class="card-body">

                                <div class="row">
                                    <div class="col">

                                        <center> <h5 style="color:#000000"><b>Permenent Employee Payroll View </b></h5></center>
                                    </div>
                                </div>



                                <div class="row">
                                    <div class="col">
                                        <hr>
                                    </div>

                                </div>

                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinancialManagementConnectionString %>" SelectCommand="SELECT * FROM [empSalary]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="empID" HeaderText="empID" SortExpression="empID" />
                                                <asp:BoundField DataField="empName" HeaderText="empName" SortExpression="empName" />
                                                <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                                                <asp:BoundField DataField="basicSalary" HeaderText="basicSalary" SortExpression="basicSalary" />
                                                <asp:BoundField DataField="allowance" HeaderText="allowance" SortExpression="allowance" />
                                                <asp:BoundField DataField="deduction" HeaderText="deduction" SortExpression="deduction" />
                                                <asp:BoundField DataField="netSalary" HeaderText="netSalary" SortExpression="netSalary" />
                                            </Columns>
                                        </asp:GridView>
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

