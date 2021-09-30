<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="Construction_Project.EmployeeLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
               
                <div class="card text-primary border-primary" style="border: 5px solid blue; border-radius:15px;">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="120px" src="imgs/user.png" />
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>SIGN IN</h3>
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
                                
                                <label>Username</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeHolder="Username"></asp:TextBox>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeHolder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <label>Designation</label>
                                <div class="form-group">
                                     <asp:DropDownList ID="DropDownList1" runat="server">
                                         <asp:ListItem Text="Select" Value="Select"/>
                                         <asp:ListItem Text="Employee" Value="Employee" />
                                         <asp:ListItem Text="HR Manager" Value="HR Manager" />
                                         <asp:ListItem Text="Accountant" Value="Accountant" />
                                         <asp:ListItem Text="Accounts-Clerk" Value="Accounts-Clerk" />
                                         <asp:ListItem Text="Site Supervisor" Value="Site Supervisor" />
                                         <asp:ListItem Text="Logistic Manager" Value="Logistic Manager" />
                                         <asp:ListItem Text="Fleet Manager" Value="Fleet Manager" />
                                         <asp:ListItem Text="Supervisor" Value="Supervisor" />
                                         <asp:ListItem Text="Supplier Manager" Value="Supplier Manager" />
                                         <asp:ListItem Text="Store Keeper" Value="Store Keeper" />
                                         <asp:ListItem Text="Customer Affairs Manager" Value="Customer Affairs Manager" />
                                         <asp:ListItem Text="Contract Manager" Value="Contract Manager" />
                                     </asp:DropDownList>
                                 </div>

                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col">
                                 <div class="form-group">
                                     <asp:Button class="btn btn-success btn-block btn-lg" ID="Button" runat="server" Text="SIGN IN" OnClick="Button1_Click"></asp:Button>
                                 </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                    
            </div>
        </div>
    </div>

</asp:Content>
