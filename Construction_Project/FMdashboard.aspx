<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="FMdashboard.aspx.cs" Inherits="Construction_Project.FMdashboard" %>
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
        <img src="images/Sterling-Construct.jpg" width="1520" height="400" />
    </section>

   

    <section>

       <div class ="container">
               
            <div class ="row">
                  <div class ="col-12">
                      <center>
                           <br><br><br>
                          <h1> <b>Financial Accountant home</b></h1>                                          <%--  E1/ ADD YOUR HOME TITLE HERE :- xxx HOME --%>
                           <p><b>Internationl Construction Consortium</b></p> 
                       </center>
                  </div>
            </div>
           



            <div class="row">
            <div class="col-12">
               <center>
                   <br><br><br><br>
                  <h4> Daily Action Management</h4>                                                     <%--  E2/ ADD YOUR MOST IMPORTANT ACTIONS MENU NAME HERE :- xxx HOME --%>
                                 <%--  E3/ BRIRF ON MOS.IM.ACT. HERE HERE :- XXX,XXX,XXX --%>
                   <br><br><br>
               </center>
            </div>
         </div>



            <div class ="row">                                                                          <%--  THIS ROW IS FOR ADDING MAIN ACTIONS // ADD ANY NUMBER OF COLUMNS,ROWS AS YOU WANT --%>


                <div class="col-md-3">
                     <center>
                         <a href="UtilityForm.aspx">                                                   <%--  E15/ CALL YOUR 4th PAGE HERE :- XXX.aspx --%>
                         <img width="200px" src="images/Billinsert.jpg"/>                            <%--  E16/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                         </a>
                         <h4>Inser Tax or Utility Expense</h4>                                                         <%--  E17/ ADD PAGE TITLE HERE--%>
                         <p class="text-justify"> Insert all taxes and organizational Expense in day to life</p>                                 <%--  E18/ Brief on the title--%> 
                     </center>
                </div>


                  <div class ="col-md-3">
                      <center>
                          <a href="BillView.aspx">                                                 <%--  E4/ CALL YOUR 1ST PAGE HERE :- XXX.aspx --%>
                           <img width ="200px" src="images/billjpg.jpg" />                              <%--  E5/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>

                           <h4> View the Utility Bills</h4>                                                        <%--  E6/ ADD PAGE TITLE HERE--%>
                           <p class ="text-justify"> View the organization Expenditures and Taxes</p>     <%--  E6/ Brief on the title--%>   
                      </center>
                  </div>



                <div class ="col-md-3">
                      <center>
                          <a href="profitCalculation.aspx">                                                <%--  E7/ CALL YOUR 2nd PAGE HERE :- XXX.aspx --%>
                           <img width ="200px" src="images/ProfitCalc.jpg" />                            <%--  E8/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>
                           <h4> Calculate the monthly Profit/Loss</h4>                                              <%--  E9/ ADD PAGE TITLE HERE--%>
                           <p class ="text-justify"> Calculate each Department Expense or income for relavent month and Calculate Profit or Loss</p>             <%--  E10/ Brief on the title--%> 
                      </center>
                  </div>



                <div class="col-md-3">
                     <center>
                          <a href="ViewProfit.aspx">                                    <%--  E11/ CALL YOUR 3rd PAGE HERE :- XXX.aspx --%>
                          <img width="200px" src="images/profitTable.jpg"/>                                     <%--  E12/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>
                          <h4>Profit/Loss Hitory Table</h4>                                                   <%--  E13/ ADD PAGE TITLE HERE--%>
                          <p class="text-justify">See the past month profit/Loss,Net Expenditures and Net Incomes </p>    <%--  E14/ Brief on the title--%> 
                     </center>
                  </div>




    
           </div>


        </div>
    </section>
   

   

    <section>
        <br><br><br>
        <img src="images/top-con.jpg" width="1520" height="400" />
    </section>




    


</asp:Content>


<%--  Thank You !--%> 

