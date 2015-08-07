<p>you are here in search one way</p>
<%
if(request.getParameter("action") != null) {
	String from = request.getParameter("from");
	String to = request.getParameter("to");
	String dd = request.getParameter("dd");
	String flight_class = request.getParameter("flight-class");

%>
<p><%= from %></p>
<p><%= to %></p>
<p><%= dd %></p>
<p><%= flight_class %></p>
<%
}
%>


