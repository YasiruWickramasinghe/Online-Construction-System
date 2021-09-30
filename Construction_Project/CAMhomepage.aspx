<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CAMhomepage.aspx.cs" Inherits="Construction_Project.CAMhomepage" %>
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
                          <h1> <b>CUSTOMER AFFAIRS MANAGER HOME</b></h1>                                          <%--  E1/ ADD YOUR HOME TITLE HERE :- xxx HOME --%>
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
               


                  <div class ="col-md-4">
                      <center>
                          <a href="CAM.aspx">                                                 <%--  E4/ CALL YOUR 1ST PAGE HERE :- XXX.aspx --%>
                           <img width ="250px" src="imgs/n.jpg"" />                              <%--  E5/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>

                           <h4>Customer Details Manage</h4>                                                        <%--  E6/ ADD PAGE TITLE HERE--%>
                           <p class ="text-justify"> Manageing the employees according to planned oder according to complete the project</p>     <%--  E6/ Brief on the title--%>   
                      </center>
                  </div>



                <div class ="col-md-4">
                      <center>
                          <a href="Cus_ContractManage.aspx">                                                <%--  E7/ CALL YOUR 2nd PAGE HERE :- XXX.aspx --%>
                           <img width ="250px" src="imgs/k.jpg" />                            <%--  E8/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>
                           <h4> CUSTOMER CONTRACT MANAGEMENT</h4>                                              <%--  E9/ ADD PAGE TITLE HERE--%>
                           <p class ="text-justify"> Managing the attendence here by marking and updating the registers</p>             <%--  E10/ Brief on the title--%> 
                      </center>
                  </div>



                <div class="col-md-4">
                     <center>
                          <a href="Cus_pay.aspx">                                    <%--  E11/ CALL YOUR 3rd PAGE HERE :- XXX.aspx --%>
                          <img width="200px" src="imgs/pay.png"/>                                     <%--  E12/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>
                          <h4>PAYMENT MANAGEMENT</h4>                                                   <%--  E13/ ADD PAGE TITLE HERE--%>
                          <p class="text-justify">Managing the payments by updating the databese by receiving and note down te amounts. And calculate net payments. </p>    <%--  E14/ Brief on the title--%> 
                     </center>
                  </div>



                
    
           </div>


        </div>
    </section>
   

   

    <section>
        <br><br><br>
        <img src="imgs/b.jpg" width="1520" height="400" />
    </section>


</asp:Content>
