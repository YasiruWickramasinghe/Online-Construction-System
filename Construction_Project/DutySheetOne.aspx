<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DutySheetOne.aspx.cs" Inherits="Construction_Project.DutySheetOne" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });

   </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
  <div class="container">
      <br><br><br>

        <div class="row">

            <div class="col-md-7">

 
                <div class="card">
                    <div class="card-body" style="background-color: #00FFCC; background-image: url('https://localhost:44302/imgs/t4.jpg'); border-style: dotted; border-width: inherit; line-height: normal; ">



                        <div class="row">
                            <div class="col">
                                    <center>
                                        <br><br>
                                        <h4>Create Duty Sheet</h4>
                                        <br>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                   <center>
                                        <img width="200px" src="imgs/DutySheet.jpg" />
                                   </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <br><br>
                                <hr>
                                <br>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col-md-4">
                                <label>Duty Sheet ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Duty-SheetID" ></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="GO" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
 
                            <div class="col-md-8">
                                <label>Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
 
                                </div>
                            </div>
                        </div>




                        
                     <div class="row">
                         <div class="col-12">
                                 <br>
                                    <center>
                                            <label> Brifly On Plane </label>
                                    </center>
                                 <br>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Panned Things" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                 </div>
                        </div>
                    </div>




                   <div class="row">
                        
                        <div class="col-md-6">
                            <label>Completed Task No :-</label>
                            <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Task Number" ></asp:TextBox>
                            </div>
                       </div>

                      <div class="col-md-6">
                             <label>Task :-</label>
                             <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Task"  ></asp:TextBox>
                             </div>
                     </div>
                
                  </div>





                <div class="row">
                        
                        <div class="col-md-6">
                            <label>Construction Place :-</label>
                            <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Place of the construction" ></asp:TextBox>
                            </div>
                       </div>

                      <div class="col-md-6">
                             <label>Work Duration :-</label>
                             <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Duration"  ></asp:TextBox>
                             </div>
                     </div>
                
                 </div>



                 <br><br>
                 <br><br> 
                        

                 <div class="row">
                            <div class="col">
                                    <hr style="border-style: double">
                                    <hr>
                            </div>
                 </div>


                 <div class="row">
                            <div class="col">
                                    <center>
                                        <h4>Add Employees To Duty Sheet</h4>
                                    </center>
                            </div>
                 </div>



                 <div class="row">
                    
                     <div class="col-md-3">
                        <label>Employee (Head):-</label>
                     </div>  

                     <div class="col-md-3">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="NPID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="JOB" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="1h Payment" ></asp:TextBox>
                        </div>
                     </div>

                  </div>




                  <div class="row">
                    
                     <div class="col-md-3">
                        <label>Employee Two:-</label>
                     </div>  

                     <div class="col-md-3">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="NPID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="JOB" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="1h Payment" ></asp:TextBox>
                        </div>
                     </div>

                  </div>  




                 <div class="row">
                    
                     <div class="col-md-3">
                        <label>Employee Three:-</label>
                     </div>  

                     <div class="col-md-3">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="NPID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="JOB" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox16" runat="server" placeholder="1h Payment"  ></asp:TextBox>
                        </div>
                     </div>

                  </div>   



                
                 <div class="row">
                    
                     <div class="col-md-3">
                        <label>Employee Four:-</label>
                     </div>  

                     <div class="col-md-3">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox17" runat="server" placeholder="NPID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox18" runat="server" placeholder="JOB" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox19" runat="server" placeholder="1h Payment"  ></asp:TextBox>
                        </div>
                     </div>

                  </div>  



                
                 <div class="row">
                    
                     <div class="col-md-3">
                        <label>Employee Five:-</label>
                     </div>  

                     <div class="col-md-3">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox20" runat="server" placeholder="NPID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox21" runat="server" placeholder="JOB" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox22" runat="server" placeholder="1h Payment" ></asp:TextBox>
                        </div>
                     </div>

                </div>  



                
                 <div class="row">
                    
                     <div class="col-md-3">
                        <label>Employee Six:-</label>
                     </div>  

                     <div class="col-md-3">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox23" runat="server" placeholder="NPID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox24" runat="server" placeholder="JOB" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox25" runat="server" placeholder="1h Payment" ></asp:TextBox>
                        </div>
                     </div>

                </div>  


 

                
               <div class="row">
                    
                     <div class="col-md-3">
                        <label>Employee Seven:-</label>
                     </div>  

                     <div class="col-md-3">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox26" runat="server" placeholder="NPID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox27" runat="server" placeholder="JOB" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox28" runat="server" placeholder="1h Payment" ></asp:TextBox>
                        </div>
                     </div>

                </div>  



                
                <div class="row">
                    
                     <div class="col-md-3">
                        <label>Employee Eight:-</label>
                     </div>  

                     <div class="col-md-3">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox29" runat="server" placeholder="NPID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox30" runat="server" placeholder="JOB" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox31" runat="server" placeholder="1h Payment" ></asp:TextBox>
                        </div>
                     </div>

                  </div>  


                
                 <div class="row">
                    
                     <div class="col-md-3">
                        <label>Employee Nine:-</label>
                     </div>  

                     <div class="col-md-3">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox32" runat="server" placeholder="NPID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox33" runat="server" placeholder="JOB" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox34" runat="server" placeholder="1h Payment" ></asp:TextBox>
                        </div>
                     </div>

                  </div>  


                  
                 <div class="row">
                    
                     <div class="col-md-3">
                        <label>Employee Ten:-</label>
                     </div>  

                     <div class="col-md-3">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox35" runat="server" placeholder="NPID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox36" runat="server" placeholder="JOB" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox37" runat="server" placeholder="1h Payment" ></asp:TextBox>
                        </div>
                     </div>

                </div>  

                         <div class="row">
                            <div class="col-12">
                                <br>
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Clear Form" OnClick="Button3_Click" />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12">
                                <br><br>
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Create The Duty Sheet" OnClick="Button2_Click"  />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12">
                                <br>
                                <asp:Button ID="Button6" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update Changes to the Duty Sheet" OnClick="Button6_Click"  />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <br>
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete Selected Duty Sheet" OnClick="Button4_Click"  />
                            </div>
                        </div>



                 <br> <br> <br>
                    </div>                      <%--card Body Over--%>
                </div>                          <%--card Over--%>
 
                <br><br>
                         <a href="SiteSupervisorHome.aspx"> << Back to My Site Supervisor Home </a><br>
                <br><br><br>

            </div>                              <%--Column Over--%>
 



















            <div class="col-md-5">

          
                
            <div class="row">

            <div class="col-md-12">
 
                <br><br>

                    <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT [NPEID], [Emp_Name], [Profession] FROM [Non_Permant_Employee_tbl]"></asp:SqlDataSource>


                     <div class="col">
                        <center>
                           <h4>Non-Permanat Employees Engaged In The Project</h4>
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
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="NPEID" DataSourceID="SqlDataSource2" BackColor="#FFCCFF" BorderColor="#CC00CC" BorderStyle="Dashed" FooterStyle-BorderStyle="Solid" FooterStyle-BackColor="#FFFF66" FooterStyle-BorderColor="Blue" FooterStyle-ForeColor="#FF6600" ForeColor="Black" ViewStateMode="Disabled" ValidateRequestMode="Disabled" UseAccessibleHeader="False"  >
                            <Columns>
                                <asp:BoundField DataField="NPEID" HeaderText="NPEID" SortExpression="NPEID" ReadOnly="True" />
                                <asp:BoundField DataField="Emp_Name" HeaderText="Employ Name" SortExpression="Emp_Name" />
                                <asp:BoundField DataField="Profession" HeaderText="Profession" SortExpression="Profession" />
                            </Columns>

                            <FooterStyle BackColor="#FFFF66" BorderColor="Blue" BorderStyle="Solid" ForeColor="#FF6600"></FooterStyle>
                         </asp:GridView>
                     </div>
                  </div>


               </div>
            </div>  

                 <br><br>
                         <a href="ViewDutySheet.aspx"> View All Created Duty Sheets >></a><br>
                 <br>
                         <a href="SiteSupervisorHome.aspx"> << Back to My Site Supervisor Home </a><br>
                <br><br><br><br><br><br>

            </div> 

        </div>  <%--column sub Row Over--%>







               

















           </div>                                 <%--column Over--%>
 


        </div>                                    <%--Main Row Over--%>
    </div>                                        <%--Whole Container Over--%>



</asp:Content>                                    <%--Second Main Asp Content Over--%>

