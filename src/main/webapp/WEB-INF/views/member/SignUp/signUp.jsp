<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/SignUp/SignUp.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>

</head>
<body>
    <main>

	<jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section id="middle">
            

            <section class="right-section">
                <section class="right-section-head">회원가입<hr></section>
                <section class="right-section-area">
                    <form action="signUp" method="POST"  onsubmit="return validate()" enctype="multipart/form-data">
                        <table>

                            
                                
                            <tr>
                                <td><label for="id">아이디</label></td>
                                <td><input type="text" id="id" name="id" placeholder="아이디 입력(소문자영어&숫자6~20글자)" autocomplete='off'></td>
                                <td><button type="button" id="id-check" name="idDubcheck" >중복확인</button></td>
                            </tr>
                          


                            <tr class="idcheck">
                                <td></td>
                                <td><span class="idcheckArea"></span></td>
                                <td></td>
                            </tr>

                            <tr>
                                <td><label for="memberName">이름</label></td>
                                <td><input type="text" id="memberName" name="memberName" placeholder="이름입력(한글2~6글자)" autocomplete='off'></td>

                            </tr>

                            <tr class="idcheck">
                                <td></td>
                                <td><span class="nameText"></span></td>
                                <td></td>

                            </tr>

                            

                            <tr>
                                <td><label for="pw">비밀번호</label></td>
                                <td><input type="password" id="pw" name="pw" placeholder="비밀번호 입력(6~20글자)"></td>
                                
                            </tr>

                            <tr>
                                <td><label for="pw2">비밀번호 확인</label></td>
                                <td><input type="password" id="pw2" name="pw2" placeholder="비밀번호 확인"></td>
                            </tr>

                            <tr class="idcheck">
                                <td></td>
                                <td><span id="pwcheckarea"></span></td>
                            </tr>

                            <tr>
                                <td><label for="nickname">닉네임</label></td>
                                <td id="nickname-td">
                                    <input type="text" name="memberNickname" id="nickname" placeholder="닉네임 입력(한글 2~8글자)" autocomplete='off'><br>
                                    <span id="nickname-span">　</span>
                                </td>
                                <td><button type="button" id="nickname-check">중복 확인</button></td>
                            </tr>

                            <tr>
                                <td id="profile-td"><label for="profile-btn">프로필 사진</label></td>
                                <td id="profile-area">
                                    <section id="profile" style="margin-right: 35px;">
                                        <section id="image-preview">
                                            <img src="${contextPath}/resources/images/profile.png" id="basic-profile">
                                        </section>
                                        <input id="real-upload" type="file" onchange="loadFile(this)" name="profile" accept="image/jpg, image/jpeg, image/png" />
                                        <button type="button" id="profile-btn">사진 업로드</button>
                                    </section>
                                </td>
                            </tr>

                            <tr>
                                <td id="address-td"><label for="address-btn">주소</label></td>
                                <td>
                                    <input type="search" class="address" name="address" id="zipcode" placeholder="우편번호" readonly>
                                    <button type="button" id="address-btn">주소 검색</button><br>
                                    <input type="text" class="address" name="address"  id="address" placeholder="주소" readonly><br>
                                    <input type="text" class="address" name="address" placeholder="상세 주소" autocomplete='off'>
                                    
                                </td>
                                <td></td>
                            </tr>

                            <tr>
                                <td style="position: relative;bottom: 13px;">선호 테마</td>
                                <td style="padding: 20px 0;">
                                    <label><input type="checkbox" name="theme" value="액티비티">액티비티</label>
                                    <label><input type="checkbox" name="theme" value="맛집">맛집</label>
                                    <label><input type="checkbox" name="theme" value="카페">가족여행</label>
                                    <label><input type="checkbox" name="theme" value="반려견동반여행">반려견 동반여행</label><br>
                                    <label><input type="checkbox" name="theme" value="캠핑">커플여행</label>
                                    <label><input type="checkbox" name="theme" value="커플여행">캠핑</label>
                                    <label><input type="checkbox" name="theme" value="기차여행">기차여행</label>
                                    <label><input type="checkbox" name="theme" value="가족여행">카페</label>
                                </td>
                            </tr>

                            <tr>
                                <td><label for="pwQuestion">비밀번호 찾기 질문</label></td>
                                <td>
                                    <select name="pw-question" id="pwQuestion">
                                        <option value="basic" selected>질문을 고르세요</option>
                                        <option value="1">기억에 남는 추억의 장소는?</option>
                                        <option value="2">자신의 인생 좌우명은?</option>
                                        <option value="3">가장 기억에 남는 선생님 성함은?</option>
                                        <option value="4">타인은 모르는 자신만의 신체비밀이 있다면?</option>
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
                                <td><label for="pwAnswer">비밀번호 찾기 답변</label></td>
                                <td><input type="text" name="pw-answer" id="pwAnswer" autocomplete='off'></td>
                            </tr>

                            <tr>
                                <td></td>
                                <td class="submit">
                                    <button id="submit-btn" type="submit">회원가입</button>
                                    
                                </td>
                            </tr>
                        </table>
                    </form>
                </section>
            </section>
        </section>

     
     
      		<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>

	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    
    <script src="${contextPath}/resources/js/SignUp/SignUp.js"></script>
   


    
</body>
</html>