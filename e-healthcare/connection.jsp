<%@ page import="java.sql.*"%>
<%
String firstname = request.getParameter("first_name");
String lastname = request.getParameter("last_name");
String date = request.getParameter("date");
String gender = request.getParameter("gender");
String adhaar = request.getParameter("adhaar_number");
String email = request.getParameter("email");
String pasword = request.getParameter("password");
String re_pasword = request.getParameter("re_password");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare","root","4444");
	Statement st=con.createStatement();
	st.executeUpdate("insert into register(Adhaar_No, frst_name, last_name, birthdate, gender, email, paswrd) values('"+adhaar+"','"+firstname+"','"+lastname+"','"+date+"','"+gender+"','"+email+"','"+pasword+"')");
	con.close();
}
catch(Exception e){
	
	out.println(e);
}


%>
