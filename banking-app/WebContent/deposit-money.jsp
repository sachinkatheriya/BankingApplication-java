<%@ include file="menu.jsp" %>
<body onload="makeActive('deposit')">
<form action="deposit.jsp">
 <table class='ta'>
   <tr>
     <td class='la td'>Enter amount to be deposited:</td>
     <td class='td'><input type='text' class='tb' name='amount' required></td>
     <td class='td'><button class='bt'>Deposit Money</button></td>
   </tr>
</table>
</form>
</body>