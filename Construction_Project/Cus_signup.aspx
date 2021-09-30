<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cus_signup.aspx.cs" Inherits="Construction_Project.Cus_signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">
            
            <div class="col-md-8 mx-auto">
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
                                    <h2><b>Customer Registation</b></h2>
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
                                   <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server" placeholder="Customer name"></asp:TextBox>
                                     
                               </div>
                                    <label for="exampleInputEmail1">Address</label>
                                   <div class="form-group">
                                   <asp:TextBox Cssclass="form-control" ID="TextBox2" runat="server" placeholder="Customer Address" TextMode="MultiLine"></asp:TextBox>
                                     
                                    </div>

                                       <div class="row">
                                        <div class="col-md-6">
                                            <label>Contact Number</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeholder="contact no"
                                                  textmode="Number" ></asp:TextBox>
                                            </div>
                                        </div>
                                       
                                       <div class="col-md-6">
                                            <label>Email</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="Email"
                                               ></asp:TextBox>
                                            </div>
                                        </div>


                                    </div>
                                         <div class="row">
                                        <div class="col-md-6">
                                            <label>NIC</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="NIC"
                                                   ></asp:TextBox>
                                            </div>
                                        </div>
                                       
                                       <div class="col-md-6">
                                            <label>Customer Type</label>
                                            <div class="form-group">
                                                <asp:DropDownList ID="DropDownList1" Class="form-control" runat="server">
                                                    <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                                    <asp:ListItem Text="Person" Value="Person"></asp:ListItem>
                                                    <asp:ListItem Text="Company" Value="Company"></asp:ListItem>
                                                </asp:DropDownList>
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
                                        <div class="col-md-6">
                                            <label>Username</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox4" runat="server" placeholder="username"
                                                   ></asp:TextBox>
                                            </div>
                                        </div>
                                       
                                       <div class="col-md-6">
                                            <label>Password</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="password"
                                                TextMode="Password"   ></asp:TextBox>
                                            </div>
                                        </div>


                                    </div>

                                       <div class="row">
                                           <div class="col">
                                               <div class="form-group">
                                            <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                     
                                         </div>

                                           </div>
                                       </div>



                                       
                    </div>


                </div>

            </div>

        </div>
        <a href="Cus_homepage.aspx"> << Back to Home</a>
                <br />
                <br />

    </div>

</div>
</div>

</asp:Content>
