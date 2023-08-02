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
    <link rel="stylesheet" href="${contextPath}/resources/css/myPage/myPage-secession.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>

        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        <jsp:include page="/WEB-INF/views/common/myPage-sideBar.jsp"/>
    
        <section class="right-section">
            <section class="right-section-head">회원 탈퇴<hr></section>
        
            <section class="right-section-area">
                <div>
                    <span class="sub-title">탈퇴 안내</span>
                    <br>
                    <span>회원 탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</span>
                </div>
                        
                <div>
                    <span style="font-weight: bold;">- 사용하고 계신 아이디( ${loginMember.memberNickname} )는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</span>
                    <br><br>
                    <span>탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가능하오니 신중하게 선택하시기 바랍니다.</span>
                    <br><br><br>
                    <span style="font-weight: bold;">- 탈퇴 후 회원정보 및 개인형 서비스 이용 기록은 모두 삭제됩니다.</span>
                    <br><br>
                    <span>회원 정보 및 나만의 여행 계획 등 개인형 서비스 이용 기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.</span>
                    <br>
                    <span>삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업해주세요.</span>
                    <br><br><br>
                </div>
                
                <div>
                    <input type="checkbox" name="check" id="check">
                    <span>탈퇴 전 안내사항을 모두 확인했습니다.</span>
                </div>
                
                <button type="button" id="secession-btn">회원 탈퇴</button>
                
                <div class="pw-prompt">
                    <label>비밀번호를 입력해주세요.</label>

                    <form action="secession" method="POST" onsubmit="return pwPrompt()">
                        <div class="pw-check-box">
                            <i class="fa-solid fa-key" style="color: #99d8c7;"></i>
                            <input type="password" id="pw-check" name="inputPw">
                        </div>
                        <button class="pw-btn ok">확인</button>
                        <button type="button" class="pw-btn cancel">취소</button>
                    </form>
                </div>
            </section>
        </section>
    </main>

    <!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

    <script>

        const contextPath = "${contextPath}";

        const loginMemberNo = "${loginMember.memberNo}";

    </script>

    <script src="${contextPath}/resources/js/myPage/myPage-secession.js"></script>
</body>
</html>