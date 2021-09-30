<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="viewemployee.aspx.cs" Inherits="Construction_Project.viewemployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <script type="text/javascript">

      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });

   </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




     <div class="container">
        <div class="row">

            <div class="col-md-12">
 
                <br><br>

                    <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT [NPEID], [Emp_Name], [Experience], [Profession], [Marrage_Status], [NIC], [Joind_Date], [Contact_Number] FROM [Non_Permant_Employee_tbl]"></asp:SqlDataSource>


                     <div class="col">
                        <center>
                           <h4>Non-Permanat Employees Engaged In The Project</h4>
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
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="NPEID" DataSourceID="SqlDataSource2" BackColor="#FFCCFF" BorderColor="#CC00CC" BorderStyle="Dashed" FooterStyle-BorderStyle="Solid" FooterStyle-BackColor="#FFFF66" FooterStyle-BorderColor="Blue" FooterStyle-ForeColor="#FF6600" ForeColor="Black" ViewStateMode="Disabled" ValidateRequestMode="Disabled" UseAccessibleHeader="False"  >
                            <Columns>
                                <asp:BoundField DataField="Emp_Name" HeaderText="Employ Name" SortExpression="Emp_Name" />
                                <asp:BoundField DataField="NPEID" HeaderText="NPEID" ReadOnly="True" SortExpression="NPEID" />
                                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                <asp:BoundField DataField="Profession" HeaderText="Profession" SortExpression="Profession" />
                                <asp:BoundField DataField="Marrage_Status" HeaderText="Marrage Status" SortExpression="Marrage_Status" />
                                <asp:BoundField DataField="NIC" HeaderText="NIC" SortExpression="NIC" />
                                <asp:BoundField DataField="Joind_Date" HeaderText="Date Joined" SortExpression="Joind_Date" />
                                <asp:BoundField DataField="Contact_Number" HeaderText="Contact Number" SortExpression="Contact_Number" />
                            </Columns>

                            <FooterStyle BackColor="#FFFF66" BorderColor="Blue" BorderStyle="Solid" ForeColor="#FF6600"></FooterStyle>
                         </asp:GridView>
                     </div>
                  </div>


               </div>
            </div>  

                 <br><br>
                         <a href="ManageNonPermanatEmployees.aspx"> Manage Employees >></a><br>
                 <br>
                         <a href="SiteSupervisorHome.aspx"> << Back to My Site Supervisor Home </a><br>
                <br><br><br><br><br><br>

            </div> 

        </div>  <%--column sub Row Over--%>

 </div>

















</asp:Content>
