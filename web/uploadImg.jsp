<%-- 
    Document   : uploadImg
    Created on : Oct 1, 2024, 11:03:50 AM
    Author     : deept
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <script src="https://cdn.tailwindcss.com"></script>

    </head>
    <body class="grid place-items-center h-screen text-teal-900 h-full box-border bg-cover bg-sky-200">
        <form action="Upload" method="post" enctype="multipart/form-data">
            <input type="text" name="cat" class=""placeholder="Category"><br><br>
            <input type="file" name="pic" class="">
            <br>
            <input type="submit" name="name" class="bg-teal-800 text-white font-bold px-3 py-3 m-6">
        </form>
    </body>
</html>
