<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="c_updatelabestimation.aspx.cs" Inherits="Construction_Project.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <div class="container-fluid">

                                <label>Estimation ID</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Estimation ID" Width="300"></asp:TextBox>
                                        
                                   </div>
                                <!-- <label>Tender ID</label>
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
                                      <h4 style="font-family: Calibri; font-size: xx-large"><b>Update Labour Estimation</b></h4>
                                      
                                        
                                  </center>

                              </div>


                          </div>


                            <div class="row">
                              <div class="col">
                                  <center>
                                      <img width="100px" src="imgs/builder.png" />
                                  </center>

                              </div>


                          </div>

                          <div class="row">
                              <div class="col">
                                  <hr>

                              </div>

                              

                          </div>

                           <p>
            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Calculate Labour Cost" Font-Size="Larger"></asp:Label>
        </p>
            
        <p>
            &nbsp;</p>
        <table border="1" class="auto-style1" style="font-family: 'Arial Black'; font-size: large; background-color: #FF9999;">
            <tr>
                <td class="auto-style6">LRID</td>
                <td class="auto-style5">Labour_Role</td>
                <td class="auto-style10">Salary_Per_day</td>
                <td class="auto-style7">No_of_days</td>
                <td class="auto-style7">No_of_workers</td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" Height="20px" Width="100px" style="text-align:center"></asp:TextBox>
                </td>
                <td class="auto-style3" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Height="22px" Width="100px" style="text-align:center"></asp:TextBox>
                </td>
                <td class="auto-style11" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9" Height="22px" Width="100px" style="text-align:center"></asp:TextBox>
                </td>
                <td class="auto-style12" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style9" Height="21px" Width="100px" style="text-align:center"></asp:TextBox>
                </td>
                <td class="auto-style13" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style9" Height="21px" Width="100px" style="text-align:center"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="5" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <center>
                         <asp:Button ID="Button1" runat="server"  Height="33px" Text="Update Data" Width="136px" OnClick="Button1_Click"  class="btn btn-warning" />
                    </center>
                   
                </td>
            </tr>
            <tr>
                <td colspan="5" style="font-family: Arial; font-size: medium; background-color: #FFCCFF">
                    <center>
                         <asp:Button ID="Button3" runat="server"  Height="33px" Text="Remove" Width="136px" OnClick="Button3_Click"  class="btn btn-warning" />
                    </center>
                   
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
                                      <h4 style="font-family: Calibri; font-size: xx-large"><b>Update Estimated Labour Cost</b></h4>
                                      
                                        
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
                <asp:BoundField DataField="lrid" HeaderText="LRID">
                <ItemStyle HorizontalAlign="Center" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="labourrole" HeaderText="Labour_Role">
                <ItemStyle HorizontalAlign="Center" Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="salaryperday" HeaderText="Salary_Per_day">
                <ItemStyle HorizontalAlign="Center" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="noofdays" HeaderText="No_of_days">
                <ItemStyle HorizontalAlign="Center" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="noofworkers" HeaderText="No_of_workers">
                <ItemStyle HorizontalAlign="Center" Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="amount" HeaderText="Amount">
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
            <asp:Button ID="Button2" runat="server" BackColor="#FF5050" Height="55px" OnClick="Button2_Click" Text="Save Changes" Width="179px" class="btn btn-danger btn btn-lg"/>
        </p>
    </form><br> <br><br><br>
              <br>
                                
                              </div>


                          </div>


                      
                         

                        </div>
                  </div>

            </div>

           

    </div>



</asp:Content>
