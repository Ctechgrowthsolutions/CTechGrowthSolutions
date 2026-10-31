<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="StudReg.aspx.cs" Inherits="CTechGrowthSolutions.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">
        <h2>Registration of Student</h2>
     
        <div class="row">

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                 <input type="text" placeholder="Enter Student Name" maxlength="50" id="txtName" class="form-control"  runat="server"/>  
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">               
              <input type="text" placeholder="Enter Mobile Number" maxlength="10" id="txtmob"  class="form-control" runat="server"/>  
                             </div>

        </div>

             
       <div class="row">

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                 <input type="text" placeholder="Enter Email Id" maxlength="50" id="txtemail" class="form-control" runat="server" />  
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">               
              <input type="text" placeholder="Enter Addhar Number" maxlength="12" id="txtaddhar"  class="form-control" runat="server"/>  
                             </div>

        </div>

         <div class="row">

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                  <input type="date" class="form-control"  name="date" id="txtdob" runat="server" />
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">   
                 <style>
                     .clsgender {
                         width:100%;
                     }
                     .clsgender  label {
                         margin-left:10px;
                     }
                 </style>            
             <asp:RadioButtonList ID="rbtngender" runat="server" CssClass="clsgender"  RepeatDirection="Horizontal">
                <asp:ListItem Value="Male" Selected="True">Male</asp:ListItem>
                 <asp:ListItem Value="Female"> Femlae</asp:ListItem>

             </asp:RadioButtonList>
                             </div>

        </div>
         <div class="row">

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                 <input type="text" placeholder="Enter College/School Name" maxlength="50" id="txtclgname" class="form-control" runat="server" />  
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">     
                 <asp:DropDownList ID="ddlbranch" runat="server" CssClass="form-control">
                   <%--   <asp:ListItem Value="0">Select Branch</asp:ListItem>
                      <asp:ListItem Value="1">BCA</asp:ListItem>--%>
                     
                 </asp:DropDownList>          
              
                             </div>

        </div>
         <div class="row">

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                 <asp:DropDownList ID="ddlcity" runat="server" CssClass="form-control">
         <%--             <asp:ListItem Value="0">Select City</asp:ListItem>
                      <asp:ListItem Value="1">Karanja Lad</asp:ListItem>
                      <asp:ListItem Value="2">Washim</asp:ListItem>
                     <asp:ListItem Value="3">Mangrulpir</asp:ListItem>
                       <asp:ListItem Value="4">Amravati</asp:ListItem>
                       <asp:ListItem Value="5">Akola</asp:ListItem>
                       <asp:ListItem Value="6">Manora</asp:ListItem>
                       <asp:ListItem Value="7">Darwha</asp:ListItem>
                       <asp:ListItem Value="8">Yavatmal</asp:ListItem>--%>
                 </asp:DropDownList>

             
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">    
                 <input type="text" placeholder="Enter Address" maxlength="50" id="txtaddress"  class="form-control" runat="server"/>             
             
                             </div>

        </div>
         <div class="row">

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                 <input type="text" placeholder="Enter Pincode" maxlength="6" id="txtpincode" class="form-control" runat="server" />  
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">      
              <input type="text" placeholder="Enter Parents mobile number" maxlength="10" id="txtpmob"  class="form-control" runat="server"/>           
            
                             </div>

        </div>

                <div class="row">

             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">        
                   <input type="text" placeholder="How to reach us" maxlength="50" id="txtreach"  class="form-control" runat="server"/>  
               
                             </div>
             <div class="col-md-6 ms-sm-auto col-lg-6 px-md-4 py-4">       
                   <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success" OnClick="btnRegister_Click" />        
             <button type="button" class="btn btn-secondary">Cancel</button>
                             </div>

        </div>

      </section>




</asp:Content>
