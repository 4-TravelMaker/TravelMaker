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
    <link rel="stylesheet" href="${contextPath}/resources/css/myPage/myPage-changeInfo.css?after">
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
                    <form action="#" onsubmit="return validate()">
                        <table>
                            <tr>
                                <td>비밀번호</td>
                                <td><input type="password" id="pw" name="pw" placeholder="비밀번호 입력(6~20글자)"></td>
                                <td id="pw-check-td"><span id="pw-check"></span></td>
                            </tr>

                            <tr>
                                <td>비밀번호 확인</td>
                                <td><input type="password" id="pw2" name="pw2" placeholder="비밀번호 확인"></td>
                            </tr>

                            <tr>
                                <td>닉네임</td>
                                <td id="nickname-td">
                                    <input type="text" name="nickname" id="nickname" placeholder="닉네임 입력(한글 2~8글자)"><br>
                                    <span id="nickname-span">　</span>
                                </td>
                                <td><button type="button" id="nickname-check">중복 확인</button></td>
                            </tr>

                            <tr>
                                <td id="profile-td">프로필 사진</td>
                                <td id="profile-area">
                                    <section id="profile">
                                        <section id="image-preview">
                                            <img src="${contextPath}/resources/images/myPage/profile.png?after" id="basic-profile">
                                        </section>
                                        <input id="real-upload" type="file" onchange="loadFile(this)" name="profile" accept="image/jpg, image/jpeg, image/png" />
                                        <button type="button" id="profile-btn">사진 업로드</button>
                                    </section>
                                </td>
                            </tr>

                            <tr>
                                <td id="address-td">주소</td>
                                <td>
                                    <input type="search" class="address" name="zipcode" placeholder="우편번호" readonly>
                                    <button type="button" id="address-btn">주소 검색</button><br>
                                    <input type="text" class="address" name="address" placeholder="주소" readonly><br>
                                    <input type="text" class="address" name="detail" placeholder="상세 주소">
                                </td>
                                <td></td>
                            </tr>

                            <tr>
                                <td style="position: relative;bottom: 13px;">선호 테마</td>
                                <td style="padding: 20px 0;">
                                    <label><input type="checkbox" name="theme" value="액티비티">액티비티</label>
                                    <label><input type="checkbox" name="theme" value="맛집">맛집</label>
                                    <label><input type="checkbox" name="theme" value="카페">카페</label>
                                    <label><input type="checkbox" name="theme" value="반려견동반여행">반려견 동반여행</label><br>
                                    <label><input type="checkbox" name="theme" value="캠핑">캠핑</label>
                                    <label><input type="checkbox" name="theme" value="커플여행">커플여행</label>
                                    <label><input type="checkbox" name="theme" value="기차여행">기차여행</label>
                                    <label><input type="checkbox" name="theme" value="가족여행">가족여행</label>
                                </td>
                            </tr>

                            <tr>
                                <td>비밀번호 찾기 질문</td>
                                <td>
                                    <select name="pw-query">
                                        <option value="basic" selected>질문을 고르세요</option>
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
                            </td>
                            </tr>

                            <tr>
                                <td>비밀번호 찾기 답변</td>
                                <td><input type="text" name="pw-answer"></td>
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
        </section>
    </main>

	<!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="${contextPath}/resources/js/myPage/myPage-changeInfo.js"></script>
</body>
</html>