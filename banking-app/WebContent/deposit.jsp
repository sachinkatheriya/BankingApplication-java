<%@ page import="java.sql.*" %>
<%@ include file="menu.jsp" %>
<body onload="makeActive('deposit')">
<div class='dv'>
  <%
  int amt=Integer.parseInt(request.getParameter("amount"));
  PreparedStatement ps=(PreparedStatement)application.getAttribute("deposit");
  ps.setInt(1,amt);
  ps.setObject(2,session.getAttribute("ano"));
  ps.executeUpdate();
  %>
  <h1 style='color:green'>Amount &#8377;<%=amt%> credited into your account</h1>
</div>
</body>