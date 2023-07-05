<%-- 
    Document   : deleteDoctor.jsp
    Created on : Jun 27, 2023, 6:23:06 PM
    Author     : Asus
--%>

<%@page import="java.sql.*" %>

<%
    String id = request.getParameter("id");
    
    try {
    
     String URLdb = "jdbc:mysql://localhost/hospitalxxiv";
     String usernameDB = "root";
     String passwordDB = "";
     Class.forName("com.mysql.jdbc.Driver");
     Connection connection = DriverManager.getConnection(URLdb, usernameDB, passwordDB);
     Statement statement = connection.createStatement();
     
     String query = "DELETE FROM dokter WHERE id=" + id;
     statement.executeUpdate(query);
     response.sendRedirect("readDoctors.jsp");
     
    } catch (Exception e) {
     response.sendRedirect("readDoctors.jsp");
    }
%>
