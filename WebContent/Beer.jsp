<%@ page import = "QHandle.*" %>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="javax.*" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" type="text/css" href="BaseStyle.css">
</head>
<body>

<div class="container_24">
	<header>
		
		<nav>
				<a href="index.jsp">Home</a>
				<a href="Bar.jsp">Bar</a>
				<a href="Drinker.jsp">Drinker</a>
				<a href="Modification.jsp">Modification</a>
				<a href="Give Query.jsp">MySQL Query</a>
				<a href="Database Info.jsp">Database Info</a>
		</nav>
		<h1 class="clearfix"><a>Enter Beer Name</a></h1>
	</header>
</div>

<%
	String ip = request.getHeader("X-Forwarded-For");  
		 ip = QS.GetIp(ip,request);
		 
		 HttpSession sess = request.getSession();
         //Open drinker graphs page
%>
         <form action="BeerGraphs.jsp" method="GET"> 
    	 <h1>
         <textarea style="width:300px; height:20px;" class="myTextarea" name = "Beer1"><%try{if(sess.getAttribute(ip+"Beer")!=null){out.print(sess.getAttribute(ip+"Beer"));}else{/*out.print("");*/}}catch(Exception e){}%></textarea>
         <input type="hidden" name ="query"/>	
	     <input type="submit" name ="submit" value="Send"> 
	     </h1>
         </form> 
         
         <%
         //Save state...
         String qry =(String)request.getParameter("Beer1");
         if(qry!=null){
         %>
         <my:IpSession qry = "<%= qry %>" />
         <%
         }
         //After name entered, use this for query...
  
         
         
         

%>
</body>
</html>