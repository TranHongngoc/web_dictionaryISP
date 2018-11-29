<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: hongngoc
  Date: 11/29/18
  Time: 9:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%
    Map<String, String> dic = new HashMap();

    dic.put("hello","xin chao");
    dic.put("duc anh","dog, thang ngu");
    dic.put("cat","meo");
    dic.put("house","ngoi nha");

    String search = request.getParameter("txtSearch");

    String result = dic.get(search);
    if (result != null){
        out.println("Word: " + search + "<br/>");
        out.println("Result: " + result);
    }else out.print("Not found");
%>
</body>
</html>
