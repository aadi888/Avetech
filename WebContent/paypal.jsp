<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Pay through PayPal: http://www.TestAccount.com</title>
</head>
<body onload="document.forms['paypalForm'].submit();">
<form name="paypalForm" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
 <input type="hidden" name="cmd" value="_xclick" />
 <input type="hidden" name="business" value="adish888@gmail.com" />
 <input type="hidden" name="password" value="GNG4LCX4FJKTC7DN" />
 <input type="hidden" name="custom" value="1123" />
 <input type="hidden" name="item_name" value="Computer-Laptop" />
 <input type="hidden" name="amount" value="30"/>
 <input type="hidden" name="rm" value="1" />
 <input type="hidden" name="return" value="http://localhost:8080/AvenueTech/paypalResponse.jsp" />
 <input type="hidden" name="cancel_return" value="http://localhost:8080/AvenueTech/paypalResponseCancel.jsp" />
 <input type="hidden" name="cert_id" value="An5ns1Kso7MWUdW4ErQKJJJ4qi4-A--Yl5iySqrVV3GXrberCQDwwylc" />
</form>
</body>
</html>