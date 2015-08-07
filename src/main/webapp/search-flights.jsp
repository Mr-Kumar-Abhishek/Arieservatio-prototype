<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% 
try {
    String connectionURL = "jdbc:mysql://"+ System.getenv().get("OPENSHIFT_MYSQL_DB_HOST")+
    					":" + System.getenv().get("OPENSHIFT_MYSQL_DB_PORT") + "/arieservatio";
    Connection connection = null; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    connection = DriverManager.getConnection(connectionURL, "adminQHnx2Sv", "rKFHef1xX_C3");
    if(!connection.isClosed()){
        
%>
<jsp:include page="meta-top.jsp" />
<title>Flight Search</title>
<% 
	pageContext.include("meta-mid.jsp");
	pageContext.include("head-imports.jsp");
	pageContext.include("header.jsp");
%>
<%
	String stype = request.getParameter("stype");
	if (stype == null) {
        out.println("Search in which one way , rountrip or muti city ??");
    } else if(stype.equals("one")){
%>
<p>you are here in search one way</p>
<%
	String from = request.getParameter("from");
	String to = request.getParameter("to");
	String dd = request.getParameter("dd");
	String flight_class = request.getParameter("flight-class");
	out.println("okay okay");
%>
<p><%= from %></p>
<p><%= to %></p>
<p><%= dd %></p>
<p><%= flight_class %></p>
<%
    }
%>
<!-- content goes here -->
<jsp:include page="footer.jsp" />
<jsp:include page="endings.jsp" />
<%
    }
    connection.close();
}catch(Exception ex){
    out.println(ex.getMessage());
}
%>

