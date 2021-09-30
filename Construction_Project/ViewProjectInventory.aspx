<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewProjectInventory.aspx.cs" Inherits="Construction_Project.ViewProjectInventory" %>


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
 
                <div class="card">
                    <div class="card-body">
 
 
                        <div class="row">
                            <div class="col">
                                    <center>
                                        <h4>Inventry Item List For The Project</h4>
                                    </center>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT * FROM [tool_management_tbl]"></asp:SqlDataSource>


                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tool_id" DataSourceID="SqlDataSource1" BackColor="#FFCCFF" BorderColor="#FF0066" BorderStyle="Solid" BorderWidth="7px" >
                                    <Columns>
                                        <asp:BoundField DataField="tool_id" HeaderText="Inventry Item ID" ReadOnly="True" SortExpression="tool_id" />
                                        <asp:BoundField DataField="tool_dis" HeaderText="Item Discription" SortExpression="tool_dis" />
                                    </Columns>

                                </asp:GridView>
                            </div>

                        </div>
 
 

                    </div>                  <%--card Body Over--%>
                </div>                      <%--card Over--%>
 


                   <div>
                   <br>
                         <a href="ToolManagement.aspx">Control Inventory Items >></a><br>
                   <br>
                  </div>


                   <div>
                   <br>
                         <a href="SiteSupervisorHome.aspx"><< Back to My Site Supervisor Home</a><br>
                   <br>
                  </div>



                 <br> <br> <br> <br>
                 <div class="row">
                            <div class="col">
                                    <div class="form-group">
                                        <center>
                                            <asp:Button class="btn btn-danger" ID="Button4" runat="server" Text="EXPORT TO PDF" OnClick="Button4_Click1"  />
                                        </center>
                                    </div>
                            </div>
                        </div>



                 <br> <br>








            </div>                         <%--Column Over--%>
 
        </div>                             <%--Row Over--%>

























    </div>                                 <%--Container Over--%>



</asp:Content>                             <%--Second Main Asp Content Over--%>





 <%--Thank You ! Work Of R.K !--%>