<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="HR_EmployeeManagement.aspx.cs" Inherits="Construction_Project.HR_EmployeeManagement" %>

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
            <div class="col-md-3">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Employee Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/user.png" />
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
                                <label>Employee ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeHolder="Emp ID"></asp:TextBox>
                                        <asp:Button class="btn btn-outline-primary" ID="Button1" runat="server" Text="GO" onClick="Button1_Click"/>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>First Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeHolder="FName" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeHolder="LName" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeHolder="date of birth" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeHolder="ContactNo" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeHolder="Email" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Designation</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeHolder="Designation"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label>Qualifications</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeHolder="Qualifications" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <div class="form-group">
                                        <center>
                                            <asp:Button class="btn btn-warning" ID="Button3" runat="server" Text="UPDATE EMPLOYEE" OnClick="Button3_Click" />
                                        </center>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <div class="form-group">
                                        <center>
                                            <asp:Button class="btn btn-danger" ID="Button2" runat="server" Text="DELETE EMPLOYEE" OnClick="Button2_Click" />
                                        </center>
                                    </div>
                            </div>
                        </div>

                        <div>

                    </div>
            </div>

        </div>
    </div>

            <div class="col-md-9">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                           <div class="col">
                                <center>
                                    <h4>Employee List</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                                        <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" SortExpression="DateOfBirth" />
                                        <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" SortExpression="ContactNumber" />
                                        <asp:BoundField DataField="Email" HeaderText="Email Address" SortExpression="Email" />
                                        <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                                        <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" SortExpression="Qualifications" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT [EmployeeID], [FirstName], [LastName], [DateOfBirth], [ContactNumber], [Email], [Designation], [Qualifications] FROM [Permanent_Employee]"></asp:SqlDataSource>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <div class="form-group">
                                        <center>
                                            <asp:Button class="btn btn-danger" ID="Button4" runat="server" Text="EXPORT TO PDF" OnClick="Button4_Click" />
                                        </center>
                                    </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>

        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/HRHomePage.aspx"  ForeColor="#000099">Back to Home</asp:LinkButton>

    </div>

</asp:Content>
