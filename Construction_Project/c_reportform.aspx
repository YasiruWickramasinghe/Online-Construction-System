<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="c_reportform.aspx.cs" Inherits="Construction_Project.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid">

        <div class="row">


              </div>

          

              <br>

          <center>

              <div class="col-md-6">

                  <div class="card">
                      <div class="card-body">
                          <div class="row">
                              <div class="col">
                                  <center>
                                      <h4>Estimation Report</h4>
                                      
                                        
                                  </center>

                              </div>


                          </div>


                            <div class="row">
                              <div class="col">
                                  <center>
                                      <img width="100px" src="imgs/report.png" />
                                  </center>

                              </div>


                          </div>

                          <div class="row">
                              <div class="col">
                                  <hr>

                              </div>


                          </div>


                          <div class="row">
                              
                              <div class="col-md-6">  
                                   <label>Estimation ID</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Estimation ID"></asp:TextBox>
                                        

                                   </div>
                              </div>
                              <div class="col-md-6">  
                                  <label>Tender ID</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Tender ID"></asp:TextBox>
                                     
                                        
                                    </div> 
                                   </div>  
                              </div>

                          </div>


                           <div class="row">
                              
                              <div class="col-md-6">  
                                   <label>Customer Name</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Customer Name" ></asp:TextBox>
                                        

                                   </div>
                              </div>

                               <div class="col-md-6">  
                                   <label>Customer Email</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                        

                                   </div>
                              </div>
                             



                          </div>



                          <div class="row">
                              
                              <div class="col-md-6">  
                                   <label>Tender Accepted Date</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Tender Accepted Date" ReadOnly="False" TextMode="Date"></asp:TextBox>
                                        

                                   </div>
                              </div>

                               <div class="col-md-6">  
                                   <label>Estimation Given Date</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Estimation Given Date" ReadOnly="False" TextMode="Date"></asp:TextBox>
                                        

                                   </div>
                              </div>
                             



                          </div>



                          <div class="row">
                              <div class="col-6">
                                
                                  <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Generate Report" OnClick="Button2_Click" />
                                  
                                  

                              </div>

                             

                              <div class="col-6">
                                
                                  <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success" runat="server" Text="Email Report" />
                                  
                                  

                              </div>

                          </div>

                        </div>
                  </div>

                  <a href="permenentcontrctmanager.aspx"><< Back to Home</a><br><br>

                </div>
          </center>
              
          


        


    </div>

</asp:Content>
