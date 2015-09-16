<%@page import="java.util.ArrayList"%>
<%@page import="com.ekart.connection.ConnectionFactory"%>
<%@page import="com.ekart.beans.*"%>
<%@ page import="java.io.*,java.sql.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>clothing display</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!-- <link href="css/style.css" rel='stylesheet' type='text/css' /> -->
<link href="css/component.css" rel='stylesheet' type='text/css' />

<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!--webfont-->
<link
	href='http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<script src="js/jquery.easydropdown.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="apparel">
		<div class="main">
			<div class="content_box">
				<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
					<div class="clearfix"></div>
					<ul>
						<%
							ArrayList<Product> productList = new ArrayList<Product>();
							Class.forName("com.mysql.jdbc.Driver");
							Connection con = ConnectionFactory.getInstance().getConnection();
							Statement st = con.createStatement();
							ResultSet rs = st
									.executeQuery("select * from product where categoryName='electronics'"); // this is for name
							while (rs.next()) {
							Product p=new Product();
							p.setProductId(rs.getInt(1));
							p.setProductName(rs.getString(2));
							p.setCategoryName(rs.getString(3));
							p.setProductAvailability(rs.getString(4));
							p.setProductQuantity(rs.getInt(5));
							p.setProductPrice(rs.getInt(6));
							productList.add(p);
							}
							rs.close();
							st.close();
							con.close();
							for (int i = 0; i < productList.size(); i++) {
						%>
						<li><a class="cbp-vm-image" href="index.jsp">
								<div class="view view-first">
									<div class="inner_content clearfix">
										<div class="product_image">
											<form action="MainController" method="post">
												<img src=image/<%=productList.get(i).getProductName()%>.jpg class="img-responsive" alt="" />
												<input type="hidden" name="key" value="buy"> 
												<input type="hidden" name="productId" value=<%=productList.get(i).getProductId()%>>
												<input type="hidden" name="productName" value=<%=productList.get(i).getProductName()%>>
												<input type="hidden" name="productPrice" value=<%=productList.get(i).getProductPrice()%>>
												<input type="submit" value="Checkout">
												<div class="mask">
													<div class="info">Quick View</div>
												</div>
												<div class="product_container">
													<div class="cart-left">
														<p class="title"><%=productList.get(i).getProductName()%></p>
													</div>
													<div class="price">$99.00</div>
													<div class="clearfix"></div>
												</div>
											</form>
										</div>
									</div>
								</div>
						</a></li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>