<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="InsertSalaryaspx.aspx.cs" Inherits="Construction_Project.InsertSalaryaspx" %>
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
       <a href="#"><i class="fas fa-sliders-h"></i><span>Insert UtilityBills</span></a>
       <a href="BillView.aspx"><i class="fas fa-cogs"></i><span>Utility Expenses</span></a>
       <a href="profitCalculation.aspx"><i class="fas fa-sliders-h"></i><span>Calculate Profit</span></a>
       <a href="ViewProfit.aspx"><i class="fas fa-table"></i><span>Profit Tables</span></a>
        <a href="InsertSalaryaspx.aspx"><i class="fas fa-th"></i><span>Salary Forms</span></a>
       <a href="SalaryView.aspx"><i class="fas fa-th"></i><span>Payroll</span></a>    </div>
    <!--sidebar end-->



             <!-- <div class="col-lg-1"></div>-->
    


            <div class="col-lg-3">
            <div id="ui">

                    <div class="left_area">
                    <h3  ><center><span>Insert Salary</span></center></h3>
                </div>

                    <br><br>

                    <div class="form-group row">
                        <label for="billno" class="col-sm-3 col-form-label">Employee ID:</label>
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
                        <label for="billdesc" class="col-sm-3 col-form-label">Employee Name:</label>
                        <div class="col-sm-9">
                       <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                      </div>


                      <div class="form-group row">
                        <label for="type" class="col-sm-3 col-form-label">Designation:</label>
                        <div class="col-sm-9">
                          <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                      </div>

                 <div class="form-group row">
                        <label for="month" class="col-sm-3 col-form-label">Date:</label>
                        <div class="col-sm-9">
                          <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="DD/MM/YYYY" TextMode="Date"></asp:TextBox>
                        </div>
                      </div>


                      <div class="form-group row">
                        <label for="billno" class="col-sm-3 col-form-label">Basic Salary:</label>
                        <div class="col-sm-9">
                           <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>

                        <div class="form-group row">
                        <label for="type" class="col-sm-3 col-form-label">Allowance:</label>
                        <div class="col-sm-9">
                          <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>
        
                        
                            <div class="form-group row">
                        <label for="type" class="col-sm-3 col-form-label">Deduction:</label>
                        <div class="col-sm-9">
                          <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>


           <div class="form-group row">
                        <label for="billno" class="col-sm-3 col-form-label">Net Salary:</label>
                        <div class="col-sm-8">
                            <div class="row">
                                <div class="col-sm-10">
                         <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" ReadOnly ></asp:TextBox>

                                </div>
                        <div class="col-sm-4"> 
                            <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" Text="Calculate" OnClick="Button2_Click" />

                        </div>

                                </div>
                        </div>
                      </div>
                        


                <br />

                    
                   <div class="row">
                   
                        <div class="col-sm-12">
                       <center> <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Insert" OnClick="Button1_Click" /></center>
                        </div>
                       
                
                    </div>

                    </div><br /><br />
                <a href="FMdashboard.aspx" class="font-weight-bold"><< Back to Home</a>
                        </div>
                    



            
            <div class="col-lg-6">
                <div id="ui">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">  
                            <div class="col">

                                <center> <p class="font-weight-bold">Permenent Employee Details </p></center>
                            </div>
                        </div>

                            <div class="row">
                                <div class="col">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinancialManagementConnectionString %>" SelectCommand="SELECT [EmployeeID], [FirstName], [LastName], [Designation] FROM [Permanent_Employee]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" SortExpression="EmployeeID" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
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
