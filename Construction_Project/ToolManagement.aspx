<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ToolManagement.aspx.cs" Inherits="Construction_Project.ToolManagement" %>


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

                <br><br><br>
 
                <div class="card">
                    <div class="card-body" style="background-color: #00FFCC; background-image: url('https://localhost:44302/imgs/oNHaish.jpg'); border-style: dotted; border-width: inherit; line-height: normal; ">



                        <div class="row">
                            <div class="col">
                                    <center>
                                        <br><br>
                                        <h3>Site Inventory</h3>
                                        <br>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                    <center>
                                       <img width="300px" src="imgs/Steel_construction.jpg" />
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                                <br>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col-md-4">
                                <label>Tool ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ToolID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick ="Button1_Click" />
                                    </div>
                                </div>
                            </div>
 
                            <div class="col-md-8">
                                <label>Tool Discription</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Tool Discription"></asp:TextBox>
                                    <br><br>
                                </div>
                            </div>
                            <br><br>
                        </div>
 
                        
                        <div class="row">
                            <br><br>
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick ="Button2_Click1" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click1" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click1" />
                            </div>
                            
                        </div>
                         

                       <div class="row"> 
                            <div class="col">
                                <br><br>
                                <hr>
                                <br><br>
                            </div>
                       </div>
 



                    </div>                      <%--card Body Over--%>
                </div>                          <%--card Over--%>
                 <br>
                         <a href="SiteSupervisorHome.aspx"> << Back to My Site Supervisor Home </a><br>
                <br><br>

            </div>                              <%--Column Over--%>
            </div>                                    <%--Main Row Over--%>




  <div class="row">

            <div class="col-md-12">
 
                <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <div class="col">
                                    <center>
                                        <h4>Inventry Item List</h4>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tool_id" DataSourceID="SqlDataSource1" BackColor="#FFCCFF" BorderColor="#CC00CC" BorderStyle="Dashed" >
                                    <Columns>
                                        <asp:BoundField DataField="tool_id" HeaderText="Inventry Item ID" ReadOnly="True" SortExpression="tool_id" />
                                        <asp:BoundField DataField="tool_dis" HeaderText="Discription" SortExpression="tool_dis" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
 
 


                    </div>                        <%--card Body Over--%>
                </div>                            <%--card Over--%>
                <br><br><br>
           </div>                                 <%--column Over--%>
 


        </div>                                    <%--Main Row Over--%>
    </div>                                        <%--Whole Container Over--%>



</asp:Content>                                    <%--Second Main Asp Content Over--%>





 <%--Thank You ! Work Of R.K !--%>