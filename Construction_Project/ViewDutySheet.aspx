<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewDutySheet.aspx.cs" Inherits="Construction_Project.ViewDutySheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   <script type="text/javascript">

      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });

   </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">

            <div class="col-md-12">
 
                <br><br>
             <div class="card">
                    <div class="card-body">
 
      
 
                        <div class="row">
                            <div class="col">
                                    <center>
                                        <h4>Created Duty Sheets List</h4>
                                    </center>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Construction_CompanyConnectionString %>" SelectCommand="SELECT [Date], [Duty_Sheet_No], [Task_No], [Discription], [Task], [Place], [Duration] FROM [Duty_Sheet_tbl]"></asp:SqlDataSource>


                            <div class="col">

                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Duty_Sheet_No" DataSourceID="SqlDataSource1" BackColor="#FFCCFF" BorderColor="#CC00CC" BorderStyle="Dashed" FooterStyle-BorderStyle="Solid" FooterStyle-BackColor="#FFFF66" FooterStyle-BorderColor="Blue" FooterStyle-ForeColor="#FF6600" ForeColor="Black">
                                 
                                    <Columns >
                                        <asp:BoundField DataField="Duty_Sheet_No" HeaderText="Duty Sheet Number" SortExpression="Duty_Sheet_No" ReadOnly="True" />
                                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                        <asp:BoundField DataField="Task_No" HeaderText="Task Number" SortExpression="Task_No" />
                                        <asp:BoundField DataField="Task" HeaderText="Task" SortExpression="Task" />
                                        <asp:BoundField DataField="Place" HeaderText="Construction Site" SortExpression="Place" />
                                        <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                                        <asp:BoundField DataField="Discription" HeaderText="Discription " SortExpression="Discription" />
                                    </Columns>

                                    <FooterStyle BackColor="#FFFF66" BorderColor="Blue" BorderStyle="Solid" ForeColor="#FF6600"></FooterStyle>

                                </asp:GridView>
                            </div>
                        </div>
 


                    </div>                        <%--card Body Over--%>
                </div>                            <%--card Over--%>

                <br>
                         <a href="DutySheetOne.aspx"> >> Add New Duty Sheets >> </a><br>
                <br><br>

           </div>                                 <%--column Over--%>
 





    <div class="col-md-12">
     <div class="card">
                    <div class="card-body" style="background-color: #00FFCC; background-image: url('https://localhost:44302/imgs/oNHaish.jpg'); border-style: dotted; border-width: inherit; line-height: normal; ">



                        <div class="row">
                            <div class="col">
                                    <center>
                                        <br><br>
                                        <h4>View Member Status</h4>
                                        <br>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                   <center>
                                        <img width="500px" src="imgs/Sterling-Construct.jpg" />
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
                            <div class="col">
                                <center>
                                    
                                      <div class="form-group">
                                          <div class="input-group">
                                                <asp:TextBox CssClass="form-control" ID="TextBox38" runat="server" placeholder="Duty-SheetID" ></asp:TextBox>
                                                <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="SERCH" OnClick="Button2_Click"  />
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
                            
 
                            <div class="col-md-8">
                                <label>Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date" ></asp:TextBox>
 
                                </div>
                            </div>
                        </div>




                        
                     <div class="row">
                         <div class="col-12">
                                 <br>
                                    <center>
                                            <label> Brifly On Plane </label>
                                    </center>
                                
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Panned Things" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                 </div>
                        </div>
                    </div>




                






              
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
                                        <h5> Employees And Their Status</h5>
                                    </center>
                            </div>
                 </div>



                 <div class="row">     <%--The Employee details Beginning--%>
                    
                     <div class="col-md-2">
                        <label>Employee (Head):-</label>
                     </div>  

                     <div class="col-md-2">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="NPID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="JOB" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="1h Payment" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Attendence Ststus:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Not PD yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                  </div>     <%--The Employee details End--%>






                        <div class="row">     <%--The Employee details Beginning--%>
                    
                     <div class="col-md-2">
                        <label>Second Employee:-</label>
                     </div>  

                     <div class="col-md-2">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="JOB" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="1h Payment" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Attendence Ststus:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Not PD yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                  </div>     <%--The Employee details End--%>





                        <div class="row">     <%--The Employee details Beginning--%>
                    
                     <div class="col-md-2">
                        <label>Third Employee:-</label>
                     </div>  

                     <div class="col-md-2">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="NPID" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="JOB" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="1h Payment" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Attendence Ststus:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox16" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox17" runat="server" placeholder="Not PD yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                  </div>     <%--The Employee details End--%>




              <div class="row">     <%--The Employee details Beginning--%>
                    
                     <div class="col-md-2">
                        <label>Fourth Employee:-</label>
                     </div>  

                     <div class="col-md-2">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox18" runat="server" placeholder="NPID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox19" runat="server" placeholder="JOB" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox20" runat="server" placeholder="1h Payment" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Attendence Ststus:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox21" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox22" runat="server" placeholder="Not PD yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                  </div>     <%--The Employee details End--%>




                       
                        
         <div class="row">     <%--The Employee details Beginning--%>
                    
                     <div class="col-md-2">
                        <label>Fifth Employee:-</label>
                     </div>  

                     <div class="col-md-2">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox23" runat="server" placeholder="NPID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox24" runat="server" placeholder="JOB" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox25" runat="server" placeholder="1h Payment" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Attendence Ststus:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox26" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox27" runat="server" placeholder="Not PD yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

            </div>     <%--The Employee details End--%>







         <div class="row">     <%--The Employee details Beginning--%>
                    
                     <div class="col-md-2">
                        <label>Sixth Employee:-</label>
                     </div>  

                     <div class="col-md-2">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox28" runat="server" placeholder="NPID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox29" runat="server" placeholder="JOB" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox30" runat="server" placeholder="1h Payment" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Attendence Ststus:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox31" runat="server" placeholder="Not Marked Yet" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox32" runat="server" placeholder="Not PD yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                  </div>     <%--The Employee details End--%>






       <div class="row">     <%--The Employee details Beginning--%>
                    
                     <div class="col-md-2">
                        <label>Seventh Employee:-</label>
                     </div>  

                     <div class="col-md-2">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox33" runat="server" placeholder="NPID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox34" runat="server" placeholder="JOB" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox35" runat="server" placeholder="1h Payment" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Attendence Ststus:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox36" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox37" runat="server" placeholder="Not PD yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                  </div>     <%--The Employee details End--%>






      <div class="row">     <%--The Employee details Beginning--%>
                    
                     <div class="col-md-2">
                        <label>Eighth Employee:-</label>
                     </div>  

                     <div class="col-md-2">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox39" runat="server" placeholder="NPID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox40" runat="server" placeholder="JOB" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox41" runat="server" placeholder="1h Payment" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Attendence Ststus:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox42" runat="server" placeholder="Not Marked Yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox43" runat="server" placeholder="Not PD yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                  </div>     <%--The Employee details End--%>








        <div class="row">     <%--The Employee details Beginning--%>
                    
                     <div class="col-md-2">
                        <label>Ninth Employee:-</label>
                     </div>  

                     <div class="col-md-2">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox44" runat="server" placeholder="NPID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox45" runat="server" placeholder="JOB" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox46" runat="server" placeholder="1h Payment" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Attendence Ststus:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox47" runat="server" placeholder="Not Marked Yet" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox48" runat="server" placeholder="Not PD yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

         </div>     <%--The Employee details End--%>








     <div class="row">     <%--The Employee details Beginning--%>
                    
                     <div class="col-md-2">
                        <label>Tenth Employee:-</label>
                     </div>  

                     <div class="col-md-2">
                        <label>NPID:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox49" runat="server" placeholder="NPID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Job:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox50" runat="server" placeholder="JOB" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment for 1h:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox51" runat="server" placeholder="1h Payment" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Attendence Ststus:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox52" runat="server" placeholder="Not Marked Yet" ReadOnly="True" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Payment Status:</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox53" runat="server" placeholder="Not PD yet" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                  </div>     <%--The Employee details End--%>







                         <div class="row">
                            <div class="col-12">
                                <br>
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Clear Form" OnClick="Button3_Click"  />
                            </div>
                        </div>
                        <br><br>

     



 
                    </div>                      <%--card Body Over--%>
                </div>                          <%--card Over--%>
        <br>
         </div>                                 <%--Column Over--%>

                <br><br><br><br>
                         <a href="SiteSupervisorHome.aspx"> << Back to My Site Supervisor Home </a><br>
                <br><br><br>



      </div>                                    <%--Main Row Over--%>
    </div>                                        <%--Whole Container Over--%>


</asp:Content>                                    <%--Second Main Asp Content Over--%>
