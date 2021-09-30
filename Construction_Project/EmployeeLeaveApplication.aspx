<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EmployeeLeaveApplication.aspx.cs" Inherits="Construction_Project.EmployeeLeaveApplication" %>
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
                                    <h4>LEAVE APPLICATION</h4>
                                </center>
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col-md-8">
                                    <label>Employee ID</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox" CssClass="form-control" runat="server" placeholder="Emp ID"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                    <label>First Name</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                                    </div>
                            </div>
                        
                            <div class="col-md-4">
                                    <label>Last Name</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                                    </div>
                            </div>
                      
                            <div class="col-md-4">
                                    <label>Designation</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Designation"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                    <label>Starting Date</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>

                            <div class="col-md-6">
                                    <label>No of Dates</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="No of Dates" TextMode="Number"></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <label>Leave Type</label>
                                    <center>
                                         <div class="form-group">
                                              <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                   <asp:ListItem Text="Medical Leave" Value="Medical leave" />
                                                   <asp:ListItem Text="Casual Leave" Value="Casual leave" />
                                                   <asp:ListItem Text="Half-Pay Leave" Value="Half-pay leave" />
                                              </asp:RadioButtonList>  
                                         </div>
                                    </center>
                            </div>
                        </div>

                       <div class="row">
                            <div class="col">
                                    <div class="form-group">
                                        <center>
                                            <asp:Button class="btn btn-danger btn-lg" ID="Button1" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click"/>
                                        </center>
                                    </div>
                            </div>
                        </div>

                    </div>
                
            </div>

                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/P_EmployeeHomePage.aspx"  ForeColor="#000099">Back to Home</asp:LinkButton>

        </div>
    </div>

</asp:Content>
