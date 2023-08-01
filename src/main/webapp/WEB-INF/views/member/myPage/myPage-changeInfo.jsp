<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/myPage/myPage-changeInfo.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
    
	<!-- header -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!-- myPage-sideBar -->
    <jsp:include page="/WEB-INF/views/common/myPage-sideBar.jsp"/>

    <section class="right-section">
        <section class="right-section-head">회원 정보 수정<hr></section>
        <section class="right-section-area">
            <form action="changeInfo" enctype="multipart/form-data" method="POST" onsubmit="return validate()">
                <table>
                    <tr>
                        <td>비밀번호</td>
                        <td><input type="password" id="pw" name="inputPw" placeholder="비밀번호 입력(6~20글자)"></td>
                        <td id="pw-check-td"><span id="pw-check"></span></td>
                    </tr>

                    <tr>
                        <td>비밀번호 확인</td>
                        <td><input type="password" id="pw2" name="pw2" placeholder="비밀번호 확인"></td>
                    </tr>

                    <tr>
                        <td>닉네임</td>
                        <td id="nickname-td">
                            <input type="text" name="nickname" id="nickname" placeholder="닉네임 입력(한글 2~8글자)" value="${loginMember.memberNickname}"><br>
                            <span id="nickname-span">　</span>
                        </td>
                        <td><button type="button" id="nickname-check">중복 확인</button></td>
                    </tr>

                    <tr>
                        <td id="profile-td">프로필 사진</td>
                        <td id="profile-area">
                            <section id="profile">
                                <section id="image-preview">
                                    <c:if test="${empty loginMember.profileImage}">
                                        <img src="${contextPath}/resources/images/myPageProfile/profile.png" id="profile-image">
                                    </c:if>

                                    <c:if test="${!empty loginMember.profileImage}">
                                        <img src="${contextPath}${loginMember.profileImage}" id="profile-image" >
                                    </c:if>

                                    <span id="delete-image">x</span>
                                </section>
                                <div id="profile-btn">
                                    <label for="profile-upload" type="button">사진 업로드</label>
                                    <input type="file" id="profile-upload" name="profile-upload" accept="image/*">
                                </div>
                                <input type="hidden" name="delete" id="delete" value="0">
                            </section>
                        </td>
                    </tr>
                    
                    <tr>
                        <c:set var="addr" value="${fn:split(loginMember.memberAddress, ',,')}"/>
                        <td id="address-td">주소</td>
                        <td>
                            <input type="search" id="zipcode" class="address" name="address" placeholder="우편번호" readonly value="${addr[0]}">
                            <button type="button" id="address-btn">주소 검색</button><br>
                            <input type="text" id="address" class="address" name="address" placeholder="주소" readonly value="${addr[1]}"><br>
                            <input type="text" id="detail" class="address" name="address" placeholder="상세 주소" value="${addr[2]}">
                        </td>
                        <td></td>
                    </tr>

                    <tr style="margin: 20px 0;">
                        <td style="position: relative;bottom: 13px;">선호 테마</td>
                        <td>
                            <c:set var="thm" value="${loginMember.memberTheme}"/>
                            <label><input type="checkbox" name="theme" value="액티비티" <c:if test="${fn:contains(thm, '액티비티')}"> checked</c:if>>액티비티</label>
                            <label><input type="checkbox" name="theme" value="맛집" style="margin-left: 5px;" <c:if test="${fn:contains(thm, '맛집')}"> checked</c:if>/>맛집</label>
                            <label><input type="checkbox" name="theme" value="카페" style="margin-left: 35px;" <c:if test="${fn:contains(thm, '카페')}"> checked</c:if>>카페</label>
                            <label><input type="checkbox" name="theme" value="반려견동반여행" style="margin-left: 33px;" <c:if test="${fn:contains(thm, '반려견동반여행')}"> checked</c:if>>반려견 동반여행</label><br>
                            <label><input type="checkbox" name="theme" value="캠핑" <c:if test="${fn:contains(thm, '캠핑')}"> checked</c:if>>캠핑</label>
                            <label><input type="checkbox" name="theme" value="커플여행" style="margin-left: 34px;" <c:if test="${fn:contains(thm, '커플여행')}"> checked</c:if>>커플여행</label>
                            <label><input type="checkbox" name="theme" value="기차여행" style="margin-left: 5px;" <c:if test="${fn:contains(thm, '기차여행')}"> checked</c:if>>기차여행</label>
                            <label><input type="checkbox" name="theme" value="가족여행" style="margin-left: 5px;" <c:if test="${fn:contains(thm, '가족여행')}"> checked</c:if>>가족여행</label>
                        </td>
                    </tr>

                    <tr>
                        <td>비밀번호 찾기 질문</td>
                        <td>
                            <select name="pw-query">
                                <c:set var="questionCode" value="${loginMember.memberQuestionCode}"/>
                                <option value="basic">질문을 고르세요</option>
                                <option value="1" <c:if test="${fn:contains(questionCode, '1')}"> selected</c:if>>기억에 남는 추억의 장소는?</option>
                                <option value="2" <c:if test="${fn:contains(questionCode, '2')}"> selected</c:if>>자신의 인생 좌우명은?</option>
                                <option value="3" <c:if test="${fn:contains(questionCode, '3')}"> selected</c:if>>가장 기억에 남는 선생님 성함은?</option>
                                <option value="4" <c:if test="${fn:contains(questionCode, '4')}"> selected</c:if>>타인이 모르는 자신만의 신체비밀이 있다면?</option>
                                <option value="5" <c:if test="${fn:contains(questionCode, '5')}"> selected</c:if>>유년시절 가장 생각나는 친구 이름은?</option>
                                <option value="6" <c:if test="${fn:contains(questionCode, '6')}"> selected</c:if>>다시 태어나면 되고 싶은 것은?</option>
                                <option value="7" <c:if test="${fn:contains(questionCode, '7')}"> selected</c:if>>인상 깊게 읽은 책 이름은?</option>
                                <option value="8" <c:if test="${fn:contains(questionCode, '8')}"> selected</c:if>>자신의 별명이 있다면?</option>
                                <option value="9" <c:if test="${fn:contains(questionCode, '9')}"> selected</c:if>>받았던 선물 중 기억에 남는 독특한 선물은?</option>
                                <option value="10" <c:if test="${fn:contains(questionCode, '10')}"> selected</c:if>>자신의 보물 제 1호는?</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>비밀번호 찾기 답변</td>
                        <td><input type="text" name="pw-answer" value="${loginMember.memberAnswer}"></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td class="submit">
                            <button id="submit-btn">수정</button>
                            <button type="button">취소</button>
                        </td>
                    </tr>
                </table>
            </form>
        </section>
    </section>
    </main>

	<!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script>
        const contextPath = "${contextPath}";
    </script>

    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="${contextPath}/resources/js/myPage/myPage-changeInfo.js"></script>
</body>
</html>