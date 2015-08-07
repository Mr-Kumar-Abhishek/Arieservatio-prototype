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
    if(!connection.isClosed())
         out.println("Successfully connected to " + "MySQL server using TCP/IP...");
    connection.close();
}catch(Exception ex){
    out.println(ex.getMessage());
}
%>

<jsp:include page="meta-top.jsp" />
<title>Flight Search</title>
<% 
	pageContext.include("meta-mid.jsp");
	pageContext.include("head-imports.jsp");
	pageContext.include("header.jsp");
%>
<!-- content goes here -->
<jsp:include page="footer.jsp" />
<jsp:include page="endings.jsp" />
