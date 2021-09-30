<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="permenentcontrctmanager.aspx.cs" Inherits="Construction_Project.WebForm1" %>
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
                          <h1> <b>CONTRACT MANAGER HOME</b></h1>                                          <%--  E1/ ADD YOUR HOME TITLE HERE :- xxx HOME --%>
                           <p><b>Internationl Construction Consortium</b></p> 
                       </center>
                  </div>
            </div>
           



            <div class="row">
            <div class="col-12">
               <center>
                   <br><br><br><br>
                  <h4> Daily Estimation Management</h4>                                                     <%--  E2/ ADD YOUR MOST IMPORTANT ACTIONS MENU NAME HERE :- xxx HOME --%>
                  <p><b> Relavent to the Contract Management </b></p>                           <%--  E3/ BRIRF ON MOS.IM.ACT. HERE HERE :- XXX,XXX,XXX --%>
                   <br><br><br>
               </center>
            </div>
         </div>



            <div class ="row">                                                                          <%--  THIS ROW IS FOR ADDING MAIN ACTIONS // ADD ANY NUMBER OF COLUMNS,ROWS AS YOU WANT --%>



                  <div class ="col-md-3">
                      <center>
                          <a href="c_estimation.aspx">                                                 <%--  E4/ CALL YOUR 1ST PAGE HERE :- XXX.aspx --%>
                           <img width ="170px" src="imgs/estihome.jpg" />                              <%--  E5/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>

                           <h4> PREPARE ESTIMATION</h4>                                                        <%--  E6/ ADD PAGE TITLE HERE--%>
                           <p class ="text-justify"> Prepare estimations for the raw materials and labour based on tenders.</p>     <%--  E6/ Brief on the title--%>   
                      </center>
                  </div>



                <div class ="col-md-3">
                      <center>
                          <a href="c_searchestimationmat.aspx">                                                <%--  E7/ CALL YOUR 2nd PAGE HERE :- XXX.aspx --%>
                           <img width ="200px" src="imgs/homemats.jpg" />                            <%--  E8/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>
                           <h4> MATERIAL ESTIMATIONS</h4>                                              <%--  E9/ ADD PAGE TITLE HERE--%>
                           <p class ="text-justify"> Search for the raw material estimation of a particular tender.Update and Delete when necessory</p>             <%--  E10/ Brief on the title--%> 
                      </center>
                  </div>



                <div class="col-md-3">
                     <center>
                          <a href="c_searchestimationlab.aspx">                                    <%--  E11/ CALL YOUR 3rd PAGE HERE :- XXX.aspx --%>
                          <img width="200px" src="imgs/homelab.jpg"/>                                     <%--  E12/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                          </a>
                          <h4>LABOUR ESTIMATIONS</h4>                                                   <%--  E13/ ADD PAGE TITLE HERE--%>
                          <p class="text-justify">Search for the labour estimation of a particular tender.Update and Delete when necessory </p>    <%--  E14/ Brief on the title--%> 
                     </center>
                  </div>



                <div class="col-md-3">
                     <center>
                         <a href="c_reportform.aspx">                                                   <%--  E15/ CALL YOUR 4th PAGE HERE :- XXX.aspx --%>
                         <img width="200px" src="imgs/hometender.jpg"/>                            <%--  E16/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                         </a>
                         <h4>Reports</h4>                                                         <%--  E17/ ADD PAGE TITLE HERE--%>
                         <p class="text-justify"> Generate estimation report with total raw material cost. And total labour cost.Email the report to customer </p>                                 <%--  E18/ Brief on the title--%> 
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
                                                                                                    <%--  E19/ ADD YOUR SECONDORY ACTIONS MENU NAME HERE :- xxx HOME --%>
                                                                        <%--  E20/ BRIRF ON SEC.IM.ACT. HERE HERE :- XXX,XXX,XXX --%>
                    <br><br>
               </center>
            </div>
         </div>


         <div class="row">

            <div class="col-md-3">
               <center>
                  <a href="rawmaterial.aspx">                                                                                 <%--  E21/ CALL YOUR 5ST PAGE HERE :- XXX.aspx --%> 
                  <img width="200px" src="imgs/rm.jpg" />                                                                      <%--  E22/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                  </a>
                  <h4>Raw Materials</h4>                                                                                  <%--  E17/ ADD PAGE TITLE HERE--%>   
                  <p class="text-justify"> Display the current prices of raw materials.</p>       <%--  E18/ Brief on the title--%> 
               </center>
            </div>


            <div class="col-md-3">
               <center>
                                                                                       <%--  E18/ CALL YOUR PAGE HERE :- XXX.aspx --%>
                                                                                      <%--  E19/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                                                                                                      <%--  E20/ ADD PAGE TITLE HERE--%>  
                                                                                                   <%--  E21/ Brief on the title--%> 
               </center>
            </div>




            <div class="col-md-3">
               <center>
                                                                                            <%--  E22/ CALL YOUR PAGE HERE :- XXX.aspx --%>
                                                                                         <%--  E23/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                  
                                                                                                          <%--  E24/ ADD PAGE TITLE HERE--%>  
                                                                                                            <%--  E25/ Brief on the title--%> 
               </center>
            </div>


             
            <div class="col-md-3">
               <center>
                                                                            <%--  E22/ CALL YOUR PAGE HERE :- XXX.aspx --%>
                                                                                      <%--  E26/ DOWNLOAD AND ADD A PHOTO FOR YOUR TITLE--%>
                  
                                                                                                           <%--  E27/ ADD PAGE TITLE HERE--%>  
                                                                                                    <%--  E28/ Brief on the title--%> 
               </center>
            </div>



             <br><br><br>
         </div>
      </div>
        <br><br><br><br><br><br>
   </section>

</asp:Content>
