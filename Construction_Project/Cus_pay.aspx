<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cus_pay.aspx.cs" Inherits="Construction_Project.Cus_pay" %>
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
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2><b>Customer Payment Details</b></h2>
                                    
                                </center>

                            </div>

                           </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="200px"src="imgs/pay.png" />
                                </center>

                            </div>

                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                           </div>
                               
                                

                                       <div class="row">
                                        <div class="col-md-8">
                                            <label>Payment ID</label>
                                            <div class="form-group">
                                                <div class="input-group">
                                                <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeholder="ID"
                                                   ></asp:TextBox>
                                                 <asp:Button Class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                            </div>
                                        </div>
                                    </div>
                                       
                                       


                                    </div>
                                         

                                        

                                       <div class="row">
                                           
                                           
                                           <div class="col-12">
                                               <asp:Button Class="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                                               <asp:Button Class="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Customer Payment Details Report" OnClick="Button2_Click" />
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
                                    <img width="180px" src="imgs/de.jpg"/>
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2><b>Customer Payment Details</b></h2>
                                    
                                    <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Customer Payment info"></asp:Label>
                                </center>

                            </div>

                           </div>

                         <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                           </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT * FROM [CustomerPayment]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountNo" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                                    <Columns>
                                        <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" ReadOnly="True" SortExpression="AccountNo" />
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="Bank_Name" HeaderText="Bank_Name" SortExpression="Bank_Name" />
                                        <asp:BoundField DataField="Bank_Branch" HeaderText="Bank_Branch" SortExpression="Bank_Branch" />
                                        <asp:BoundField DataField="Payment_Type" HeaderText="Payment_Type" SortExpression="Payment_Type" />
                                    </Columns>
                                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                                </asp:GridView>

                            </div>

                           </div>
                               
                               
            </div>

        </div>



        </div>

</div>
</div>

</asp:Content>
