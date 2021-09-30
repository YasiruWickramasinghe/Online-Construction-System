<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EmployPayments.aspx.cs" Inherits="Construction_Project.EmployPayments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    
  <div class="container">
        <div class="row">

            <div class="col-md-12">

             
 
                <div class="card">
                    <div class="card-body" style="background-color: #00FFCC; background-image: url('https://localhost:44302/imgs/u9Gk6Yq.jpg'); border-style: dotted; border-width: inherit; line-height: normal; ">

                        <div class="row">
                            <div class="col">
                                    <center>
                                        <br><br>
                                        <h3>Payment Potral</h3>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                        <img width="500px" src="imgs/payrollnice.png" />
                                   </center>
                            </div>
                        </div>



                         <div class="row">
                            <div class="col">
                                <center>
                                    <br><br>
                                      <div class="form-group">
                                          <div class="input-group">
                                                <asp:TextBox CssClass="form-control" ID="TextBox38" runat="server" placeholder="Duty-SheetID" ></asp:TextBox>
                                                <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="SELECT" OnClick="Button2_Click" />
                                          </div>
                                       </div>
                                 
                                </center>
                            </div>
                        </div>


 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
               

                    
                   <div class="row">
                       
                        <div class="col-md-2">

                            <label>Date :-</label>
                       </div>

                      <div class="col-md-10">      
                                     <asp:TextBox CssClass="form-control" ID="TextBox39" runat="server" placeholder="Duty Sheet Sheduled Date" ReadOnly="True" ></asp:TextBox>                       
                      </div>
                
                  </div>




                        

                 <div class="row">
                            <div class="col">
                                    <hr style="border-style: double">
                                    <hr>
                            </div>
                 </div>


                 <div class="row">
                            <div class="col">
                                    <center>
                                        <br>
                                        <h5>Payments in Order</h5>
                                       
                                    </center>
                            </div>
                 </div>






       
<%--Start Employ Attendance Marking --%>

                 <div class="row">
                          <div class="col">
                                   <hr style="border-style: double">
                                   <hr>
                           </div>
                 </div>


                 <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>

                 <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                         <center><label>Employee (Head)</label></center>
                                   </center>
                            </div>
                  </div>

              

                <div class="row">      

                     <div class="col-md-4">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Emp Name" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Attendance:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox40" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div>       
                    
                 <div class="row">      

                     <div class="col-md-4">
                        <label> Workd Number of Hours:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Worked Hrs" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Hourly Payment:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Hourly Payment" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Total Payment:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox4" runat="server" placeholder="Total Payment" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div> 
                        
                <div class="row">    

                     <div class="col-md-3">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox5" runat="server" placeholder="Not Payed Yet" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                </div>        
                        
                        
          <%--Close Employ Attendance Marking --%>









<%--Start Employ Attendance Marking --%>

                 <div class="row">
                          <div class="col">
                                   <hr style="border-style: double">
                                   <hr>
                           </div>
                 </div>

                   <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>

                 <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                         <center><label>Second Employee</label></center>
                                   </center>
                            </div>
                  </div>


                <div class="row">      

                     <div class="col-md-4">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Emp Name" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Attendance:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div>       
                    
                 <div class="row">      

                     <div class="col-md-4">
                        <label> Workd Number of Hours:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Worked Hrs" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Hourly Payment:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Hourly Payment" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Total Payment:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox12" runat="server" placeholder="Total Payment" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div> 
                        
                <div class="row">    

                     <div class="col-md-3">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox13" runat="server" placeholder="Not Payed Yet" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                </div>        
                        
                        
          <%--Close Employ Attendance Marking --%>







<%--Start Employ Attendance Marking --%>

                 <div class="row">
                          <div class="col">
                                   <hr style="border-style: double">
                                   <hr>
                           </div>
                 </div>

                    <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>

                 <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                         <center><label>Third Employee</label></center>
                                   </center>
                            </div>
                  </div>


                <div class="row">      

                     <div class="col-md-4">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="Emp Name" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Attendance:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox16" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div>       
                    
                 <div class="row">      

                     <div class="col-md-4">
                        <label> Workd Number of Hours:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox17" runat="server" placeholder="Worked Hrs" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Hourly Payment:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox18" runat="server" placeholder="Hourly Payment" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Total Payment:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox19" runat="server" placeholder="Total Payment" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div> 
                        
                <div class="row">    

                     <div class="col-md-3">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox20" runat="server" placeholder="Not Payed Yet" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                </div>        
                        
                        
          <%--Close Employ Attendance Marking --%>



<%--Start Employ Attendance Marking --%>

                 <div class="row">
                          <div class="col">
                                   <hr style="border-style: double">
                                   <hr>
                           </div>
                 </div>

                    <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>

                 <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                         <center><label>Fourth Employee</label></center>
                                   </center>
                            </div>
                  </div>


                <div class="row">      

                     <div class="col-md-4">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox21" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox22" runat="server" placeholder="Emp Name" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Attendance:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox23" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div>       
                    
                 <div class="row">      

                     <div class="col-md-4">
                        <label> Workd Number of Hours:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox24" runat="server" placeholder="Worked Hrs" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Hourly Payment:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox25" runat="server" placeholder="Hourly Payment" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Total Payment:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox26" runat="server" placeholder="Total Payment" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div> 
                        
                <div class="row">    

                     <div class="col-md-3">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox27" runat="server" placeholder="Not Payed Yet" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton8" runat="server" OnClick="LinkButton8_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                </div>        
                        
                        
          <%--Close Employ Attendance Marking --%>






            <%--Start Employ Attendance Marking --%>

                 <div class="row">
                          <div class="col">
                                   <hr style="border-style: double">
                                   <hr>
                           </div>
                 </div>

                 <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>

                 <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                         <center><label>Fifth Employee</label></center>
                                   </center>
                            </div>
                  </div>


                <div class="row">      

                     <div class="col-md-4">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox28" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox29" runat="server" placeholder="Emp Name" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Attendance:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox30" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div>       
                    
                 <div class="row">      

                     <div class="col-md-4">
                        <label> Workd Number of Hours:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox31" runat="server" placeholder="Worked Hrs" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Hourly Payment:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox32" runat="server" placeholder="Hourly Payment" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Total Payment:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox33" runat="server" placeholder="Total Payment" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div> 
                        
                <div class="row">    

                     <div class="col-md-3">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox34" runat="server" placeholder="Not Payed Yet" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton9" runat="server" OnClick="LinkButton9_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton10" runat="server" OnClick="LinkButton10_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                </div>        
                        
                        
          <%--Close Employ Attendance Marking --%>






                        <%--Start Employ Attendance Marking --%>

                 <div class="row">
                          <div class="col">
                                   <hr style="border-style: double">
                                   <hr>
                           </div>
                 </div>

                    <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>

                 <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                         <center><label>Sixth Employee</label></center>
                                   </center>
                            </div>
                  </div>


                <div class="row">      

                     <div class="col-md-4">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox35" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox36" runat="server" placeholder="Emp Name" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Attendance:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox37" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div>       
                    
                 <div class="row">      

                     <div class="col-md-4">
                        <label> Workd Number of Hours:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox41" runat="server" placeholder="Worked Hrs" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Hourly Payment:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox42" runat="server" placeholder="Hourly Payment" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Total Payment:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox43" runat="server" placeholder="Total Payment" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div> 
                        
                <div class="row">    

                     <div class="col-md-3">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox44" runat="server" placeholder="Not Payed Yet" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton11" runat="server" OnClick="LinkButton11_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton12" runat="server" OnClick="LinkButton12_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                </div>        
                        
                        
          <%--Close Employ Attendance Marking --%>






                        <%--Start Employ Attendance Marking --%>

                 <div class="row">
                          <div class="col">
                                   <hr style="border-style: double">
                                   <hr>
                           </div>
                 </div>

                    <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>

                 <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                         <center><label>Seventh Employee</label></center>
                                   </center>
                            </div>
                  </div>


                <div class="row">      

                     <div class="col-md-4">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox45" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox46" runat="server" placeholder="Emp Name" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Attendance:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox47" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div>       
                    
                 <div class="row">      

                     <div class="col-md-4">
                        <label> Workd Number of Hours:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox48" runat="server" placeholder="Worked Hrs" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Hourly Payment:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox49" runat="server" placeholder="Hourly Payment" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Total Payment:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox50" runat="server" placeholder="Total Payment" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div> 
                        
                <div class="row">    

                     <div class="col-md-3">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox51" runat="server" placeholder="Not Payed Yet" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton13" runat="server" OnClick="LinkButton13_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton14" runat="server" OnClick="LinkButton14_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                </div>        
                        
                        
          <%--Close Employ Attendance Marking --%>





                        <%--Start Employ Attendance Marking --%>

                 <div class="row">
                          <div class="col">
                                   <hr style="border-style: double">
                                   <hr>
                           </div>
                 </div>

                   <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>

                 <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                         <center><label>Eighth Employee</label></center>
                                   </center>
                            </div>
                  </div>


                <div class="row">      

                     <div class="col-md-4">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox52" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox53" runat="server" placeholder="Emp Name" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Attendance:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox54" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div>       
                    
                 <div class="row">      

                     <div class="col-md-4">
                        <label> Workd Number of Hours:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox55" runat="server" placeholder="Worked Hrs" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Hourly Payment:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox56" runat="server" placeholder="Hourly Payment" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Total Payment:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox57" runat="server" placeholder="Total Payment" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div> 
                        
                <div class="row">    

                     <div class="col-md-3">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox58" runat="server" placeholder="Not Payed Yet" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton15" runat="server" OnClick="LinkButton15_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton16" runat="server" OnClick="LinkButton16_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                </div>        
                        
                        
          <%--Close Employ Attendance Marking --%>





                        <%--Start Employ Attendance Marking --%>

                 <div class="row">
                          <div class="col">
                                   <hr style="border-style: double">
                                   <hr>
                           </div>
                 </div>

                   <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>

                 <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                         <center><label>Ninth Employee</label></center>
                                   </center>
                            </div>
                  </div>


                <div class="row">      

                     <div class="col-md-4">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox59" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox60" runat="server" placeholder="Emp Name" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Attendance:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox61" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div>       
                    
                 <div class="row">      

                     <div class="col-md-4">
                        <label> Workd Number of Hours:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox62" runat="server" placeholder="Worked Hrs" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Hourly Payment:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox63" runat="server" placeholder="Hourly Payment" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Total Payment:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox64" runat="server" placeholder="Total Payment" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div> 
                        
                <div class="row">    

                     <div class="col-md-3">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox65" runat="server" placeholder="Not Payed Yet" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton17" runat="server" OnClick="LinkButton17_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton18" runat="server" OnClick="LinkButton18_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                </div>        
                        
                        
          <%--Close Employ Attendance Marking --%>





                        <%--Start Employ Attendance Marking --%>

                 <div class="row">
                          <div class="col">
                                   <hr style="border-style: double">
                                   <hr>
                           </div>
                 </div>

                   <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>

                 <div class="row">
                            <div class="col">
                                   <center>
                                       <br>
                                         <center><label>Tenth Employee</label></center>
                                   </center>
                            </div>
                  </div>


                <div class="row">      

                     <div class="col-md-4">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox66" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Name:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox67" runat="server" placeholder="Emp Name" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Attendance:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox68" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div>       
                    
                 <div class="row">      

                     <div class="col-md-4">
                        <label> Workd Number of Hours:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox69" runat="server" placeholder="Worked Hrs" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Hourly Payment:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox70" runat="server" placeholder="Hourly Payment" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>


                     <div class="col-md-4">
                        <label>Total Payment:</label>
                        <div class="form-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox71" runat="server" placeholder="Total Payment" ReadOnly="True"></asp:TextBox>                        
                        </div>
                     </div>

                </div> 
                        
                <div class="row">    

                     <div class="col-md-3">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox72" runat="server" placeholder="Not Payed Yet" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton19" runat="server" OnClick="LinkButton19_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton20" runat="server" OnClick="LinkButton20_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                </div>        
                        
                        
          <%--Close Employ Attendance Marking --%>


            

                        <div class="row">
                            <div class="col-12">
                                <br>
                                <asp:Button ID="Button6" class="btn btn-lg btn-block btn-warning" runat="server" Text="Clear Sheet" OnClick="Button6_Click" />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-12">
                                <br>
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-warning" runat="server" Text="Reset Payment Marking" OnClick="Button1_Click" />
                            </div>
                        </div>

                        <div class="row">
                            <br><br>
                            <div class="col-12">
                                <br>
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Submit Paymet Details" OnClick="Button4_Click" />
                            </div>
                        </div>

                        <br><br>
                        <br><br>
                        <br><br>
 
                    </div>                      <%--card Body Over--%>
                </div>                          <%--card Over--%>
 
                <br><br>
                         <a href="SiteSupervisorHome.aspx"> << Back to My Site Supervisor Home </a><br>
                <br>

            </div>                              <%--Column Over--%>




 
        </div>                                    <%--Main Row Over--%>
    </div>                                        <%--Whole Container Over--%>



</asp:Content>                                    <%--Second Main Asp Content Over--%>

