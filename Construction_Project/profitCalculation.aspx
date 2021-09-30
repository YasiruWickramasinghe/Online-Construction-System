<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="profitCalculation.aspx.cs" Inherits="Construction_Project.profitCalculation" %>
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
       <a href="UtilityForm.aspx"><i class="fas fa-sliders-h"></i><span>Insert UtilityBills</span></a>
       <a href="BillView.aspx"><i class="fas fa-cogs"></i><span>Utility Expenses</span></a>
       <a href="#"><i class="fas fa-sliders-h"></i><span>Calculate Profit</span></a>
       <a href="ViewProfit.aspx"><i class="fas fa-table"></i><span>Profit Tables</span></a>
       <a href="InsertSalaryaspx.aspx"><i class="fas fa-th"></i><span>Salary Forms</span></a>
       <a href="SalaryView.aspx"><i class="fas fa-th"></i><span>Payroll</span></a>    </div>
    <!--sidebar end-->


            <div class="col-lg-1"></div>



            <div class="col-lg-6">
                <div id="ui">
                    <div class="row">
                        <div class="col-sm-6">
                    <h2 style="color:#0095ff"><b>Calculate Gross Profit/Loss</b></h2>
                            </div>

                        <div class="col-sm-3">
                           <h6 style="color:#10de62" class="FM_text"><b>Start</b></h6>
                         <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="DD/MM/YYYY" TextMode="Date"></asp:TextBox>

                        </div>
                         <div class="col-sm-3">
                             <h6 style="color:#10de62" class="FM_text"><b>End</b></h6>
                         <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" placeholder="DD/MM/YYYY" TextMode="Date"></asp:TextBox>

                        </div>

                    </div>

                    <br /><br>

                   
                      <div class="form-group row">
                        <label for="billdesc" class="col-sm-7 col-form-label" >Permanent Employee Salary Expenses (RS):</label>
                        <div class="col-sm-3">
                       <div class="input-group">
                       <asp:TextBox ID="TextBox2" CssClass="form-control" ReadOnly runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" Text="Get" OnClick="Button1_Click" />
                        </div>
                            </div>
                      </div>


                     <div class="form-group row">
                        <label for="billdesc" class="col-sm-7 col-form-label" class="FM_text">Operating Income (RS):</label>
                        <div class="col-sm-3">
                       <div class="input-group">
                       <asp:TextBox ID="TextBox3" CssClass="form-control" ReadOnly runat="server"></asp:TextBox>
                                <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" Text="Get" OnClick="Button2_Click" />
                        </div>
                            </div>
                      </div>


                      <div class="form-group row">
                        <label for="billdesc" class="col-sm-7 col-form-label" class="FM_text">Inventory And Raw Material Management Expenditures (RS):</label>
                        <div class="col-sm-3">
                       <div class="input-group">
                       <asp:TextBox ID="TextBox5" CssClass="form-control" ReadOnly runat="server"></asp:TextBox>
                                <asp:Button ID="Button4" CssClass="btn btn-warning" runat="server" Text="Get" OnClick="Button4_Click" />
                        </div>
                            </div>
                      </div>
                



                     <div class="form-group row">
                        <label for="billdesc" class="col-sm-7 col-form-label" class="FM_text">Transport Management Expenditures (RS):</label>
                        <div class="col-sm-3">
                       <div class="input-group">
                       <asp:TextBox ID="TextBox7" CssClass="form-control" ReadOnly runat="server"></asp:TextBox>
                                <asp:Button ID="Button7" CssClass="btn btn-warning" runat="server" Text="Get" OnClick="Button7_Click" />
                        </div>
                            </div>
                      </div>


                     <div class="form-group row">
                        <label for="billdesc" class="col-sm-7 col-form-label" class="FM_text">Taxes and Organization Expenditures (RS):</label>
                        <div class="col-sm-3">
                       <div class="input-group">
                       <asp:TextBox ID="TextBox8" CssClass="form-control" ReadOnly runat="server"></asp:TextBox>
                                <asp:Button ID="Button8" CssClass="btn btn-warning" runat="server" Text="Get" OnClick="Button8_Click" />
                        </div>
                            </div>
                      </div>

                    <br />
                     

                    <div class="form-group row">
                        <label for="billdesc" class="col-sm-5 col-form-label" class="FM_text"><b style="color:#ff1919">Net Profit/Loss:</b></label>
                        <div class="col-sm-7">
                       <div class="input-group">
                       <asp:TextBox ID="TextBox9" CssClass="form-control" ReadOnly runat="server"></asp:TextBox>
                                <asp:Button ID="Button9" CssClass="btn btn-danger" runat="server" Text="Calculate" OnClick="Button9_Click" />
                        </div>
                            </div>
                      </div>

                      <asp:Button ID="Button10" CssClass="btn btn-dark" runat="server" Text="View Details" OnClick="Button10_Click"/>
                   
                    </div>
               
               
        </div>

   
            </div>
        </div>
        
    
    </div>

</asp:Content>

