<!DOCTYPE HTML>
<%@page import="com.ekart.dao.*" %>
<%@page import="java.util.ArrayList" %>

<html>
<head>
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
 <script>
 $( document ).ready(function() {
	    $('#clothing').click(function() {
	     $("#content").load("clothing.jsp");
	    });
	    $('#electronics').click(function() {
	       $("#content").load("electronics.jsp");
	    });

	    $('#footwear').click(function() {
	       $("#content").load("footwear.jsp");
	    });

	    $('#watches').click(function() {
	       $("#content").load("watches.jsp");
	    });
	    
	    $('#books').click(function() {
		       $("#content").load("books.jsp");
		    });
	});
</script>

<title>EKart-Home</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script src="js/jquery.easydropdown.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
 <style>
 #tt {
		text-transform: uppercase;
	}
	
 </style>
 </head>
<body>
<div class="header">	
      <div class="container"> 
         <div class="header-top">
      		 <div class="logo">
				<a href="index.html"><img src="images/logo.png" alt=""/></a>
			 </div>
		   <div class="header_right">
			 <ul class="social">
				
			 </ul>
		    <div class="lang_list">
			
   			</div>
			<div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
		 </div>  
		 <div class="index-banner">
       	   <div class="wmuSlider example1">
			   <div class="wmuSliderWrapper">
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	<div class="banner-wrap">
				   	       <div class="bannertop_box">
				   		 		<ul class="login">
				   		 			<li class="login_text"><a href="login.jsp"><%=request.getSession().getValue("name")%></a></li>
				   		 			<li class="wish">Welcome</li>
				   		 			<div class='clearfix'></div>
				   		 		</ul>
				   		 		<div class="cart_bg">
					   		 		<ul class="cart">
					   		 		   <i class="cart_icon"></i><p class="cart_desc"><a href="delete.jsp">View and Manage orders</a><br><span class="yellow"></span></p>
					   		 		   <div class='clearfix'></div>
					   		 		</ul>
					   		 		<ul class="product_control_buttons">
							  	     <!--  <li><a href="#"><img src="images/close.png" alt=""/></a></li>
							  	      <li><a href="#">Edit</a></li> -->
							  		</ul>
							  		<div class='clearfix'></div>
							  	</div>
							  	<ul class="quick_access">
				   		 			<!-- <li class="view_cart"><a href="checkout.html">View Cart</a></li>
				   		 			<li class="check"><a href="checkout.html">Checkout</a></li>
				   		 			<div class='clearfix'></div> -->
				   		 		</ul>
				   		 		<div class="search">
					  			   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
								   <input type="submit" value="">
					  			</div>
					  			
				   		 	</div>
				   		 	<div class='clearfix'></div>
				   	  </div>
					</article>
				   <article style="position: relative; width: 100%; opacity: 1;"> 
				   	   <div class="banner-wrap">
				   	      <div class="bannertop_box">
				   		 		<ul class="login">
				   		 			<li class="login_text">Hi  <%=request.getSession().getAttribute("name")%></a></li>
				   		 			<li class="wish"><a href="update.jsp">Update Profile</a></li>
				   		 			<div class='clearfix'></div>
				   		 		</ul>
				   		 		<div class="cart_bg">
					   		 		<ul class="cart">
					   		 		<i class="cart_icon"></i><p class="cart_desc"><a href="delete.jsp">View and Manage orders</a><br><span class="yellow"></span></p>
					   		 		   <div class='clearfix'></div>
					   		 		</ul>
					   		 		<ul class="product_control_buttons">
							  	      <li><a href="#"><form action="logout.jsp" ><input type="submit" value="logout"/></form></a></li>
							  	      <li><a href="#"></a></li>
							  		</ul>
							  		<div class='clearfix'></div>
							  	</div>
							  	<ul class="quick_access">
				   		 			<!-- <li class="view_cart"><a href="#">View Cart</a></li>
				   		 			<li class="check"><a href="#">Checkout</a></li>
				   		 			<div class='clearfix'></div> -->
				   		 		</ul>
				   		 		<div class="search">
					  			  <!--  <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
								   <input type="submit" value=""> -->
					  			</div>
				   		 	</div>
				   		 	<div class='clearfix'></div>
				   		</div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	  <div class="banner-wrap">
				   	       <div class="bannertop_box">
				   		 		<ul class="login">
				   		 			<li class="login_text"><a href="login.html">Login</a></li>
				   		 			<li class="wish"><a href="#">Wish List</a></li>
				   		 			<div class='clearfix'></div>
				   		 		</ul>
				   		 		<div class="cart_bg">
					   		 		<ul class="cart">
					   		 		   <i class="cart_icon"></i><p class="cart_desc">$1459.50<br><span class="yellow">2 items</span></p>
					   		 		   <div class='clearfix'></div>
					   		 		</ul>
					   		 		<ul class="product_control_buttons">
							  	      <li><a href="#"><img src="images/close.png" alt=""/></a></li>
							  	      <li><a href="#">Edit</a></li>
							  		</ul>
							  		<div class='clearfix'></div>
							  	</div>
							  	<ul class="quick_access">
				   		 			<li class="view_cart"><a href="#">View Cart</a></li>
				   		 			<li class="check"><a href="#">Checkout</a></li>
				   		 			<div class='clearfix'></div>
				   		 		</ul>
				   		 		<div class="search">
					  			   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
								   <input type="submit" value="">
					  			</div>
					  			
				   		 	</div>
				   		 	
				   		 	<div class='clearfix'></div>
				   		 </div>
					 </article>
				 </div>
                <!-- <ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="wmuActive">2</a></li>
                </ul> -->
            </div>
          <!--   <script src="js/jquery.wmuSlider.js"></script> 
			  <script>
       			$('.example1').wmuSlider();         
   		     </script>  -->	           	      
      </div>
	 </div>     
	</div>
	<div class="main">
	  <div class="content_box">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="menu_box">
				   	  	<h3 class="menu_head">Categories</h3>
				   	     <%! int i=0; ArrayList<String> categories=new ArrayList<String>();%>
				   	     <% categories=(ArrayList)request.getSession().getAttribute("category");
				   	  for(int i = 0; i < categories.size(); i++) {%>
				   	   <ul class="nav">
    				   		<li id="tt"><center><input type="radio" id=<%=categories.get(i)%> name="button" value=<%=categories.get(i)%>><font face="sans-serif"><b><%=categories.get(i)%></b></font></center></li>
    				   		<%
				   	    }
				   	     %>
				   	      </ul>
			   	    </div>
					   	  	<!-- <li><a href="apparel.html">Apparel</a></li>
					   	  	<li><a href="apparel.html">Surf Apparel</a></li>
					   	  	<li><a href="apparel.html">Windsurf</a></li>
					   	  	<li><a href="apparel.html">Kitesurf</a></li>
					   	  	<li><a href="apparel.html">Accessories</a></li>
					   	  	<li><a href="apparel.html">Sale</a></li>
					   	  	<li><a href="apparel.html">Brands</a></li>
					   	  	<li><a href="apparel.html">Blog</a></li>
					   	  	<li><a href="apparel.html">Gadgets</a></li>
					   	  	<li><a href="contact.html">Contact</a></li> -->
			   	    <div class="side_banner">
					   <div class="banner_img"></div>
					   <div class="banner_holder">
						  <h3></h3>
					   </div>
				    </div>
				    <div class="tags">
				      </div>
				     <div class="tags">
				      </div>
				</div>
			   <div class="col-md-9">
			           <div id="content"></div>
				<h3 class="m_1">New Products</h3>
				 <div class="content_grid">
				   <div class="col_1_of_3 span_1_of_3"> 
				  	 <div class="view view-first">
					      <a href="index.jsp">
						   <div class="inner_content clearfix">
							<div class="product_image">
								<img src="chigodi.jpg" class="img-responsive" alt=""/>
								<div class="mask">
		                       		<div class="info">Quick View</div>
				                  </div>
								<div class="product_container">
								   <div class="cart-left">
									 <p class="title">Lorem Ipsum 2014</p>
								   </div>
								   <div class="price">$99.00</div>
								   <div class="clearfix"></div>
							     </div>		
							</div>
		                    <div class="sale-box"><span class="on_sale title_shop">New</span></div>	
		                   </div>
		                 </a>
				       </div>
				    </div>
				    </div>
				    </div>
				    </div>
				    </div>
				    </div>
		</div>
</body>
</html>		