<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Login/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
       
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>


        <section id="middle">
 
        <div id="middle1"></div>
        <div id="middle2">
            <div id="loginWriter">
                <div id="loginWriterArea1"></div>
                <div id="loginWriterArea2">
                    <h1 id="loginText">로그인</h1>
                </div>
            </div>
            <div id="loginInputArea">
                <form action="${contextPath}/member/login" method="post" name="login-form" onsubmit="return validate()">
                    
                    <div id="InputArea1">
                        <div id="inputArea1-1">
                            <label for="idInput"><img src="${contextPath}/resources/images/Login/loginmark.png" id="image"></label>
                            <div id="idArea">
                                <input type="text" id="idInput" name="inputId" placeholder="아이디" autocomplete="off" value="${cookie.saveId.value}">
                            </div>
                            <label for="pwInput"><img src="${contextPath}/resources/images/Login/passward.png" id="image"></label>
                            <div id="pwArea">
                                <input type="password" id="pwInput" name="inputPw" placeholder="비밀번호">
                            </div>
                        </div>
                    
                        <div id="inputArea1-2">
                            <button type="submit" id="loginbutton" >로그인</button>
                        </div>
                    
                    </div>
                        <div id="InputArea2">
                            <div id="loginArea">
                                <div id="loginArea1"></div>
                                <div id="loginArea2">
                                    <a href="${contextPath}/member/signUp">회원가입</a>
                                    <span>|</span>
                                    <a href="${contextPath}/member/findId">아이디찾기</a>
                                    <span>|</span>
                                    <a href="${contextPath}/member/findPw">비밀번호찾기</a>
                                </div>
                                <div id="loginArea3"></div>
                            </div>
                
                        </div>
                    <div id="InputArea3" style="margin-top: 2px; margin-left: 18px;"  >
                        
                        <c:if test="${!empty cookie.saveId.value}">
                            <c:set var="chk" value="checked"/>
                        </c:if>
                        
                        <label for="checkId">
                            <input type="checkbox" id="checkId" name="saveId" ${chk}>아이디 저장
                        </label>
                    </div>
                </form>
            </div>
            <div id="ioginArea"></div>
        </div>
        <div id="middle3"></div>

        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
       
    </main>


    
      

    <!-- <script src="${contextPath}/resources/js/Login/login.js"></script> -->


</body>
</html>