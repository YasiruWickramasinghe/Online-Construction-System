<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="HRHomePage.aspx.cs" Inherits="Construction_Project.HRHomePage" %>
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
                          <h1> <b>WElCOME TO HUMAN RESOURCE MANAGER HOME</b></h1>                               
                           <h5><b>Internationl Construction Consortium</b></h5> 
                       </center>
                  </div>
            </div>

           <br />
           

            <div class="row">
            <div class="col-12">
               <center>
                   <br /><br /><br />
                  <h4>Employee Management</h4>                                       
                  <p><b> Relavent to the Permanent Employee Management </b></p>             
               </center>
            </div>
         </div>

        <br />

         <div class ="row">   
             
                <div class="col-md-4">
                     <center>
                          <a href="RegistrationPage.aspx">                                    
                          <img width="150px" src="imgs/reg.jpg"/>                                     
                          </a>
                          <h4>EMPLOYEE REGISTRATION MANAGEMENT</h4>                                                  
                          <p class="text-justify">Managing the employee registering by given the relavent details about the employee.</p>     
                     </center>
                 </div>

                 <div class ="col-md-4">
                      <center>
                          <a href="HR_EmployeeManagement.aspx">                                 
                             <img width ="257px" src="imgs/employee.jpg" />            
                          </a>
                           <h4> EMPLOYEE MANAGEMENT</h4>                               
                           <p class ="text-justify"> Managing the employee details and delete the employee if needed</p>             
                      </center>
                 </div>

                 <div class ="col-md-4">
                      <center>
                          <a href="HR_LeaveAcceptance.aspx">                                  
                              <img width ="170px" src="imgs/leave-application.jpg" />               
                          </a>

                           <h4> LEAVE REQUEST MANAGEMENT</h4>                                         
                           <p class ="text-justify"> Manageing the employees leaves according to complete the project</p>       
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
