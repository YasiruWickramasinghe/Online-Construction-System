<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="P_EmployeeHomePage.aspx.cs" Inherits="Construction_Project.P_EmployeeHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/Sterling-Construct.jpg" width="1520" height="400" />
    </section>

    <section>

       <div class ="container">
               
            <div class ="row">
                  <div class ="col-12">
                      <center>
                           <br><br><br>
                          <h1> <b>WELCOME TO PERMANENT EMPLOYEE HOME</b></h1>                               
                           <h5><b>Internationl Construction Consortium</b></h5> 
                       </center>
                  </div>
            </div>

           <br />
           
            <div class="row">
            <div class="col-12">
               <center>
                   <br /><br />
                  <h4>Leave And Payroll Management</h4>                                       
                  <p><b> Relavent to the Leave Application Management </b></p>             
               </center>
            </div>
         </div>

         <div class ="row">                                                            

               <div class ="col-md-6">
                      <center>
                          <a href="EmployeeLeaveApplication.aspx">                                  
                              <img width ="238px" src="imgs/leave-application.jpg" />               
                          </a>

                          <br />

                           <h4> LEAVE APPLICATION </h4>                                         
                           <p class ="text-justify"> Manageing the employees leaves according to complete the project</p>       
                      </center>
                </div>

                 <div class="col-md-6">
                     <center>
                          <a href="#">                                    
                              <img width="200px" src="imgs/salary.jpg"/>                                     
                          </a>

                          <br />

                          <h4>PAYROLL MANAGEMENT</h4>                                                  
                          <p class="text-justify">Managing the payments by updating the databese by receiving and note down te amounts. And calculate net payments. </p>    <%--  E14/ Brief on the title--%> 
                     </center>
                 </div>
    
           </div>
        </div>
    </section>
   
    <section>
        <br><br><br>
        <img src="imgs/top-con.jpg" width="1520" height="400" />
    </section>

    <section>
        <br><br><br><br><br><br>
   </section>

</asp:Content>
