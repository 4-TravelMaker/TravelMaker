<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/myPage-changeInfo.css">

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
                                            <img src="${contextPath}/resources/images/profile.png" id="basic-profile">
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
                                    <input type="checkbox" name="theme" value="theme1"><label>테마1</label>
                                    <input type="checkbox" name="theme" value="theme2"><label>테마2</label>
                                    <input type="checkbox" name="theme" value="theme3"><label>테마3</label>
                                    <input type="checkbox" name="theme" value="theme4"><label>테마4</label><br>
                                    <input type="checkbox" name="theme" value="theme5"><label>테마5</label>
                                    <input type="checkbox" name="theme" value="theme6"><label>테마6</label>
                                    <input type="checkbox" name="theme" value="theme7"><label>테마7</label>
                                    <input type="checkbox" name="theme" value="theme8"><label>테마8</label>
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