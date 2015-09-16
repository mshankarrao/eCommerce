<%@page import="com.ekart.connection.ConnectionFactory"%>
<%@ page import="java.io.*,java.sql.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>clothing display</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/component.css" rel='stylesheet' type='text/css' />

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
		<script>
		/* 	$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
			});
		}); */
		</script>
</head>
<body>
<%
String sn = request.getParameter("ver");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = ConnectionFactory.getInstance().getConnection();/* DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/mshankarrao", "root",
			"Mahadev1970#"); */
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from product where categoryName='clothing1'"); // this is for name
	if (rs.next()) {
		

	} else {

		

	}

	rs.close();
	st.close();
	con.close();
%>
  <div class="apparel">
	<div class="container">
		<div class="header-top">
      		 <div class="logo">
				<a href="index.html"><img src="images/logo.png" alt=""/></a>
			 </div>
		   <div class="header_right">
			<!--  <ul class="social">
				<li><a href=""> <i class="fb"> </i> </a></li>
				<li><a href=""><i class="tw"> </i> </a></li>
				<li><a href=""><i class="utube"> </i> </a></li>
				<li><a href=""><i class="pin"> </i> </a></li>
				<li><a href=""><i class="instagram"> </i> </a></li>
			 </ul> -->
		    <div class="lang_list">
			  <!-- <select tabindex="4" class="dropdown">
				<option value="" class="label" value="">En</option>
				<option value="1">English</option>
				<option value="2">French</option>
				<option value="3">German</option>
			  </select> -->
   			</div>
			<div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
		 </div>  
		 <div class="apparel_box">
			<ul class="login">
				<li class="login_text"><a href="login.html">Login</a></li>
				<li class="wish"><a href="checkout.html">Wish List</a></li>
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
				<li class="view_cart"><a href="checkout.html">View Cart</a></li>
				<li class="check"><a href="checkout.html">Checkout</a></li>
				<div class='clearfix'></div>
		     </ul>
			<div class="search">
			   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
			   <input type="submit" value="">
			</div>
		  </div>
		</div>
    </div>
	<div class="main">
	  <div class="content_box">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="menu_box">
				   	  	<h3 class="menu_head">Menu</h3>
				   	     <ul class="nav">
					   	  	<li><a href="apparel.html">About</a></li>
					   	  	<li><a href="contact.html">Contact</a></li>
					   	 </ul>
			   	    </div>
			   	    <div class="category">
			   	    </div>
			   	    <div class="category">
			   	    </div>
			   	    <div class="tags">
				     </div>
				     <div class="side_banner">
					   <div class="banner_img"></div>
					   <div class="banner_holder">
					   </div>
				     </div>
			  </div>
			  <div class="col-md-9">
			    <div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="index.jsp" title="Go to Home Page">Home</a>&nbsp;
                    </li>
                   
               </ul>
                <ul class="previous">
                	<li><a href="index.html">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   <div class="mens-toolbar">
                 <div class="sort">
               	   <div class="sort-by">
		       <!--      <label>Sort By</label>
		            <select>
		                            <option value="">
		                    Position                </option>
		                            <option value="">
		                    Name                </option>
		                            <option value="">
		                    Price                </option>
		            </select>
		            <a href=""><img src="images/arrow2.gif" alt="" class="v-middle"></a> -->
                   </div>
    		     </div>
    	        <ul class="women_pagenation dc_paginationA dc_paginationA06">
			<!--      <li><a href="#" class="previous">Page:</a></li>
			     <li class="active"><a href="#">1</a></li>
			     <li><a href="#">2</a></li> -->
		  	    </ul>
                <div class="clearfix"></div>		
		        </div>		
				<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
				<!-- 	<div class="cbp-vm-options">
						<a href="#" class="cbp-vm-icon cbp-vm-grid cbp-vm-selected" data-view="cbp-vm-view-grid" title="grid">Grid View</a>
						<a href="#" class="cbp-vm-icon cbp-vm-list" data-view="cbp-vm-view-list" title="list">List View</a>
					</div> -->
					<div class="pages">   
        	 <div class="limiter visible-desktop">
             <!--   <label>Show</label>
                  <select>
                            <option value="" selected="selected">
                    9                </option>
                            <option value="">
                    15                </option>
                            <option value="">
                    30                </option>
                  </select> per page        
 -->               </div>
       	   </div>
					<div class="clearfix"></div>
					<ul>
					  <li>
							<a class="cbp-vm-image" href="single.html">
							 <div class="view view-first">
					   		  <div class="inner_content clearfix">
								<div class="product_image">
									<img src="images/pic12.jpg" class="img-responsive" alt=""/>
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
			                     </div>
		                      </div>
		                    </a>
							<div class="cbp-vm-details">
								Silver beet shallot wakame tomatillo salsify mung bean beetroot groundnut.
							</div>
							<a class="cbp-vm-icon cbp-vm-add" href="#">Add to cart</a>
						</li>
						<li>
							<a class="cbp-vm-image" href="single.html">
							  <div class="view view-first">
					   		  <div class="inner_content clearfix">
								<div class="product_image">
									<img src="images/pic11.jpg" class="img-responsive" alt=""/>
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
			                     </div>
		                      </div>
							 </a>
							<div class="cbp-vm-details">
								Wattle seed bunya nuts spring onion okra garlic bitterleaf zucchini.
							</div>
							<a class="cbp-vm-icon cbp-vm-add" href="#">Add to cart</a>
						</li>
						<li>
							<a class="cbp-vm-image" href="single.html">
								<div class="view view-first">
					   		  <div class="inner_content clearfix">
								<div class="product_image">
									<img src="images/pic10.jpg" class="img-responsive" alt=""/>
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
			                     </div>
		                      </div>
							</a>
							<div class="cbp-vm-details">
								Kohlrabi bok choy broccoli rabe welsh onion spring onion tatsoi ricebean kombu chard.
							</div>
							<a class="cbp-vm-icon cbp-vm-add" href="#">Add to cart</a>
						</li>
						<li>
							<a class="cbp-vm-image" href="single.html">
								<div class="view view-first">
					   		  <div class="inner_content clearfix">
								<div class="product_image">
									<img src="images/pic9.jpg" class="img-responsive" alt=""/>
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
			                     </div>
		                      </div>
							</a>
							<div class="cbp-vm-details">
								Kohlrabi bok choy broccoli rabe welsh onion spring onion tatsoi ricebean kombu chard.
							</div>
							<a class="cbp-vm-icon cbp-vm-add" href="#">Add to cart</a>
						</li>
						<li>
							<a class="cbp-vm-image" href="single.html">
								<div class="view view-first">
					   		  <div class="inner_content clearfix">
								<div class="product_image">
									<img src="images/pic8.jpg" class="img-responsive" alt=""/>
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
			                     </div>
		                      </div>
							</a>
							<div class="cbp-vm-details">
								Kohlrabi bok choy broccoli rabe welsh onion spring onion tatsoi ricebean kombu chard.
							</div>
							<a class="cbp-vm-icon cbp-vm-add" href="#">Add to cart</a>
						</li>
						<li>
							<a class="cbp-vm-image" href="single.html">
								<div class="view view-first">
					   		  <div class="inner_content clearfix">
								<div class="product_image">
									<img src="images/pic7.jpg" class="img-responsive" alt=""/>
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
			                     </div>
		                      </div>
							</a>
							<div class="cbp-vm-details">
								Kohlrabi bok choy broccoli rabe welsh onion spring onion tatsoi ricebean kombu chard.
							</div>
							<a class="cbp-vm-icon cbp-vm-add" href="#">Add to cart</a>
						</li>
						<li>
							<a class="cbp-vm-image" href="single.html">
								<div class="view view-first">
					   		  <div class="inner_content clearfix">
								<div class="product_image">
									<img src="images/pic6.jpg" class="img-responsive" alt=""/>
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
			                     </div>
		                      </div>
							</a>
							<div class="cbp-vm-details">
								Kohlrabi bok choy broccoli rabe welsh onion spring onion tatsoi ricebean kombu chard.
							</div>
							<a class="cbp-vm-icon cbp-vm-add" href="#">Add to cart</a>
						</li>
						<li>
							<a class="cbp-vm-image" href="single.html">
								<div class="view view-first">
					   		  <div class="inner_content clearfix">
								<div class="product_image">
									<img src="images/pic5.jpg" class="img-responsive" alt=""/>
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
			                     </div>
		                      </div>
							</a>
							<div class="cbp-vm-details">
								Kohlrabi bok choy broccoli rabe welsh onion spring onion tatsoi ricebean kombu chard.
							</div>
							<a class="cbp-vm-icon cbp-vm-add" href="#">Add to cart</a>
						</li>
						<li>
							<a class="cbp-vm-image" href="single.html">
								<div class="view view-first">
					   		  <div class="inner_content clearfix">
								<div class="product_image">
									<img src="images/pic4.jpg" class="img-responsive" alt=""/>
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
			                     </div>
		                      </div>
							</a>
							<div class="cbp-vm-details">
								Kohlrabi bok choy broccoli rabe welsh onion spring onion tatsoi ricebean kombu chard.
							</div>
							<a class="cbp-vm-icon cbp-vm-add" href="#">Add to cart</a>
						</li>
					</ul>
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
			
</body>
</html>		