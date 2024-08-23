<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=session.getAttribute("idsend").toString();




String status="downloaded";
try{
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE file.manageract set status='"+status+"' where id='"+id+"' ");
	response.sendRedirect("download.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>