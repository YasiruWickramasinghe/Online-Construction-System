<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EmployeeProfile.aspx.cs" Inherits="Construction_Project.EmployeeProfile" %>
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
            <div class="col-md-8">
                <div class="card text-primary border-primary" style="border: 5px solid blue; border-radius:15px;">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/user.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Profile</h2>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label>First Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                                 </div>
                            </div>

                             <div class="col-md-6">
                                 <label>Last Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                                 </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Date of Birth"></asp:TextBox>
                                 </div>
                            </div>

                            <div class="col-md-6">
                                 <label>Contact Number</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="Phone"></asp:TextBox>
                                 </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Email Address</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                                 </div>
                            </div>

                            <div class="col-md-6">
                                 <label>Designation</label>
                                 <div class="form-group">
                                     <asp:DropDownList ID="DropDownList1" runat="server" ReadOnly="true">
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

                        <div class="row">
                            <div class="col-md-12">
                                 <label>Qualifications</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeHolder="Qualifications" TextMode="MultiLine"></asp:TextBox>
                                 </div>
                            </div>
                       </div>

                       <div class="row">
                               <div class="col">
                                   <center>
                                       <span class="badge badge-pill badge-primary">Login Credentials</span>
                                   </center>
                               </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col-md-6">
                                 <label>User Name</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Username" ReadOnly="true"></asp:TextBox>
                                 </div>
                            </div>

                            <div class="col-md-6">
                                <label>Password</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                 </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button" runat="server" Text="UPDATE PROFILE" OnClick ="UpdateButton_Click"></asp:Button>
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <br />
    
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/P_EmployeeHomePage.aspx" ForeColor="#000099">Back to Home</asp:LinkButton>

    <br />

</asp:Content>
