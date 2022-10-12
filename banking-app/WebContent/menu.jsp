<%
if(session.getAttribute("user")==null)
{
	response.sendRedirect("login.jsp");
	return;
}
%>
<script src="JS/script.js"></script>
<link href='CSS/style.css' rel='stylesheet'>
<img src="images/bank.jpg" style='height:28%;width:100%'>
<hr style='border:1px solid red'>
<%
String name=(String)session.getAttribute("user");
String account=(String)session.getAttribute("ano");
%>
<table align='center' width="60%">
  <tr>
   <td align='center'><span class='na'>User Name:</span><span class='nav'><%=name%></span></td>
   <td align='center'><span class='na'>Account Number:</span><span class='nav' id='an'><%=account%></span></td>
  </tr>
</table>
<hr style='border:1px solid red'>
<hr style='border:2px solid blue'>
<table class='tamn' border='1'>
 <tr>
  <td align='center'><a id='home' class='mna' href='/banking-app'>Home</a></td>
  <td align='center'><a id='balance' class='mna' href='show-balance.jsp'>Show Balance</a></td>
  <td align='center'><a id='deposit' class='mna' href='deposit-money.jsp'>Deposit Money</a></td>
  <td align='center'><a id='withdraw' class='mna' href='withdraw-money.jsp'>Withdraw Money</a></td>
  <td align='center'><a id='transfer' class='mna' href='transfer-money.jsp'>Transfer Money</a></td>
  <td align='center'><a class='mna' href='#'>Change Password</a></td>
  <td align='center'><a class='mna' href='logout.jsp'>Logout</a></td>
 </tr>
</table>
<hr style='border:2px solid blue'>