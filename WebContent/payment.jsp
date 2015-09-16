<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Surfhouse Bootstarp Website Template | Single ::
	w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
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
<script>
	$(document).ready(function() {
		$('.popup-with-zoom-anim').magnificPopup({
			type : 'inline',
			fixedContentPos : false,
			fixedBgPos : true,
			overflowY : 'auto',
			closeBtnInside : true,
			preloader : false,
			midClick : true,
			removalDelay : 300,
			mainClass : 'my-mfp-zoom-in'
		});
	});
</script>
<script>
	function myFunction() {
		document.getElementById("demo").innerHTML = document
				.getElementById("quantity").value
				* document.getElementById("productPrice").value;
	}
</script>
<!----details-product-slider--->
<!-- Include the Etalage files -->
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
<!-- Include the Etalage files -->
<script>
	jQuery(document)
			.ready(
					function($) {

						$('#etalage')
								.etalage(
										{
											thumb_image_width : 300,
											thumb_image_height : 400,

											show_hint : true,
											click_callback : function(
													image_anchor, instance_id) {
												alert('Callback example:\nYou clicked on an image with the anchor: "'
														+ image_anchor
														+ '"\n(in Etalage instance: "'
														+ instance_id + '")');
											}
										});
						// This is for the dropdown list example:
						$('.dropdownlist').change(
								function() {
									etalage_show($(this)
											.find('option:selected').attr(
													'class'));
								});

					});
</script>
<!----//details-product-slider--->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true
		// 100% fit in a container
		});
	});
</script>
</head>
<body>
	<div class="single">
		<div class="container"></div>
	</div>
	<div class="main">
		<div class="content_box">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="dreamcrub">
							<ul class="breadcrumbs">
								<li class="home"><a href="index.jsp"
									title="Go to Home Page">Home</a>&nbsp;</li>
							</ul>
							<ul class="previous">
								<li><a href="index.jsp">Back to Previous Page</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<form action="MainController" method="post">
							<div class="singel_right">
								<div class="cont1 span_2_of_a1">
									<h3>
										You are paying for the product
										<%=request.getSession().getAttribute("productName")%></h3>
									<div class="product-qty">
										<input type="hidden" id="productPrice"
											value=<%=request.getSession().getAttribute("productPrice")%>>
										<span class="actual"><h4>
												Price:$<%=request.getSession().getAttribute("price")%></h4></span> <span>Payment
											Mode:</span> <select name="paymentMode" id="paymentMode">
											<option value="Giftcard" selected>Giftcard</option>
											<option value="Debit">Debit</option>
											<option value="Credit">Credit</option>
										</select> <span>Card Detail:</span> <input type="text" name="cardDetail" id="cardDetail"
											onkeypress='return event.charCode >= 48 && event.charCode <= 57'
											maxlength="16"></input>
										<span>Card Type:</span> <select name="cardType" id="cardType">
											<option value="VISA" selected>VISA</option>
											<option value="Discover">Discover</option>
											<option value="Master">Master</option>
										</select>

									</div>
									<ul class="product-qty">

									</ul>
									<ul class="product-qty" />
									<br />
									<div class="btn_form">
										<input type="hidden" name="key" value="pay"> <input
											type="submit" value="Pay">
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</form>
</body>
</html>
