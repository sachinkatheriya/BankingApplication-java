<%@ page import="java.sql.*" %>
<%@ include file="menu.jsp" %>
<body onload="makeActive('balance')">
<div class='dv'>
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("balance");
  ps.setObject(1,session.getAttribute("ano"));
  ResultSet rst=ps.executeQuery();
  rst.next();
  %>
  <h1 style='color:green'>You current balance amount is &#8377;<%=rst.getString(1)%></h1>
</div>
</body>