<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CAM.aspx.cs" Inherits="Construction_Project.CAM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function (){

            //$(document).ready(function () {
                //$('.table').DataTable();
            //});


            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
     <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">           

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2><b>Customer Profile</b></h2>
                                    
                                </center>

                            </div>

                           </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="200px"src="imgs/cus.jpg" />
                                </center>

                            </div>

                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                           </div>                                                 
                                       <div class="row">
                                        <div class="col-md-12">
                                            <label>Customer ID</label>
                                            <div class="form-group">
                                                <div class="input-group">
                                                <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeholder="ID"
                                                   ></asp:TextBox>
                                                 <asp:Button Class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                            </div>
                                        </div>
                                    </div>
                                       
                                       


                                    </div>
                                         

                                        

                                       <div class="row">                                                              
                                           <div class="col-12">
                                               <asp:Button Class="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />

                                           </div>
                                       </div>



                                       
                    </div>


               
        </div>
        <a href="CAMhomepage.aspx"> << Back to Home</a>
                <br />
                <br />

    </div>

            
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <center>
                            <a href="Cus_profile.aspx"<button type="button"  class="btn btn-warning btn-lg">Customer Accounts Management</button></a>
                            <br />
                            <br />
                            <asp:Button ID="Button2" class="btn btn-warning btn-lg" runat="server" Text="Customer Details Report" OnClick="Button2_Click"></asp:Button>
                        </center>
                        
                    </div>
                </div>
            </div>
            
        <div class="col-md-12">
            <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="180px" src="imgs/de.jpg"/>
                                </center>

                            </div>

                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2><b>Customer Details</b></h2>
                                    
                                    <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Customer info"></asp:Label>
                                </center>

                            </div>

                           </div>

                         <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                           </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NIC" DataSourceID="SqlDataSource1" ForeColor="#333333" CellPadding="4" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                 
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="NIC" HeaderText="NIC" ReadOnly="True" SortExpression="NIC" />
                                        <asp:BoundField DataField="Customer_type" HeaderText="Customer_type" SortExpression="Customer_type" />
                                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                        <asp:BoundField DataField="Account_status" HeaderText="Account_status" SortExpression="Account_status" />
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>

                            </div>

                           </div>
                               
                               
            </div>

        </div>



        </div>

</div>
</div>

</asp:Content>
