<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Cus_category.aspx.cs" Inherits="Construction_Project.Cus_category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
         <br />
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h1><b>Choose Your Category</b></h1>
                    </center>
                </div>
                
              
            </div>

            <br />
            <br>
            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="300px" height="250px" src="imgs/h.jpg" />
                        <br />
                        <br />
                    <a href="Cus_house.aspx"><button type="button" class="btn btn-primary btn-lg">House Construction</button></a>
                    </center>
                </div>
               
                <div class="col-md-4">
                    <center>
                    <img width="300px" height="250px" src="imgs/i.jpg" />
                        <br />
                        <br />
                     <button type="button" class="btn btn-primary btn-lg">Building Construction</button>
                   
                    </center>
               
            </div>
                <div class="col-md-4">
                    <center>
                    <img width="300px" height="250px" src="imgs/j.jpg" />
                        <br />
                         <br />
                         
                   <button type="button" class="btn btn-primary btn-lg">Roads and Bridges Construction</button>
                    </center>
               
            </div>
        </div>
    </section>

    <br />
    <br />

</asp:Content>
