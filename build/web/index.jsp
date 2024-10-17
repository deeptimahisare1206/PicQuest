<%-- 
    Document   : index
    Created on : Sep 30, 2024, 9:51:23 PM
    Author     : deept
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PicQuest</title>
        <link rel="icon" href="icon.png"/>
        <script src="https://cdn.tailwindcss.com"></script>

    </head>
    <body class="bg-gradient-to-tr from-indigo-800 to-indigo-700 h-screen">
        <nav class="bg-gradient-to-tr from-indigo-900 via-indigo-900 to-indigo-800 shadow-xl flex" >
        <div >
            <img src="logo1.png" width="250" alt="alt"/>
        </div>
            
            <div class="h-18 w-full grid place-items-center float-right">
                <form action="ViewImage.jsp" >
                    <input type="text" name="catg" placeholder="Search" class="bg-transparent border-b-2 border-teal-500 text-fuchsia-600 font-bold outline-none px-2">
                    <input type="submit" value="Submit" class=" bg-fuchsia-600 p-2 mx-4 border-2 border-teal-500 font-bold text-white">
                </form>
            </div>
            <a href="uploadImg.jsp"><img src="icon.png" width="90" height="" alt="alt"/></a>
    </nav>
         
        
        <article>
         
        </article>
    </body>
</html>
