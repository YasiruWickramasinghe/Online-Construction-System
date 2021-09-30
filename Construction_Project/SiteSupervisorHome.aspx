<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SiteSupervisorHome.aspx.cs" Inherits="Construction_Project.SiteSupervisorHome" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>


 <%--     *****************************************************************        --%>

 <%--GROUP-06 ITP INITIAL CONFIGURATION SIMILATRITY MAKING PROCESS ONE             --%>
 <%--PLEASE EDIT YOUR RELAVENT HOME PAGE ACCORDING TO THE WAY I HAVE MENTIONED HERE--%>

 <%--     Download icons regarding pages ..                                        --%>
 <%--     Edit details according to the E fields                                   --%>
 <%--     add or remove new columns and rows and edit them as yoy want             --%>
 <%--     please add the  top-con.jpg and Sterling-Construct.jpg  to your imgs file  --%>
 <%--     sourse code and the above 2 jpgs are provided here                        --%>

 <%--     *****************************************************************        --%>







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
                          <h1> <b>SITE SUPERVISOR HOME</b></h1>                                          <%--  E1/ ADD YOUR HOME TITLE HERE :- xxx HOME --%>
                           <p><b>Internationl Construction Consortium</b></p> 
                       </center>
                  </div>
            </div>
           



            <div class="row">
            <div class="col-12">
               <center>
                   <br><br><br><br>
                  <h4> Daily Action Management</h4>                                                     <%--  E2/ ADD YOUR MOST IMPORTANT ACTIONS MENU NAME HERE :- xxx HOME --%>
                  <p><b> Relavent to the Duty and Payroll management </b></p>                           <%--  E3/ BRIRF ON MOS.IM.ACT. HERE HERE :- XXX,XXX,XXX --%>
                   <br><br><br>
               </center>
            </div>
         </div>



            <div class ="row">                                                                          <%--  THIS ROW IS FOR ADDING MAIN ACTIONS // ADD ANY NUMBER OF COLUMNS,ROWS AS YOU WANT --%>



                  <div class ="col-md-3">
                      <center>
                          <a href="ViewDutySheet.aspx">                                                 <%--  E4/ CALL YOUR 1ST PAGE HERE :- XXX.aspx --%>
                           <img width ="170px" src="imgs/DutySheet.jpg" />                              <%--  E5/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>

                           <h4> DUTY SHEETS</h4>                                                        <%--  E6/ ADD PAGE TITLE HERE--%>
                           <p class ="text-justify"> Manageing the employees according to planned oder according to complete the project</p>     <%--  E6/ Brief on the title--%>   
                      </center>
                  </div>


                <div class ="col-md-3">
                      <center>
                          <a href="MarkAttendance.aspx">                                                <%--  E7/ CALL YOUR 2nd PAGE HERE :- XXX.aspx --%>
                           <img width ="200px" src="imgs/attendance.jfif" />                            <%--  E8/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>
                           <h4> ATTENDANCE MANAGEMENT</h4>                                              <%--  E9/ ADD PAGE TITLE HERE--%>
                           <p class ="text-justify"> Managing the attendence here by marking and updating the registers</p>             <%--  E10/ Brief on the title--%> 
                      </center>
                  </div>



                <div class="col-md-3">
                     <center>
                          <a href="EmployPayments.aspx">                                    <%--  E11/ CALL YOUR 3rd PAGE HERE :- XXX.aspx --%>
                          <img width="200px" src="imgs/Bhand.jpg"/>                                     <%--  E12/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>
                          <h4>PAYMENT MANAGEMENT</h4>                                                   <%--  E13/ ADD PAGE TITLE HERE--%>
                          <p class="text-justify">Managing the payments by updating the databese by receiving and note down te amounts. And calculate net payments. </p>    <%--  E14/ Brief on the title--%> 
                     </center>
                  </div>



                <div class="col-md-3">
                     <center>
                         <a href="DutySheetOne.aspx">                                                   <%--  E15/ CALL YOUR 4th PAGE HERE :- XXX.aspx --%>
                         <img width="200px" src="imgs/Oldinformation.jfif"/>                            <%--  E16/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                         </a>
                         <h4>ASSIGN DUTIES</h4>                                                         <%--  E17/ ADD PAGE TITLE HERE--%>
                         <p class="text-justify"> Create duty sheets and update them before marking seccssion at the relavent times.</p>                                 <%--  E18/ Brief on the title--%> 
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

      <div class="container">

         <div class="row">
            <div class="col-12">
               <center>
                   <br><br><br>
                  <h4> Resourse Management</h4>                                                                                  <%--  E19/ ADD YOUR SECONDORY ACTIONS MENU NAME HERE :- xxx HOME --%>
                  <p><b> Relavent to Human and Inventory Management</b></p>                                                      <%--  E20/ BRIRF ON SEC.IM.ACT. HERE HERE :- XXX,XXX,XXX --%>
                    <br><br>
               </center>
            </div>
         </div>


         <div class="row">

            <div class="col-md-3">
               <center>
                  <a href="ToolManagement.aspx">                                                                                 <%--  E21/ CALL YOUR 5ST PAGE HERE :- XXX.aspx --%> 
                  <img width="200px" src="imgs/INV6.png" />                                                                      <%--  E22/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                  </a>
                  <h4>INVENTORY MANAGEMENT</h4>                                                                                  <%--  E17/ ADD PAGE TITLE HERE--%>   
                  <p class="text-justify"> Add all the supplied items to the inventory and remove them after the permissions.</p>       <%--  E18/ Brief on the title--%> 
               </center>
            </div>


            <div class="col-md-3">
               <center>
                  <a href="ManageNonPermanatEmployees.aspx">                                                                      <%--  E18/ CALL YOUR PAGE HERE :- XXX.aspx --%>
                  <img width="200px" src="imgs/fence-1.jpg"/>                                                                     <%--  E19/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                   </a>
                  <h4> EMPLOYEE MANAGEMENT</h4>                                                                                   <%--  E20/ ADD PAGE TITLE HERE--%>  
                  <p class="text-justify"> Add and remove non permanat employees to the project woith their relavent details and handel their details in here.</p>    <%--  E21/ Brief on the title--%> 
               </center>
            </div>




            <div class="col-md-3">
               <center>
                  <a href="ViewProjectInventory.aspx">                                                                           <%--  E22/ CALL YOUR PAGE HERE :- XXX.aspx --%>
                  <img width="200px" src="imgs/INV1.jpg"/>                                                                       <%--  E23/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                  </a>
                  <h4>VIEW INVENTORY</h4>                                                                                        <%--  E24/ ADD PAGE TITLE HERE--%>  
                  <p class="text-justify"> View all the project inventory from the tables in here. </p>                          <%--  E25/ Brief on the title--%> 
               </center>
            </div>


            <div class="col-md-3">
               <center>
                  <a href="viewemployee.aspx">                                                          <%--  E22/ CALL YOUR PAGE HERE :- XXX.aspx --%>
                  <img width="200px" src="imgs/profile.jpg"/>                                                                    <%--  E26/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                  </a>
                  <h4>VIEW EMPLOYEE</h4>                                                                                         <%--  E27/ ADD PAGE TITLE HERE--%>  
                  <p class="text-justify">  View all the non permanat employees from the project from the tables in here.</p>    <%--  E28/ Brief on the title--%> 
               </center>
            </div>



             <br><br><br>
         </div>
      </div>
        <br><br><br><br><br><br>
   </section>



</asp:Content>


<%--  Thank You !--%> 