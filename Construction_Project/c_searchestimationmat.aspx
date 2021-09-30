<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="c_searchestimationmat.aspx.cs" Inherits="Construction_Project.WebForm4" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
    <div class="container-fluid">

        <div class="row">



            <div class="col-md-12">

                  <div class="card">
                      <div class="card-body" style="background:url(imgs/cv2.jpg)">
                          <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Search Material Estimations</b></h4>
                                      
                                        
                                  </center>

                              </div>


                          </div>


                            <div class="row">
                              <div class="col">
                                  <center>
                                      <img width="100px" src="imgs/house.png" />
                                  </center>

                              </div>


                          </div>

                          <div class="row">
                              <div class="col">
                                  <hr>

                              </div>


                          </div>


                         


                           <div class="row">
                              
                              <div class="col-md-12">  
                                  <center>
                                 <form id ="form1">


                                     <div>    
   <table>  
    <tr>  
    <td style="font-size: x-large">   
       Enter Estimation ID 
        </td>  
        <td>  
        <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox>  
        </td>  
        <td>   
        <asp:Button ID="Button1" runat="server" Text="Go" onclick="Button1_Click"  class="btn btn-success" />  
        </td>  
        </tr>  
</table>  
<table><tr><td><p><asp:Label ID="Label2" runat="server" Text="label"></asp:Label>  </p></td></tr></table>  
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="8px" Width="6px" Font-Size="Large" >
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>   
    </div>  





                           <br><br><br><br>      </form><br>
                                      <asp:Label ID="Label4" runat="server" Text="Total Estimated Raw Material Cost RS:" BackColor="#FF6666" Font-Size="Large"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="label" BackColor="#FF6666" Font-Size="Large"></asp:Label><br>
                                      </center>
                              </div>





                           </div>









                      </div>
                  </div>

                <br>
                <center>
                  <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Width="137px" class="btn btn-warning" />
                  <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" Width="165px" class="btn btn-danger" />
                     </center>
                <br>

                <a href="permenentcontrctmanager.aspx"><< Back to Home</a><br>
            </div>



        </div>
</asp:Content>
