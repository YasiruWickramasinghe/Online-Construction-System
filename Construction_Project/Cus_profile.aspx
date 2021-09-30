<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cus_profile.aspx.cs" Inherits="Construction_Project.Cus_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <script type="text/javascript">
        $(document).ready(function () {


            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

    </script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="250px"src="imgs/login.png" />
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2><b>Member Details</b></h2>
                                    
                                </center>

                            </div>

                           </div>

                         <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                           </div>
                               
                                <div class="row">
                                    <div class="col">
                                        <label for="exampleInputEmail1">Name</label>
                                        <div class="form-group">
                                   <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server" placeholder="Customer name" ReadOnly="true"></asp:TextBox>
                                     
                               </div>
                                    <label for="exampleInputEmail1">Address</label>
                                   <div class="form-group">
                                   <asp:TextBox Cssclass="form-control" ID="TextBox2" runat="server" placeholder="Customer Address" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
                                     
                                    </div>

                                       <div class="row">
                                        <div class="col-md-6">
                                            <label>Email</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeholder="Email" ReadOnly="true"
                                                   ></asp:TextBox>
                                            </div>
                                        </div>
                                       
                                       <div class="col-md-6">
                                            <label>Contact No</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="NIC" ReadOnly="true"
                                                TextMode="Number"></asp:TextBox>
                                            </div>
                                        </div>


                                    </div>
                                         <div class="row">
                                        <div class="col-md-6">
                                            <label>NIC</label>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <asp:TextBox Class="form-control" ID="TextBox9" runat="server" placeholder="NIC"
                                                   ></asp:TextBox>
                                                    <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />

                                                </div>
                                               
                                            </div>
                                        </div>
                                       
                                       <div class="col-md-6">
                                            <label>Customer Type</label>
                                            <div class="form-group">
                                                 <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>


                                    </div>

                                        <div class="row">
                                            
                                           <div class="col">
                                               <center>
                                               <span class="badge badge-pill badge-info">Login Credentials</span>
                                               </center>
                                           </div>
                                               
                                       </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <label>Username</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox4" runat="server" placeholder="username"
                                                   ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                       
                                       <div class="col-md-4">
                                            <label>Password</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="password"
                                                TextMode="Password"   ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-9">
                                            <label>Account Status</label>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="AccountStatus" ReadOnly="true"
                                                   ></asp:TextBox>

                                                    <asp:LinkButton  class="btn btn-success mr-1" ID="LinkButton1"  runat="server" Text="A" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                                     <asp:LinkButton  class="btn btn-warning mr-1" ID="LinkButton2"  runat="server" Text="P" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                                     <asp:LinkButton  class="btn btn-danger mr-1" ID="LinkButton3"  runat="server" Text="D" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>

                                                    
                                                  

                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                       



                                       
                    </div>


                </div>

            </div>

        </div>
        <a href="CAMhomepage.aspx"> << Back to Home</a>
                <br />
                <br />

    </div>
           <div class="col-md-7">

            <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="250px" src="imgs/im.jpg"/>
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2><b>Customer Details Management</b></h2>
                                    
                                    <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your contract projects info"></asp:Label>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NIC" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                                    <Columns>
                                        <asp:BoundField DataField="NIC" HeaderText="NIC" ReadOnly="True" SortExpression="NIC" />
                                        <asp:BoundField DataField="Account_status" HeaderText="Account_status" SortExpression="Account_status" />
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                    </Columns>
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>

                            </div>
                            
                           </div>
                               
                               
            </div>

        </div>



        </div>

</div>
</div>

</asp:Content>
