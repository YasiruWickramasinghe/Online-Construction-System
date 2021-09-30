<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UtilityForm.aspx.cs" Inherits="Construction_Project.UtilityForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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



              <div class="col-lg-1"></div>
    


            <div class="col-lg-4">
                <div id="ui">

                    <div class="left_area">
                    <h3  ><center><span>Organization Expenditures</span></center></h3>
                </div>

                    <br><br>

                    <div class="form-group row">
                        <label for="billno" class="col-sm-3 col-form-label">Bill No:</label>
                        <div class="col-sm-9">
                         <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>


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
                    <center><asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Insert" OnClick="Button1_Click" /></center>

            
                    </div><br /><br />
                <a href="#" class="font-weight-bold"><< Back to Home</a>
                        </div>
                    
            
            <div class="col-lg-4"></div>
                

        </div>
    </div>
        </div>

</asp:Content>

