<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ManageNonPermanatEmployees.aspx.cs" Inherits="Construction_Project.ManageNonPermanatEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
   </script>


</asp:Content>





<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="container">
        <div class="row">

            <div class="col-md-12">

                <br><br>
 
                <div class="card">
                    <div class="card-body" style="background-color: #00FFCC; background-image: url('https://localhost:44302/imgs/u9Gk6Yq.jpg'); border-style: dotted; border-width: inherit; line-height: normal; ">



                      <div class="row">
                     <div class="col">
                        <center>
                            <br><br>
                            <h4>Non Permant Employee Management</h4>
                            <br><br>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                 
                  <div class="row">
                     <div class="col-md-3">
                         <br>
                        <label>NPEID :</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="NPID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                         <br>
                        <label>Employee Name :</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Employee Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>







                  <div class="row">
                      <br><br>

                     <div class="col-md-6">
                         <br>
                        <label>Experience :</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Over_30_Years" Value="Over_30_years" />
                              <asp:ListItem Text="Over_25_years" Value="Over_25_years" />
                              <asp:ListItem Text="Over_20_years" Value="Over_20_years" />
                              <asp:ListItem Text="Over_10_years" Value="Over_10_years" />
                              <asp:ListItem Text="Over_5_years" Value="Over_5_years" />
                              <asp:ListItem Text="None_Before" Value="None_Before" />
                           </asp:DropDownList>
                        </div>
                         <br>
                        <label>Marrage Status :</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Married" Value="Married" />
                              <asp:ListItem Text="Single" Value="Single" />
                           </asp:DropDownList>
                        </div>
                     </div>







                     <div class="col-md-6">
                         <br>
                        <label>Profession :-</label>
                      
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Woking Ability"></asp:TextBox>
                     </div>
                  </div>








             


                  <div class="row">
                     <div class="col-md-4">
                        <label>NIC : </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="NIC_Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Joined Date:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Joine Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Contact Number:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Contact Number" ></asp:TextBox>
                        </div>
                     </div>
                  </div>






                



                  <div class="row">
                     <div class="col-12">
                         <br>
                        <center><label>Report on The employee</label></center>
                         <br>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Report on the employee" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            <br><br><br>
                        </div>
                     </div>
                  </div>



                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add EMP" BorderColor="#3333CC" Font-Bold="True" BackColor="Blue" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update EMP" BorderColor="#3333CC" Font-Bold="True" BackColor="Blue" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete EMP" BorderColor="#3333CC" Font-Bold="True" BackColor="Blue" OnClick="Button2_Click" />
                     </div>
                  </div>
                    <br><br>
               


                           <br>
         



                    </div>                      <%--card Body Over--%>
                </div>                          <%--card Over--%>
               <br>
                         <a href="SiteSupervisorHome.aspx"> << Back to My Site Supervisor Home </a><br>
                <br><br><br>

            </div>                              <%--Column Over--%>
            </div>                                    <%--Main Row Over--%>




  <div class="row">

            <div class="col-md-12">
 
                <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT [NPEID], [Emp_Name], [Experience], [Profession], [NIC], [Joind_Date], [Contact_Number], [Report] FROM [Non_Permant_Employee_tbl]"></asp:SqlDataSource>


                     <div class="col">
                        <center>
                           <h4>Non-Permanat Employees Engaged in The Project</h4>
                        </center>
                     </div>
                  </div>


                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>


                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NPEID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="NPEID" HeaderText="NPEID" ReadOnly="True" SortExpression="NPEID" />
                                <asp:BoundField DataField="Emp_Name" HeaderText="Employ Name" SortExpression="Emp_Name" />
                                <asp:BoundField DataField="NIC" HeaderText="NIC" SortExpression="NIC" />
                                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                <asp:BoundField DataField="Profession" HeaderText="Profession" SortExpression="Profession" />
                                <asp:BoundField DataField="Contact_Number" HeaderText="Contact Number" SortExpression="Contact_Number" />
                                <asp:BoundField DataField="Joind_Date" HeaderText="Joind Date" SortExpression="Joind_Date" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>


               </div>
            </div>   <br><br><br><br>
           </div>                                 <%--column Over--%>
 

      <br><br>
        </div>      <br><br>                              <%--Main Row Over--%>
    </div>                                        <%--Whole Container Over--%>



</asp:Content>                                    <%--Second Main Asp Content Over--%>





 <%--Thank You ! Work Of R.K !--%>