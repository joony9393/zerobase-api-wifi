<%--
  Created by IntelliJ IDEA.
  User: youngjoonjung
  Date: 2023/02/24
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Controller.Wifi_History.Wifi_History_Entity" %>
<%@ page import="java.util.List" %>
<%@ page import="Controller.Wifi_History.Wifi_History_Service" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>WIFI | 기록</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Style/style.css" type="text/css" media="screen"/>
</head>
<body>
<div>
    <H1>위치 히스토리 목록</H1>
</div>
<%@ include file="../../Component/Home/navigation.jsp" %>
<%@ include file="../../Component/History/table.jsp"%>
<script type="text/javascript"><%@ include file="../../Js/history.js" %></script>
</body>
</html>

