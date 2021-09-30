<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="c_email.aspx.cs" Inherits="Construction_Project.WebForm10" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid">

        <div class="row">


              </div>

          

              <br>

          <center>
              <div class="col-md-6">

    <form id="form1" style="background-color: #FFFFCC">
        
        <div>
            <center>
                <div class="row">
                    <div class="col">
                        <center>
            <h2>Email</h2>
                            </center>
                        </div>
                              </div>
                 <div class="row">
                              <div class="col">
                                  <center>
                                      <img width="100px" src="imgs/mail.png" />
                                  </center>
                                  </div>
                              </div>
            <table id="table1">
                
                <tr>
                <td style ="width:100px">
                    To:
                </td>
                <td>
                    <asp:TextBox ID ="txtTo" runat="server" Width="256px" TextMode="Email"></asp:TextBox>
                </td>
                </tr>

                 <tr>
                <td style ="width:100px">
                    Subject:
                </td>
                <td>
                    <asp:TextBox ID ="txtSub" runat="server" Width="256px"></asp:TextBox>
                </td>
                </tr>
                    
                    <tr>
                        <td>
                           Upload File:
                        </td>
                        
                        <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                    </tr>





                 <tr>
                <td style ="width:100px">
                    Body:
                </td>
                <td>
                    <asp:TextBox ID ="txtbdy" runat="server" TextMode="MultiLine" Columns="30" Rows="10"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td>
                </td>
                 <td>

                    <asp:Button ID ="Sendbtn" runat="server" Text="Send" Height="50px" Width="160px" OnClick="Sendbtn_Click" class="btn btn-primary"/>
                     </td>
                    </tr>
            </table>
                <br/>
                  
            </center>
            
        </div>
    </form>
     <a href="permenentcontrctmanager.aspx"><< Back to Home</a><br><br>
                    </div>

              </center>
              
          


        


    </div>

</asp:Content>
