<%@ page import="java.net.URL,javax.xml.namespace.QName,javax.xml.ws.Service, org .apache.geronimo.samples.jws.Calculator"%> 
<html xmlns="http:///www.w3.org/1999/xhtml" xml:lang="en"> 
<head> <title>Calculator</title> 
</head> 
<body> 
<form action="result.jsp"> Please enter 2 whole numbers to add: 
<input type="text" name="value1"> + <input type="text" name="value2"> 
<input type="submit" value="="> 
</form> 
</body> 
</html>
result.jsp
<%@ page import="java.net.URL,javax.xml.namespace.QName,javax.xml.ws.Service,org .apache.geronimo.samples.jws.Calculator"%> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"> 
<head>
<meta charset="UTF-8">
<title>Calculator Result</title> 
</head>
<body>
<% 
int value1 = 0; 
int value2 = 0; 
int sum = 0; 
try { 
	System.out.println( request.getParameter( "value1" ) + " " + request.getParameter( "value2" ) ); 
	value1 = Integer.parseInt( request.getParameter( "value1" ) ); 
	value2 = Integer.parseInt( request.getParameter( "value2" ) ); 
	URL url = new URL("http://localhost:8080/jaxws-calculator- 1.0/calculator?wsdl"); 
	QName qname = new QName("http://jws.samples.geronimo.apache.org", "Calculator"); 
	Service service = Service.create(url, qname); 
	Calculator calc = (Calculator)service.getPort(Calculator.class); 
	sum = calc.add(value1, value2); 
	} catch ( Exception e ) { 
		e.printStackTrace(); 
		} 
	%> The result is: <%=value1%>+<%=value2%>=<%=sum%> <br> 
	<a href="index.jsp">Back</a> 
</body>
</html>
