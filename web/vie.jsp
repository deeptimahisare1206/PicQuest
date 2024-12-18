<%-- 
    Document   : vie
    Created on : Dec 17, 2024, 11:50:54 PM
    Author     : deept
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="https://cdn.tailwindcss.com"></script>

    </head>
    <body>
            
    <%@include file="index.jsp" %>  
                <div class="m-12 flex gap-4 flex-wrap">
        <% 
            try {
            
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PicQuest", "root", "root");

                PreparedStatement pst = con.prepareStatement("select * from imgs");
                ResultSet rs = pst.executeQuery();
                while(rs.next()) {
                byte barry[] = rs.getBytes("pics");
//                response.setContentType("image/png");
//                OutputStream imge = response.getOutputStream();
//                imge.write(barry);
//                imge.flush();
//                imge.close();
                  String base64Image = java.util.Base64.getEncoder().encodeToString(barry);
           
                
        %>
                        <img src="data:image/png;base64,<%= base64Image %>" width="400px" class="shadow-xl" alt="Image Not Found"/>
            
        <!--<img src="<%=rs.getString("pics")%>"  width="400px" class="shadow-xl" alt="Not Found"/>-->
 <%

            }
            } catch (Exception ex) {
out.print(ex.getMessage());
            }


        %>

               </div>
    </body>
</html>

