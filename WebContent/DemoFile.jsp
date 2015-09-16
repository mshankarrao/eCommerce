<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>title</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
 <script>
 $( document ).ready(function() {
	    $('#button1').click(function() {
	      $("#content").load("login.jsp");
	    });

	    $('#button2').click(function() {
	       $("#content").load("apparel.html");
	    });

	    $('#button3').click(function() {
	       $("#content").load("checkout.html");
	    });

	    $('#button4').click(function() {
	       $("#content").load("pageD.html");
	    });
	});
</script>
    </head>
    <body>
    
    <!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
    </head>
    <body>
<%=request.getParameter("ida")%>


<textarea id="t">      </textarea>
        Radio A <input id="button1" type="radio" name="button" value=""/>
        Radio B <input id="button2" type="radio" name="button" value=""/>
        Radio C <input id="button3" type="radio" name="button" value=""/>
        Radio D <input id="button4" type="radio" name="button" value=""/>

        <div id="content"></div>
  
    </body>
</html>
