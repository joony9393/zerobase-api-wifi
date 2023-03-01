<%--
  Created by IntelliJ IDEA.
  User: youngjoonjung
  Date: 2023/02/24
  Time: 11:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div style="margin-bottom: 1em">
    <span>
        <a href="${pageContext.request.contextPath}/index.jsp">
            홈
        </a>
    </span>
    <span class="navigation_divider">|</span>
    <span>
        <a href="${pageContext.request.contextPath}/Screen/History/history.jsp">
            위치 히스토리 목록
        </a>
    </span>
    <span class="navigation_divider">|</span>
    <span>
        <a href="${pageContext.request.contextPath}/Screen/GetWifi/get-wifi.jsp">
            Open API 와이파이 정보 가져오기
        </a>
    </span>
    <span class="navigation_divider">|</span>
    <span>
        <a href="#">
            북마크 보기
        </a>
    </span>
    <span class="navigation_divider">|</span>
    <span>
        <a href="#">
            북마크 그룹 관리
        </a>
    </span>
</div>
