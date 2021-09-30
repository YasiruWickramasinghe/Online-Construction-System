<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="createaccount.aspx.cs" Inherits="Construction_Project.createaccount" %>
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
                                <center><img width="100px" src="imgs/cuser.png" />
                                </center>
                                </div>
                        </div>

                         <div class="row">
                            <div class="col-12">
                                <center>
                                    <h4>CREATE A NEW ACCOUNT</h4>
                                </center>
                                </div>
                        </div>

                         <div class="row">
                            <div class="col-12">
                                <hr>
                                </div>
                        </div>

                         <div class="row">
                            <div class="col-12">
                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                                </div>

                                <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                </div>

                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>

                                <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                </div>

                                <label>UserName</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="UserName" TextMode="SingleLine"></asp:TextBox>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                 <div class="form-group">
                                     <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="JOIN" OnClick="Button1_Click" />
                                </div>

                                </div>

                        



                        </div>

                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br><br>
            </div>
        </div>
    </div>
</asp:Content>