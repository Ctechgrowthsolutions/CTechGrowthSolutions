<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="Activity.aspx.cs" Inherits="CTechGrowthSolutions.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- START HOME -->
    <script src="script/alloperation.js"></script>
    <style>
        @media only screen and (max-width: 480px) {
    .home_bg {
        height: 600px;
    }
}
    </style>
		<section class="home_bg hb_height" style="background-image: url(assets/img/bg/home-bg.jpg);  background-size:cover; background-position: center center;">
			<div class="container">
				<div class="row">
				  <div class="col-lg-6 col-sm-12 col-xs-12 ">
					<div class="hero-text ht_top">
						<h1><span>Keep With</span> Us to Enhance Your <span> Career..</span></h1>
						<h4>A Course That Can Change A Course Of Your Life.</h4>
					</div>
				
				  </div><!--- END COL -->
				  <div class="col-lg-6 col-sm-12 col-xs-12 ">
                       
					  <section class="col-md-12 ms-sm-auto col-lg-12 px-md-4 py-4">
                        
                          <h3> Verify Document Here!</h3>

                          <div class="row">

             <div class="col-md-12 ms-sm-auto col-lg-12 px-md-4 py-4">      
                <input type="text" placeholder="Enter Mobile Number"   maxlength="10" id="txtmob" class="form-control"  pattern="[0-9]{10}"  runat="server"/>  
                               
                             </div>
                                       </div>

                                  <div class="row">

             <div class="col-md-12 ms-sm-auto col-lg-12 px-md-4 py-4">      
                 <span> Join Date</span>
               <input type="date" placeholder="Enter join Date"   maxlength="50" id="txtjdate" class="form-control"  runat="server"/>  
                               
                             </div>
                                       </div>
        
                              <div class="row">

             <div class="col-md-12 ms-sm-auto col-lg-12 px-md-4 py-4">     
                 <span> Completion Date</span> 
                <input type="date" placeholder="Enter Completion Date"   maxlength="50" id="txtcdate" class="form-control"  runat="server"/>  
                               
                             </div>
                                       </div>
        
                           <div class="row">

             <div class="col-md-12 ms-sm-auto col-lg-12 px-md-4 py-4">     
                <asp:Button ID="btnVerfiy" runat="server" Text="Verify Document >> " OnClick="btnVerfiy_Click"  CssClass="btn btn-primary"  />
                               
                             </div>
                                       </div>


<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title" id="myModalLabel">ASP.NET Modal Popup</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <div class="modal-body">
        This modal is opened after ASP.NET button click.
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
                          </section>		
				  </div><!--- END COL -->						  
				</div><!--- END ROW -->
			</div><!--- END CONTAINER -->
		</section>
		<!-- END  HOME -->			
</asp:Content>
