<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- JSTL은 사용되는 JSP 파일마다 작성되어야 한다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<footer>
    <section>Copyright © TravelMaker Corp. All rights reserved.</section>
    <section class="footer"> 　　이용약관　　 </section>
    <section class="footer"> 　　운영정책　　 </section>
    <section class="footer"> 　　1:1문의　　 </section>
</footer>
        
<%-- session에 message 속성이 존재하는 경우 alert창으로 해당 내용을 출력 --%>

<c:if test="${ !empty sessionScope.message }">

    <script>
        alert("${message}");

        // EL 작성 시 scope를 지정하지 않으면
        // page -> request -> session -> application 순서로 검색하여
        // 일치하는 속성이 있으면 출력
    </script>

    <%-- message 1회 출력 후 session에서 제거 --%>
    <c:remove var="message" scope="session"/>

</c:if>