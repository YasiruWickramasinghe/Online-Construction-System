<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="BillView.aspx.cs" Inherits="Construction_Project.BillView" %>
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
       <a href="#"><i class="fas fa-cogs"></i><span>Utility Expenses</span></a>
       <a href="profitCalculation.aspx"><i class="fas fa-sliders-h"></i><span>Calculate Profit</span></a>
       <a href="ViewProfit.aspx"><i class="fas fa-table"></i><span>Profit Tables</span></a>
       <a href="InsertSalaryaspx.aspx"><i class="fas fa-th"></i><span>Salary Forms</span></a>
       <a href="SalaryView.aspx"><i class="fas fa-th"></i><span>Payroll</span></a>

    </div>
    <!--sidebar end-->


    





      
            <div class="col-lg-3">
                <div id="ui">

                    <div class="left_area">
                    <h3  ><center><span>Organization Expenditures</span></center></h3>
                </div>

                    <br><br>

                    <div class="form-group row">
                        <label for="billno" class="col-sm-3 col-form-label">Bill No:</label>
                        <div class="col-sm-8">
                            <div class="row">
                                <div class="col-sm-10">
                         <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ></asp:TextBox>

                                </div>
                        <div class="col-sm-4"> 
                            <asp:Button ID="Button4" CssClass="btn btn-warning" runat="server" Text="Get" OnClick="Button4_Click" />

                        </div>

                                </div>
                        </div>
                      </div>

                    <br />
                      <div class="form-group row">
                        <label for="billdesc" class="col-sm-3 col-form-label">Bill Description:</label>
                        <div class="col-sm-9">
                       <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>


                      <div class="form-group row">
                        <label for="type" class="col-sm-3 col-form-label">Expense Type:</label>
                        <div class="col-sm-9">
                          <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>



                      <div class="form-group row">
                        <label for="month" class="col-sm-3 col-form-label">Date:</label>
                        <div class="col-sm-9">
                          <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="DD/MM/YYYY" TextMode="Date"></asp:TextBox>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="billno" class="col-sm-3 col-form-label">Amount:</label>
                        <div class="col-sm-9">
                           <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>
                <br />

                    
                   <div class="row">
                   
                        <div class="col-sm-6">
                        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Update" OnClick="Button1_Click" />
                        </div>
                       
                       <div class="col-sm-6"> <asp:Button ID="Button3" runat="server" Text="Delete"  class="btn btn-danger" OnClick="Button3_Click"/>
                    </div>
                    </div>

                    </div><br /><br />
                <a href="#" class="font-weight-bold"><< Back to Home</a>
                        </div>
                    
          


            <div class="col-lg-6">
                <div id="ui">
                <div class="card">
                    <div class="card-body">

                        <div class="row">  
                            <div class="col">

                                <center> <p class="font-weight-bold">Organization Expenditures </p></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>


                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinancialManagementConnectionString %>" SelectCommand="SELECT * FROM [OrganizationExpense]"></asp:SqlDataSource>
                            <div class="col">

                                <asp:GridView ID="GridView1" class="table table-striped  table bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="billNo" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="billNo" HeaderText="billNo" ReadOnly="True" SortExpression="billNo" />
                                        <asp:BoundField DataField="billDescription" HeaderText="billDescription" SortExpression="billDescription" />
                                        <asp:BoundField DataField="expenseType" HeaderText="expenseType" SortExpression="expenseType" />
                                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                        <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
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
