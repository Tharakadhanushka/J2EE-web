<%-- 
    Document   : logout
    Created on : Jun 16, 2019, 11:27:16 AM
    Author     : Tharaka
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
  
   hello <%=session.getAttribute("uname")%>
                
        <form action="userlogoutservlet" method="GET">
            <input type="submit" value="logout" name="logout" />
        </form>
        
        
        last login time: <%= new Date(session.getLastAccessedTime())%>
    
</html>
