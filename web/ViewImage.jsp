<%-- 
    Document   : ViewImage
    Created on : Oct 1, 2024, 10:06:20 AM
    Author     : deept
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PICQuest</title>
                <script src="https://cdn.tailwindcss.com"></script>

    </head>
    <body>
            
    <%@include file="index.jsp" %>  
                <div class="m-12 flex gap-4 flex-wrap">
        <% 
                String search =request.getParameter("catg");
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PicQuest", "root", "root");

                PreparedStatement pst = con.prepareStatement("select * from img_tab where category=(?)");
                pst.setString(1, search);
                ResultSet rs = pst.executeQuery();
                while(rs.next()) {
        %>

        <img src="pics/<%=rs.getString("image_filename")%>"  width="400px" class="shadow-xl" alt="Not Found"/>
 <%

            }
            } catch (Exception ex) {
out.print(ex.getMessage());
            }


        %>

               </div>
    </body>
</html>
