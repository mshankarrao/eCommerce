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
							ArrayList<Integer> orderList = new ArrayList<Integer>();
							Class.forName("com.mysql.jdbc.Driver");
							int customerId=Integer.parseInt(request.getSession().getAttribute("customerId").toString());
							String query="select * from mshankarrao.order where orderId IN (select orderId from customer_order where customerId="+customerId+")";
							Connection con = ConnectionFactory.getInstance().getConnection();
							Statement st = con.createStatement();
							ResultSet rs = st.executeQuery(query); // this is for name
							while (rs.next()) {
								orderList.add(rs.getInt(1));
								}
							rs.close();
							st.close();
							con.close();
							for (int i = 0; i < orderList.size(); i++) {
						%>
						<li><a class="cbp-vm-image" >
								<div class="view view-first">
									<div class="inner_content clearfix">
										<div class="product_image">
											<form action="MainController" method="post">
												<input type="text" name="orderId" id="orderId"	value=<%=orderList.get(i)%> readonly="readonly"/>
												<input type="hidden" name="key" value="cancel"> 
												<input type="hidden" name="productId" value=<%=orderList.get(i)%>>
												<input type="submit" value="Cancel">
												<div class="mask">
													<div class="info">Quick View</div>
												</div>
												<div class="product_container">
													<div class="cart-left">
														
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