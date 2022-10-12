<link href='CSS/style.css' rel='stylesheet'>
<img src="images/bank.jpg" height="29%" width="100%">
<hr style='border:2px solid red'>
<form action="authentication.jsp" method='post'>
  <table class='login'>
    <tr>
      <td colspan="2">
        <div align="center" style="height:32px;font-size:22px;color:White;background-color:#0000FF">User Login Form</div>
      </td>
    </tr>
    <tr>
     <td class='logintd'>Enter User Id</td>
     <td  class='logintd'>
       <input type='text' id='uid' name='uid' class='tb' required><br>
     </td>
    </tr>
    <tr>
     <td  class='logintd'>Enter  Password</td>
     <td  class='logintd'>
     	<input type='text' id='pass' name='pass' class='tb' required><br>
     </td>
    </tr> 
    <tr>
     <td class='logintd' colspan="2" align="right">
      <button class='bt'>Login</button>
     </td>
    </tr>  
  </table>
</form>