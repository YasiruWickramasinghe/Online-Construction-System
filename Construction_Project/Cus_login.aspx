<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cus_login.aspx.cs" Inherits="Construction_Project.Cus_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">
            
            <div class="col-md-6 mx-auto">
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
                                    <h2><b>Customer Login</b></h2>
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
                                        <label for="exampleInputEmail1">Username</label>
                                        <div class="form-group">
                                   <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server" placeholder="Customer Username"></asp:TextBox>
                                     
                               </div>
                                    <label for="exampleInputEmail1">Password</label>
                                   <div class="form-group">
                                   <asp:TextBox Cssclass="form-control" ID="TextBox2" runat="server" placeholder="Customer Password" TextMode="Password"></asp:TextBox>
                                     
                                    </div>
                                    
                                        <div class="form-group">
                                            <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                     
                                         </div>
                                         <div class="form-group">
                                             <a href="Cus_signup.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>
                                     
                                         </div>
                    </div>


                </div>

            </div>

        </div>
        <a href="SiteHome.aspx"> << Back to Home</a>
                <br />
                <br />

    </div>

</div>
</div>

</asp:Content>
