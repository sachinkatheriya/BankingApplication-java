<%@ page import="java.sql.*" %>
<%
String uid=request.getParameter("uid");
PreparedStatement ps=(PreparedStatement)application.getAttribute("login");
ps.setString(1,uid);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	String upass=request.getParameter("pass");
	String dpass=rst.getString(2);
	if(upass.equals(dpass))
	{
		session.setMaxInactiveInterval(20);
		String name=rst.getString(3);
		String account=rst.getString(4);
		session.setAttribute("user",name);
		session.setAttribute("ano",account);
		response.sendRedirect("/banking-app");
	}
	else
	{%>
		<jsp:include page="login.jsp" />
		<div class='dvv'>
		 <h3 style='color:red'>Password is not correct</h3>
		</div>	
	<%}
	return;
}
%>
<jsp:include page="login.jsp" />
<div class='dvv'>
 <h3 style='color:red'>User id does not exist</h3>
</div>