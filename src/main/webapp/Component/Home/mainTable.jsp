<%--
  Created by IntelliJ IDEA.
  User: youngjoonjung
  Date: 2023/02/24
  Time: 11:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Controller.Wifi.Wifi_Source" %>
<%@ page import="java.util.List" %>
<%@ page import="Controller.Wifi_History.Wifi_History_Service" %>
<%@ page import="Controller.SQL_Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div style="border: 1px solid black">
    <table>
        <tr>
            <th>거리(Km)</th>
            <th>관리번호</th>
            <th>자치구</th>
            <th>와이파이명</th>
            <th>도로명주소</th>
            <th>상세주소</th>
            <th>설치위치(층)</th>
            <th>설치유형</th>
            <th>설치기관</th>
            <th>서비스구분</th>
            <th>망종류</th>
            <th>설치년도</th>
            <th>실내외구분</th>
            <th>WIFI접속환경</th>
            <th>X좌표</th>
            <th>Y좌표</th>
            <th>작업일자</th>
        </tr>
        <%
            String lat = request.getParameter("lat");
            String lng = request.getParameter("lng");
            if(lat != null && lng != null){
                Class.forName("org.sqlite.JDBC");
                Wifi_Service w = new Wifi_Service();
                List<Wifi_Source> list =w.getNearBy(Double.parseDouble(lat),Double.parseDouble(lng));
                for(Wifi_Source x : list){
                    out.write("<tr>");
                    out.write("<td>"+x.getDistance()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_MGR_NO()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_WRDOFC()+"</td>");
                    out.write("<td><a href=\"./Screen/Detail/wifi-detail.jsp\" class=wifi_name>"+x.getX_SWIFI_MAIN_NM()+"</a></td>");
                    out.write("<td>"+x.getX_SWIFI_ADRES1()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_ADRES2()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_INSTL_FLOOR()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_INSTL_TY()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_INSTL_MBY()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_SVC_SE()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_CMCWR()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_CNSTC_YEAR()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_INOUT_DOOR()+"</td>");
                    out.write("<td>"+x.getX_SWIFI_REMARS3()+"</td>");
                    out.write("<td>"+x.getLAT()+"</td>");
                    out.write("<td>"+x.getLNT()+"</td>");
                    out.write("<td>"+x.getWORK_DTTM()+"</td>");
                    out.write("</tr>");
                }
                w.createHistory(Double.parseDouble(lat),Double.parseDouble(lng));
            }
        %>
    </table>
    <%
        if(lat == null || lng == null){
            out.write("<h4 class="+"info_home"+">"+ "위치 정보를 입력한 후에 조회해 주세요."+"</h4>");
        }
    %>
</div>

