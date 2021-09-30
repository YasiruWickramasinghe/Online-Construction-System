<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="incomeStatement.aspx.cs" Inherits="Construction_Project.incomeStatement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="jsfiles/html2canvas.min.js"></script>
    <script src="jsfiles/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            alert("Do you want to download pdf? ");
            html2canvas(document.getElementById('admitcard'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                    
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Income Statement.pdf");
                    alert("Income Statement Downloading Started");
                }
            });
        }
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
       <a href="#"><i class="fas fa-sliders-h"></i><span>Calculate Profit</span></a>
       <a href="ViewProfit.aspx"><i class="fas fa-table"></i><span>Profit Tables</span></a>
       <a href="InsertSalaryaspx.aspx"><i class="fas fa-th"></i><span>Salary Forms</span></a>
       <a href="SalaryView.aspx"><i class="fas fa-th"></i><span>Payroll</span></a>    </div>
    <!--sidebar end-->


            <div class="col-lg-1"></div>



            <div class="col-lg-6">
                
                 <div id="ui">
                <div id="admitcard">
               
                    <div class="row">
                        <div class="col-md-4"><asp:Label ID="Label8" runat="server" Text="0"></asp:Label></div>

                        <div class="col-sm-4"> 
                            <div class="row">
                            <img width="200px" src="images/icc-newlogo.png" />
                            </div>


                            <div class="row">
                             <p style="font-size:14px; text-align:center"><b>International Construction Consortium</b><br />
                          Income Statement
                                <br />
                             For the Month Ended   <asp:Label ID="Label9" runat="server" Text="0"></asp:Label> to   <asp:Label ID="Label10" runat="server" Text="0"></asp:Label></p>
                        </div>
                         </div>           
                
                    </div>
                    <hr style="color:black"/>
                    <br /><br /><br /><br />

                   <div class="form-group row">
                        <label for="billdesc" class="col-sm-9 col-form-label" >Operating Income (RS):</label>
                        <div class="col-sm-3">
                      <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
                            </div>
                      </div>


                     <div class="form-group row">
                         <label for="billdesc" class="col-sm-9 col-form-label" >Transport Mangement Expenditures (RS):</label>
                        <div class="col-sm-3">
                      <asp:Label ID="Label3" runat="server" Text="0"></asp:Label>
                            </div>
                      </div>
   



                       <div class="form-group row">
                         <label for="billdesc" class="col-sm-9 col-form-label" >Inventory And Raw Material Management Expenditures (RS):</label>
                        <div class="col-sm-3">
                      <asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
                            </div>
                      </div>


                    <div class="form-group row">
                         <label for="billdesc" class="col-sm-9 col-form-label" >Employee Management Expenses (RS):</label>
                        <div class="col-sm-3">
                      <asp:Label ID="Label5" runat="server" Text="0"></asp:Label>
                            </div>
                      </div>


                    <br />
                     

                  <div class="form-group row">
                         <label for="billdesc" class="col-sm-9 col-form-label" >Taxes And Operating Expenses (RS):</label>
                        <div class="col-sm-3">
                      <asp:Label ID="Label6" runat="server" Text="0"></asp:Label><hr />
                            </div>
                      </div>
                    <br /><br />

                     <div class="form-group row">
                         <label for="billdesc" style="color:red" class="col-sm-9 col-form-label" >Gross Profit (RS):</label>
                        <div class="col-sm-3">
                      <asp:Label ID="Label7" runat="server" Text="0"></asp:Label><hr /><hr />
                            </div>
                      </div>


                                                  

                   
                    <br /><br /><br /><br />
                    <br /><br /><br /><br />

                       <p>.............................</p>
                     <p>Signature</p>
                     </div>   
              <input type="button" id="btnExport" value="Download as pdf" onclick="Export()" class="btn btn-warning" />&nbsp;

            </div>

        </div>

                </div>

        </div>
        
    
    </div>

</asp:Content>

