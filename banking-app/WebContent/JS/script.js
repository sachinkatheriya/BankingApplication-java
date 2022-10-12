function makeActive(link)
{
	document.getElementById(link).style.color="red";
}
function checkLimit(tb)
{
	if(tb.value>20000){
		document.getElementById("msg").innerHTML="Sorry !!!maximum 20000 is allowed per transaction";
		document.getElementById("wbt").disabled=true;
	}
	else{
		document.getElementById("msg").innerHTML="";
		document.getElementById("wbt").disabled=false;
	}
}
function checkAccountNo()
{
	if(document.getElementById("ran").value==document.getElementById("uan").value){
		document.getElementById("msg").innerHTML="Sorry !!!You can not transfer to yourself";
		return false;
	}
	return true;
}