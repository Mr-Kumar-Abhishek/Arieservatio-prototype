<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>  
<% 
try {
    String connectionURL = "jdbc:mysql://"+ System.getenv().get("OPENSHIFT_MYSQL_DB_HOST")+
    					":" + System.getenv().get("OPENSHIFT_MYSQL_DB_PORT") + "/arieservatio";
    Connection connection = null; 
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    ResultSet rs = null;
    Statement stmt = null;
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
	/// //////////////////////////////////////
	// Date to time stamp convertor ////
	/////////////////////////////////////////

	try{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date parsedDate = dateFormat.parse(dd);
		Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());
//			out.println(timestamp);
			//////////////////////////////////////////
			// A day after////////////////////////////
			//////////////////////////////////////////

			Calendar cal = Calendar.getInstance();
			cal.setTime(timestamp);
			cal.add(Calendar.DAY_OF_WEEK, 1);
			Timestamp futurestamp = new Timestamp(cal.getTime().getTime());
//			out.println(futurestamp);

			int counting = -1;
	  			stmt = connection.createStatement();
	  			String quel = "SELECT COUNT(*) FROM flight_sheddule WHERE deptime between "+timestamp+" and "+futurestamp+")";
      			//rs = stmt.executeQuery();
      			// get the number of rows from the result set
      			//rs.next();
      			//int rowCount = rs.getInt(1);
      			//out.println(rowCount);
      			out.println(quel);
	}catch(Exception e){//this generic but we can control another types of exception
			out.println(e.getMessage());
	}


/*	
	*/
%>
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

