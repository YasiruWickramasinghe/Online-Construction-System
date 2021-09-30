<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="c_estimation.aspx.cs" Inherits="Construction_Project.WebForm2" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
    <br>
     <div class="container-fluid"><br><br>
         <center><h1><b>Prepare Estimation</b></h1></center><br><br />
         <div class="row">
                              
             
            <div class="col-4"></div>                      
                         
               <div class="col-8">
                                <label style="font-size: large; font-family: Arial"><b>Estimation ID</b></label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Estimation ID" Width="300"></asp:TextBox>
                                        
                                   </div>
                                 <label style="font-size: large; font-family: Arial"><b>Tender ID</b></label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Tender ID" Width="300" ></asp:TextBox>
                                        

                                   </div>
         
                                  <label style="font-size: large; font-family: Arial"><b>Location</b></label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Location" Width="300" ></asp:TextBox>
                                        

                                   </div>
             </div>
             
         </div>
        <div class="row">

              <div class="col-md-6">

                  <div class="card">
                      <div class="card-body" style="background:url(imgs/cv2.jpg)">
                          <div class="row">
                              <div class="col">
                                  <center>
                                      <h4 style="font-family: Calibri; font-size: xx-large"><b>Estimation</b></h4>
                                      
                                        
                                  </center>

                              </div>


                          </div>


                            <div class="row">
                              <div class="col">
                                  <center>
                                      <img width="100px" src="imgs/cement.png" />
                                  </center>

                              </div>


                          </div>

                          <div class="row">
                              <div class="col">
                                  <hr>

                              </div>

                              

                          </div>
                          <center>
                           <p>
         <b>  <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Calculate Material Cost" Font-Size="Larger"></asp:Label></b>
        </p>
                          </center>
            
        <p>
            &nbsp;</p>
        <table border="1" class="auto-style1" style="font-family: 'Arial Black'; font-size: large; background-color: #FF9999;">
            <tr>
                <td class="auto-style6">MID</td>
                <td class="auto-style5">Material Name</td>
                <td class="auto-style10">Unit Price</td>
                <td class="auto-style7">Quantity</td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" Height="20px" Width="98px" style="text-align:center"></asp:TextBox>
                </td>
                <td class="auto-style3" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Height="22px" Width="158px" style="text-align:center"></asp:TextBox>
                </td>
                <td class="auto-style11" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9" Height="22px" Width="155px" style="text-align:center"></asp:TextBox>
                </td>
                <td class="auto-style12" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style9" Height="21px" Width="177px" style="text-align:center"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <center>
                    <asp:Button ID="Button1" runat="server"  Height="33px" Text="Add Data" Width="136px" OnClick="Button1_Click" class="btn btn-warning"/>
                        </center>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <center>
                    <asp:Button ID="Button4" runat="server"  Height="33px" Text="Remove" Width="136px" OnClick="Button4_Click" class="btn btn-warning"/>
                        </center>
                </td>
            </tr>
        </table>

                         

                        </div>
                  </div>

                  <a href="permenentcontrctmanager.aspx"><< Back to Home</a><br><br>

                </div>

              <div class ="col-md-6">

                <div class="card"style="background:url(imgs/cv2.jpg)">
                      <div class="card-body">
                        

                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4 style="font-family: Calibri; font-size: xx-large"><b>Estimated Material Cost</b></h4>
                                      
                                        
                                  </center>

                              </div>


                          </div>


                          <div class="row">
                              <div class="col">
                                  <hr>

                              </div>


                          </div>

                           <div class="row">
                              <div class="col">
                                  
                          <form id="form1">
        <div>
        </div>
      
        
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" ShowFooter="True">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="mid" HeaderText="MID">
                <ItemStyle HorizontalAlign="Center" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="materialname" HeaderText="Material_Name">
                <ItemStyle HorizontalAlign="Center" Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="unitprice" HeaderText="Unit_Price">
                <ItemStyle HorizontalAlign="Center" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="total" HeaderText="Total">
                <ItemStyle HorizontalAlign="Center" Width="150px" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <p>
            <asp:Button ID="Button2" runat="server" BackColor="#FF5050" Height="50px" OnClick="Button2_Click" Text="Save Total Cost" Width="179px" class="btn btn-danger btn btn-lg" />
        </p>
    </form><br> <br><br><br>
              
                                
                              </div>


                          </div>


                      
                         

                        </div><br><br><br>
                  </div>
                   <asp:Button ID="Button3" runat="server" BackColor="#FF5050" Height="50px" OnClick="Button3_Click" Text="Next" Width="179px" class="btn btn-danger btn btn-lg" /><br>
                  
            </div>
            <br>
           

    </div>



</asp:Content>
