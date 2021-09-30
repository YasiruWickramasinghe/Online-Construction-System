<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cus_Tender.aspx.cs" Inherits="Construction_Project.Cus_Tender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">
            
            <div class="col-md-8 mx-auto">
                <div class="card" style="background-color:aquamarine;">
                    <div class="card-body">
                        
                        

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2><b>Customer Contract Details</b></h2>
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
                                        <label for="exampleInputEmail1">NIC</label>
                                        <div class="form-group">
                                   <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server" placeholder="Customer name"></asp:TextBox>
                                     
                               </div>
                                    <label for="exampleInputEmail1">Address</label>
                                   <div class="form-group">
                                   <asp:TextBox Cssclass="form-control" ID="TextBox2" runat="server" placeholder="Customer Address" TextMode="MultiLine"></asp:TextBox>
                                     
                                    </div>

                                       <div class="row">
                                        <div class="col-md-4">
                                            <label>Location</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeholder="Email"
                                                   ></asp:TextBox>
                                            </div>
                                        </div>
                                       
                                       <div class="col-md-4">
                                            <label>Number of floors</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="number"
                                                TextMode="Number"></asp:TextBox>
                                            </div>
                                        </div>

                                            <div class="col-md-4">
                                            <label>Number of square feet</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox8" runat="server" placeholder="sq-feet"
                                                TextMode="Number"></asp:TextBox>
                                            </div>
                                        </div>



                                    </div>
                                         <div class="row">
                                        <div class="col-md-6">
                                            <label>Expected Date</label>
                                            <div class="form-group">
                                                <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="date" TextMode="Date"
                                                   ></asp:TextBox>
                                            </div>
                                        </div>
                                       
                                       <div class="col-md-6">
                                            <label>Building Type</label>
                                            <div class="form-group">
                                                <asp:DropDownList ID="DropDownList1" Class="form-control" runat="server">
                                                    <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                                    <asp:ListItem Text="House" Value="House"></asp:ListItem>
                                                    <asp:ListItem Text="Building" Value="Building"></asp:ListItem>
                                                    <asp:ListItem Text="Road" Value="Road"></asp:ListItem>
                                                    <asp:ListItem Text="Bridge" Value="Bridge"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>


                                    </div>

                                        

                                    

                                       <div class="row">
                                           <div class="col">
                                               <div class="form-group">
                                            <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />
                                                   <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Next" OnClick="Button2_Click" />
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
