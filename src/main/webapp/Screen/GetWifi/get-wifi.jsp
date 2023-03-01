<%--
  Created by IntelliJ IDEA.
  User: youngjoonjung
  Date: 2023/02/24
  Time: 11:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Controller.Wifi.Wifi_Service" %>
<%@ page import="Controller.Api_Service" %>
<%@ page import="Controller.SQL_Connection" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../Style/style.css" type="text/css" media="screen" />
    <title>WIFI | 가져오기</title>
</head>
<body>
<div style="display: flex; justify-content: center; align-items: center; flex-direction: column">
    <%
        Class.forName("org.sqlite.JDBC");
        Wifi_Service w = new Wifi_Service();
        w.createWifi();
        out.write("<h1>"+ Api_Service.totalPage+" 개 의 정보를 정상적으로 저장 하였습니다." +"</h1>");
    %>
    <div>
        <a href="../../index.jsp"> 🏠 으로가기</a>
    </div>
</div>
</body>
</html>
