<%@ page import="java.util.*" %>
<jsp:include pag="meta-top.jsp" />
<title>This is JSP arieservatio boilerplate</title>
<% 
	pageContext.include("meta-mid.jsp");
	pageContext.include("head-imports.jsp");
	pageContext.include("header.jsp");
%>
<!-- content goes here -->
<jsp:include page="footer.jsp" />
<jsp:include page="endings.jsp" />
