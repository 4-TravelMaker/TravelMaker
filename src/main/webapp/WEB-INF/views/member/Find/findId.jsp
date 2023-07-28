<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디찾기</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Find/findId.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
       
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section id="middle">
           <div id="middlearea1"></div>
           <div id="middlearea2">
                <!-- 중간 영역 나눔 -->
                <div id="middle1-1">
                    <div id="idtext">아이디 찾기</div>
                </div>
                    <form>
                        <div id="middle1-2">
                            <div class="findIdArea1">
                                <div id="findIdArea1Text">회원가입 시 등록한 질문에 대한 답변이 같아야, 아이디 찾기가 가능합니다.</div>
                            </div>
                            <div class="findIdArea2">
                                <div class="textArea">
                                    <div style="height: 60px;"></div>
                                    <div style="height: 30px;">
                                        <label for="nameInput">
                                            <div style="width: 50px;" class="idText2">이름</div>
                                        </label>
                                    </div>
                                    <div style="height: 30px;"></div>
                                    <div>
                                        <label for="ism-Select">
                                            <div style="width: 140px;" class="idText2">아이디 찾기 질문</div>
                                        </label>
                                    </div>
                                    <div style="height: 13px;"></div>
                                    <div>
                                        <label for="answer-Input">
                                            <div style="width: 140px;" class="idText2">아이디 찾기 답변</div>
                                        </label>
                                    </div>
                                </div>

                                
                                <div class="inputArea"> 
                                    <div style="height: 60px;"></div>
                                    <div class="inputAreaName">
                                        <input type="text" id="nameInput" name="memberName" class="inputName" autocomplete='off'>
                                    </div>
                                    <div style="height: 23px;"></div>
                                    <div style="height: 40px;">
                                        <select id="ism-Select" name="idQuestion" class="questionSelect">
                                            <option value="0" selected>질문을 고르세요</option>
                                            <option value="1">기억에 남는 추억의 장소는?</option>
                                            <option value="2">자신의 인생 좌우명은?</option>
                                            <option value="3">가장 기억에 남는 선생님 성함은?</option>
                                            <option value="4">타인이 모르는 자신만의 신체비밀이 있다면?</option>
                                            <option value="5">유년시절 가장 생각나는 친구 이름은?</option>
                                            <option value="6">다시 태어나면 되고 싶은 것은?</option>
                                            <option value="7">인상 깊게 읽은 책 이름은?</option>
                                            <option value="8">자신의 별명이 있다면?</option>
                                            <option value="9">받았던 선물 중 기억에 남는 독특한 선물은?</option>
                                            <option value="10">자신의 보물 제 1호는?</option>

                                            
                                        </select>
                                    </div>
                                    <div style="height: 40px;">
                                        <input type="text" id="answer-Input" name="answer" class="answerInput" autocomplete='off'>
                                    </div>
                                </div>
                                
                            </div>
                                
                            <div class="findIdArea3">
                                <div class="findIdButtonArea1"></div>
                                <div class="findIdButtonArea2">
                                    <div class="a">
                                        <button type="button" id="findIdButton" name="findId">아이디 찾기</button>
                                        <button type="submit" id="cancelButton" name ="cancel" onclick = "location.href = '${contextPath}'">취소</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>    
                <div id="middle1-3">
                   
                        <div style="height: 45px;"></div>
                        <div class="findIdArea4">
                            <div class="findIdText">
                                <div>회원 아이디</div>
                            </div>
                            <!-- 찾은 회원 아이디 나오게 하는 공간 -->
                            <div id="findIdTextArea">
                                <span id="spanId"></span>
                            </div>
                        </div>
                        <div class="loginArea">
                            <div class="loginArea1"></div>
                            <div class="loginArea2">
                                <button id="logindButton"  onclick = "location.href='${contextPath}/member/login'">로그인 하기</button>
                                <button id="findPwButton"  onclick = "location.href='${contextPath}/member/findPw'">비밀번호 찾기</button>
                            </div>
                        </div>
                    
                </div>
                
                
                
           </div>
           <div id="middlearea3"></div>
        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>   
    </main>

<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

<script src="${contextPath}/resources/js/Find/findId.js"></script>
</body>
</html>