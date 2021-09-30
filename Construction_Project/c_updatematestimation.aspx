<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="c_updatematestimation.aspx.cs" Inherits="Construction_Project.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">

                                <label>Estimation ID</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="" Width="300"></asp:TextBox>
                                        
                                   </div>
                               <!--  <label>Tender ID</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Tender ID" Width="300" ></asp:TextBox>
                                        

                                   </div>
         
                                  <label>Location</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Location" Width="300" ></asp:TextBox>
                                        

                                   </div>-->

        <div class="row">

              <div class="col-md-6">

                  <div class="card">
                      <div class="card-body" style="background:url(imgs/cv2.jpg)">
                          <div class="row">
                              <div class="col">
                                  <center>
                                      <h4 style="font-family: Calibri; font-size: xx-large"><b>Update Material Estimation</b></h4>
                                      
                                        
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

                           <p>
            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Calculate Material Cost" Font-Size="Larger"></asp:Label>
        </p>
            
        <p>
            &nbsp;</p>
        <table border="1" class="auto-style1" style="font-family: 'Arial Black'; font-size: large; background-color: #FF9999;">
            <tr>
                <td class="auto-style6">MID</td>
                <td class="auto-style5">Material_Name</td>
                <td class="auto-style10">Unit_Price</td>
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
                <td colspan="5" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <center><asp:Button ID="Button1" runat="server" BackColor="#FFCC00" Height="33px" Text="Update Data" Width="136px" OnClick="Button1_Click" class="btn btn-warning" /></center>
                    
                </td>
            </tr>
             <tr>
                <td colspan="5" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <center><asp:Button ID="Button3" runat="server" BackColor="#FFCC00" Height="33px" Text="Remove" Width="136px" OnClick="Button3_Click" class="btn btn-warning" /></center>
                    
                </td>
            </tr>
        </table>

                         

                        </div>
                  </div>

                  <a href="permenentcontrctmanager.aspx"><< Back to Home</a><br><br>

                </div>

              <div class ="col-md-6">

                <div class="card">
                      <div class="card-body" style="background:url(imgs/cv2.jpg)">
                        

                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4 style="font-family: Calibri; font-size: xx-large"><b>Update Estimated Material Cost</b></h4>
                                      
                                        
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" ShowFooter="True" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
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
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <p>
            <asp:Button ID="Button2" runat="server" BackColor="#FF5050" Height="50px" OnClick="Button2_Click" Text="Save Changes " Width="179px" class="btn btn-danger btn btn-lg"/>
        </p> 
        
    </form><br> <br><br><br>
           
                                
                              </div>


                          </div>


                      
                         

                        </div>
                  </div>

            </div>

           

    </div>



</asp:Content>
