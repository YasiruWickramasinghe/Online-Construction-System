<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cus_payment.aspx.cs" Inherits="Construction_Project.Cus_payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">
            
            <div class="col-md-8 mx-auto">
                <div class="card" style="background-color:#00CC99;">
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
                                <hr />

                            </div>

                           </div>
                               
                                <div class="row">
                                    <div class="col">
                                        <label for="exampleInputEmail1">Name</label>
                                        <div class="form-group">
                                   <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server" placeholder="Customer name"></asp:TextBox>
                                     
                               </div>
                                    <label for="exampleInputEmail1">Bank Name</label>
                                   <div class="form-group">
                                   <asp:TextBox Cssclass="form-control" ID="TextBox2" runat="server" placeholder="Bank Name" ></asp:TextBox>
                                     
                                    </div>

                                       <div class="row">
                                        <div class="col-md-6">
                                            <label>Email</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeholder="Email"
                                                   ></asp:TextBox>
                                            </div>
                                        </div>

                                           
                                           <div class="col-md-6">
                                            <label>AccountNo</label>
                                            
                                                <asp:TextBox Class="form-control" ID="TextBox4" runat="server" placeholder="AccountNo" 
                                                   ></asp:TextBox>
                                                   
                                            
                                        </div>
                                       
                                       
                                       


                                    </div>
                                         <div class="row">
                                        <div class="col-md-6">
                                            <label>Bank Branch</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="Branch"
                                                   ></asp:TextBox>
                                            </div>
                                        </div>
                                       
                                       <div class="col-md-6">
                                            <label>Payment Type</label>
                                            <div class="form-group">
                                                <asp:DropDownList ID="DropDownList1" Class="form-control" runat="server">
                                                    <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                                    <asp:ListItem Text="Debit" Value="Debit"></asp:ListItem>
                                                    <asp:ListItem Text="Credit" Value="Credit"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>


                                    </div>

                                      

                                    

                                       <div class="row">
                                           <div class="col">
                                               <div class="form-group">
                                            <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />
                                                   <asp:Button class="btn btn-warning btn-block btn-lg"  ID="Button2" runat="server" Text="Next" OnClick="Button2_Click" />
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
