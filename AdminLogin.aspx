<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CTechGrowthSolutions.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- START HOME -->
		<section class="home_bg hb_height" style="background-image: url(assets/img/bg/home-bg.jpg);  background-size:cover; background-position: center center;">
			<div class="container">
				<div class="row">
				  <div class="col-lg-6 col-sm-12 col-xs-12 ">
					<div class="hero-text ht_top">
						<h1><span>Keep With</span> Us to Enhance Your <span> Career..</span></h1>
						<h4>A Course That Can Change A Course Of Your Life.</h4>
					</div>
				
				  </div><!--- END COL -->
				  <div class="col-lg-6 col-sm-12 col-xs-12 clscenter">
                       <style>
        header{
background: #5C6795;
        }
        section{
            padding: 2% 5%;
        }
        .clscenter{
    margin: 0px auto;
    text-align: center;
   padding: 2%;
  box-shadow: 0px 0px 4px 6px #4c5a7d ;
   border-radius: 10px; 

    h1{
        
       font-size: 30px;
     margin: 3%;
     letter-spacing: 2px;
         text-shadow: 2px 5px 3px gray;
    }
    p{
        
        font-size: 16px;
        a{
            color:blue;
        }
    }
        }
        input[type="text" i], input[type="password" i] {
                                    color: gray;
                                   
                                    margin-bottom: 3%;
                                    outline: none;
                                    padding: 7px;border-radius: 10px;
                                    border:1px solid gray;
                                    width:75%;   
                                    font-size:18px;
        }
         .btncls {
                                    margin-top: 10px;
                                    padding: 10px;
                                    min-width: 25%;
                                    /* width: 25%; */
                                    font-size: 16px;
                                    color: white;
                                    border:none;
                                     box-shadow: 0px 0px 4px 6px #4c5a7d ;
                                    cursor: pointer;
                                    background: green;
                                    border-radius: 10px;
                                    border: 1px solid white;
                                     margin-bottom: 3%;
                                     text-transform:uppercase;
                                     letter-spacing:2px;
                            }
                            .headerimg{
                                width: 100px;
                                height: 100px;
                            }
    </style>

					
        <div class="widget clearfix">
            <div class="widget-title">
                <h1>Admin Login</h1>
            </div>

            <input type="text" placeholder="Enter Username" name="mobile"  required  maxlength="15"  id="txtuname" runat="server" />
            
            <input type="password" placeholder="Enter a Password" name="password" id="txtpwd" required maxlength="15" runat="server" />
            
            
           <asp:Button ID="btnlogin" Text="Login" runat="server" OnClick="btnlogin_Click" CssClass="btncls" />          
        </div>			
				  </div><!--- END COL -->						  
				</div><!--- END ROW -->
			</div><!--- END CONTAINER -->
		</section>
		<!-- END  HOME -->			
</asp:Content>
