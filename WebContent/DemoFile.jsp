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
        <!-- <script type="text/javascript" src="js/libs/jquery/jquery.js"></script>
        <script type="text/javascript" src="js/ajax.js"></script>
 -->
    </body>
</html>
     <!-- <input type="radio" name="group" id="link1">abc<font face="sans-serif"><b>
        <div id="layer5" class="style2" style="position: absolute; width: 79px; height: 17px; z-index: 1; left: 11px; top: 15px"><a href="login.jsp" class="link1">item 1</a></div> 
        <div id="result" style="position: absolute; width: 988px; height: 649px; z-index: 2; left: 193px; top: 4px"></div> 
       <input type="radio" id="launch-page1" class="page-launcher" />
<input type="radio" id="launch-page2" class="page-launcher" />
<div id="hold-page1"></div>
<div id="hold-page2"></div>
    </body> -->
</html>