<%@ page import="java.sql.*"%>  
  
<%  
String s=request.getParameter("val");  
if(s==null || s.trim().equals("")){  
out.print("Please enter Category");  
}else{    
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mshankarrao","root","Mahadev1970#");  
PreparedStatement ps=con.prepareStatement("SELECT * FROM product where categoryName=?");  
ps.setString(1,s);  
ResultSet rs=ps.executeQuery();
out.println("<html><body><table border=1>");
while(rs.next()){  
out.println("<tr><td>"+rs.getString(2)+"</td></tr>");
}  
out.println("</table></body></html>");
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>  
