<%--
  Created by IntelliJ IDEA.
  User: youngjoonjung
  Date: 2023/02/24
  Time: 11:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Controller.Wifi_History.Wifi_History_Service" %>
<%@ page import="Controller.Wifi_History.Wifi_History_Entity" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table>
    <tr>
        <th>ID</th>
        <th>X 좌표</th>
        <th>Y 좌표</th>
        <th>작업일자</th>
        <th>비고</th>
    </tr>
    <%
        Class.forName("org.sqlite.JDBC");
        Wifi_History_Service w = new Wifi_History_Service();
        String id = request.getParameter("id");
        if(id != null){
            w.deleteHistory(id);
        }

        List<Wifi_History_Entity> list = w.getHistory();
        for(Wifi_History_Entity x : list){
            out.write("<tr>");
            out.write("<td>"+x.getId()+"</td>");
            out.write("<td>"+x.getLAT()+"</td>");
            out.write("<td>"+x.getLNT()+"</td>");
            out.write("<td>"+x.getDATE()+"</td>");
            out.write("<td>");
            out.write("<button id="+ x.getId()+" class=btn_history_delete>"+"히스토리 삭제"+"</button>");
            out.write("</td>");
            out.write("</tr>");
        }

    %>
</table>