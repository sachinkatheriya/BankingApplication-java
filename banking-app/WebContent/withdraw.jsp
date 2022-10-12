<%@ page import="java.sql.*" %>

  <%
  int amt=Integer.parseInt(request.getParameter("amount"));
  PreparedStatement ps1=(PreparedStatement)application.getAttribute("balance");
  ps1.setObject(1,session.getAttribute("ano"));
  ResultSet rst=ps1.executeQuery();
  rst.next();
  int balance=rst.getInt(1);
  if(amt>balance)
  {
	  %>
	  <jsp:include page="withdraw-money.jsp" />
	  <div class='dv'>
	   <h3 style='color:red'>Insufficient balance</h3>
	  </div>
	  <%
	  return;
  }
  
  PreparedStatement ps=(PreparedStatement)application.getAttribute("withdraw");
  ps.setInt(1,amt);
  ps.setObject(2,session.getAttribute("ano"));
  ps.executeUpdate();
  %>
<%@ include file="menu.jsp" %>
<body onload="makeActive('withdraw')">
<div class='dv'>
  <h1 style='color:green'>Amount &#8377;<%=amt%> debited from your account</h1>
</div>
</body>