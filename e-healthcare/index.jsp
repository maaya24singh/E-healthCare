<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.musk.web.modal.Data" %>
<%@page import="com.musk.web.dao.DataDao" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <%
          Data d1 = (Data)session.getAttribute("data");
          out.println(d1.getFrst_name());
      %>
      welcome ..... 
</body>
</html>