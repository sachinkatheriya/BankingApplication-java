<%@ include file="menu.jsp" %>
<body onload="makeActive('withdraw')">
<form action="withdraw.jsp">
 <table class='ta'>
   <tr>
     <td class='la td'>Enter amount:</td>
     <td class='td'><input type='text' class='tb' name='amount' required></td>
     <td class='td'><button class='bt'>Withdraw Money</button></td>
   </tr>
</table>
</form>
</body>