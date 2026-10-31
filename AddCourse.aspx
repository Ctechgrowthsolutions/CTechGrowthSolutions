<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="CTechGrowthSolutions.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
<link href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" rel="stylesheet" />
    <script type="text/javascript">
        Sys.Application.add_load(function () {
            $("[id*='txtMobile']").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "AddCourse.aspx/GetMobiles",
                        type: "POST",
                        data: JSON.stringify({ prefix: request.term }),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                        }
                    });
                },
                minLength: 2 // start suggesting after 2 characters
            });
        });
</script>
        <script type="text/javascript">
            Sys.Application.add_load(function () {
                $("[id*='txtemail']").autocomplete({
                    source: function (request, response) {
                        $.ajax({
                            url: "AddCourse.aspx/GetEmails",
                            type: "POST",
                            data: JSON.stringify({ prefix: request.term }),
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                response(data.d);
                            }
                        });
                    },
                    minLength: 2 // start suggesting after 2 characters
                });
            });
</script>

        <script type="text/javascript">
            Sys.Application.add_load(function () {
                $("[id*='txtaadhar']").autocomplete({
                    source: function (request, response) {
                        $.ajax({
                            url: "AddCourse.aspx/GetAadhars",
                            type: "POST",
                            data: JSON.stringify({ prefix: request.term }),
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (data) {
                                response(data.d);
                            }
                        });
                    },
                    minLength: 2 // start suggesting after 2 characters
                });
            });
</script>
    
    <section class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">
        <h2>Add Course </h2>
        <marquee> Add course for student</marquee>
          <asp:UpdatePanel ID="up" runat="server">
                     <ContentTemplate>
        <div class="row">

             <div class="col-md-3 ms-sm-auto col-lg-3 px-md-4 py-4">        
                 <h5>Search Student By </h5>
                             </div>
             <div class="col-md-9 ms-sm-auto col-lg-9 px-md-4 py-4">   
                 <style>
                     .clsgender {
                         width:100%;
                     }
                     .clsgender  label {
                         margin-left:10px;
                     }
                 </style>            


                    
<asp:RadioButtonList ID="rbtnserchdata" name="rbtnserchdata"  runat="server" CssClass="clsgender"
    RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rbtngender_SelectedIndexChanged">
    <asp:ListItem Value="mobile" Selected="True">Mobile Number</asp:ListItem>
    <asp:ListItem Value="email">Email ID</asp:ListItem>
    <asp:ListItem Value="aadhar">Aadhar Number</asp:ListItem>
</asp:RadioButtonList>
                        
                     
                              </div>

        </div>
    
               
               
        <div class="row"  id="mobilediv" runat="server"> 

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                 <input type="text" placeholder="Enter Mobile Number" maxlength="10" id="txtMobile"  class="form-control autocomplete" runat="server"/>  
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">               
           <asp:Button ID="btnmobile" runat="server" Text="Search" CssClass="btn btn-success"  OnClick="btnmobile_Click" />     
                             </div>

        </div>

        <div class="row" runat="server" id="emaildiv"> 

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                 <input type="text" placeholder="Enter Email Id " maxlength="50" id="txtemail"  class="form-control" runat="server"/>  
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">               
           <asp:Button ID="btnEmail" runat="server" Text="Search" CssClass="btn btn-success"  OnClick="btnEmail_Click" />     
                             </div>

        </div>

             
        <div class="row" runat="server" id="aadhardiv"> 

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                 <input type="text" placeholder="Enter Aadhar Number" maxlength="50" id="txtaadhar"  class="form-control" runat="server"/>  
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">               
           <asp:Button ID="btnAadhar" runat="server" Text="Search" CssClass="btn btn-success" OnClick="btnAadhar_Click"  />     
                             </div>

        </div>


        <div class="row">

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                 <input type="text" placeholder="Enter Student Name" disabled="disabled"  maxlength="50" id="txtName" class="form-control"  runat="server"/>  
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">               
                <asp:DropDownList ID="ddlcourse" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlcourse_SelectedIndexChanged">      
                 </asp:DropDownList>     

                             </div>

        </div>

             
       

       
         <div class="row">

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">      
                <input type="text" placeholder="Enter Course Duration"  disabled="disabled" maxlength="50" id="txtcourseDuration" class="form-control"  runat="server"/>  
                               
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">     
                 <span> Join Date</span>
                 <input type="date" class="form-control"  name="date" id="txtdob" runat="server"  placeholder=" Join Date dd/mm/yyyy" />                             
              
                             </div>

        </div>
         
             </ContentTemplate>
                 </asp:UpdatePanel>

                <div class="row">

          
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">       
                   <asp:Button ID="btnAddCourse" runat="server" Text="Register" CssClass="btn btn-success"  OnClick="btnAddCourse_Click"    />        
             <button type="button" class="btn btn-secondary">Cancel</button>
                             </div>

        </div>

      </section>

</asp:Content>
