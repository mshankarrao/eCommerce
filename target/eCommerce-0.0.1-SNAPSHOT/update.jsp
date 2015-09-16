<!DOCTYPE HTML>
<%@page import="com.ekart.beans.*"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<title>Surfhouse Bootstarp Website Template | Register :: w3layouts</title>
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
<link href='http://fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script src="js/jquery.easydropdown.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
		<script>
			$(document).ready(function() {
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
		});
		</script>
<!----details-product-slider--->
</head>
<body>
   <div class="single">
	<div class="container">
		<div class="header-top">
      		 <div class="logo">
				<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
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
		 <div class="apparel_box">
			<ul class="login">
				<li class="login_text"><a href="login.jsp"></a></li>
				<li class="wish"><a href=""></a></li>
				<div class='clearfix'></div>
		    </ul>
		    <div class="cart_bg">
			  <ul class="cart">
				<i class="cart_icon"></i><p class="cart_desc">$1459.50<br><span class="yellow">2 items</span></p>
				<%
Customer customer=new Customer();
				customer=(Customer)request.getSession().getAttribute("customer");
 %>
			    <div class='clearfix'></div>
			  </ul>
			  <ul class="product_control_buttons">
				 <li><a href="#"><img src="images/close.png" alt=""/></a></li>
				 <li><a href="#">Edit</a></li>
			  </ul>
		      <div class='clearfix'></div>
			 </div>
			 <ul class="quick_access">
				<li class="view_cart"><a href="checkout.html"></a></li>
				<li class="check"><a href="checkout.html"></a></li>
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
	   <div class="container">
		  <div class="register">
		  	<form action="MainController" method="post"> 
				 <div class="register-top-grid">
					<h3>Update Information</h3>
					 <div>
						<span>Name<label>*</label></span>
						<input type="text" name="name" value=<%=customer.getName()%> readonly="readonly"> 
					 </div>
					 <div>
						 <span>Email Address<label>*</label></span>
						 <input type="text" name="email" value=<%=customer.getEmail()%> readonly="readonly"> 
					 </div>
					  <div>
						<span>Phone<label>*</label></span>
						<input type="text" name="phone" value=<%=customer.getPhone()%>> 
					 </div>
					 <div>
						<span>City<label>*</label></span>
						<input type="text" name="city" value=<%=customer.getCity()%>> 
					 </div>
					 <div>
						<span>State<label>*</label></span>
						<input type="text" name="state" value=<%=customer.getState()%>> 
					 </div>
					 <div>
						<span>Zip<label>*</label></span>
						<input type="text" name="zip" value=<%=customer.getZip()%>> 
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 <input type="hidden" name="key" value="update"/>
					   </a>
					 </div>
				     <div class="register-bottom-grid">
							 <div>
								<span>Password<label>*</label></span>
								<input type="password" name="password" value=<%=customer.getPassword()%>>
							 </div>
							 <div>
								
							 </div>
					 </div>
				<div class="clearfix"> </div>
				<div class="register-but">
					   <input type="submit" value="save">
					   <div class="clearfix"> </div>
				   </form>
				</div>
		   </div>
	     </div>
	    </div>
</body>
</html>		