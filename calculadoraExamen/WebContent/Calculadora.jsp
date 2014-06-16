<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calculadora</title>
</head>
<body>
<%String A = request.getParameter("uno");
String B = request.getParameter("dos"); 
String op =request.getParameter("operador");%>
<div id="cuerpo">
<form action="" mehotd="GET">
<div id="tuno">
<table>
<tr>
<td>
<label>A</label>
</td>
<td>
<input type="text" value="<%=(A!=null)?A:0 %>" name="uno">
</td>
</tr>
<tr> 
<td>
<label>B</label>
</td>
<td>
<input type="text" value="<%=(B!=null)?B:0 %>" name="dos">
</td>
</tr>
<table>
<tr>
<td>
<input type="submit" value="+" name="operador" />
<input type="submit" value="-" name="operador" />
<input type="submit" value="*" name="operador" />
<input type="submit" value="/" name="operador" />
</td>
</tr>
</table>
</form>
</div>
</table>
<%
try
{
if(A!=null || B!=null)
{
double n1=Double.parseDouble(A);
double n2=Double.parseDouble(B);
if(op.equals("+"))
{
double res=n1+n2;
out.print(n1+"+"+n2+"="+ res);
}
if(op.equals("-"))
{
double res=n1-n2;
out.print(n1+"-"+n2+"="+ res);
}
if(op.equals("/"))
{
if(n2!=0)
{
double res1=n1/n2;
out.print(n1+"/"+n2+"="+ res1);
}
else
{
out.print("<p><div id=\"error\"><h3>No se puede dividir en 0</h3></div></p>");
}
}
if(op.equals("*"))
{
double res=n1*n2;
out.print(n1+"*"+n2+"="+ res);
}
}
}
catch(java.lang.NumberFormatException error)
{
out.print("<p><div id=\"error\"><h3>Sólo se puede ingresar números</h3></div></p>"); 
}
%>
</body>
</html>