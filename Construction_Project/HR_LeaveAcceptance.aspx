<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="HR_LeaveAcceptance.aspx.cs" Inherits="Construction_Project.HR_LeaveAcceptance" %>
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
            <div class="col-md-6">

                <div class="card" style="">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="120px" src="imgs/leaveAcceptance.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Leave Acceptance</h4>
                                </center>
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <br />

                        <div class="row">

                            <div class="col-md-4">
                                <label>Employee ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeHolder="Emp ID"></asp:TextBox>
                                        <asp:Button class="btn btn-outline-primary" ID="Button1" runat="server" Text="GO" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>First Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeHolder="FName"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Last Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeHolder="LName"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-8">
                               <label>Leave Status</label>
                               <div class="form-group">
                                 <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeHolder="Leave Status" ReadOnly="true"></asp:TextBox>
                                    <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                 </div>
                                </div>
                               </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label>Leave Type</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeHolder="Leave Type" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <lable>Starting Date</lable>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" TextMode="Date" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <lable>No of Dates</lable>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" TextMode="Number" placeHolder="NoOfDates" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                      
                        <div>

                    </div>
            </div>

        </div>

         <div class="col-md-6">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Leave Requests</h4>
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
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="LeaveID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="LeaveID" HeaderText="Leave ID" InsertVisible="False" ReadOnly="True" SortExpression="LeaveID" />
                                        <asp:BoundField DataField="LeaveType" HeaderText="Leave Type" SortExpression="LeaveType" />
                                        <asp:BoundField DataField="StartingDate" HeaderText="Starting Date" SortExpression="StartingDate" />
                                        <asp:BoundField DataField="NoOfDates" HeaderText="No Of Dates" SortExpression="NoOfDates" />
                                        <asp:BoundField DataField="Eid" HeaderText="Employee id" SortExpression="Eid" />
                                        <asp:BoundField DataField="Leave_Status" HeaderText="Leave Status" SortExpression="Leave_Status" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT [LeaveID], [LeaveType], [StartingDate], [NoOfDates], [Eid], [Leave_Status] FROM [Employee_Leave]"></asp:SqlDataSource>
                            </div>
                        </div>

                    </div>



                </div>
            </div>

    </div>

        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/HRHomePage.aspx"  ForeColor="#000099">Back to Home</asp:LinkButton>
        
  </div>

</asp:Content>
