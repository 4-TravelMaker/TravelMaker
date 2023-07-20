<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/myPage-secession.css">

	<!-- header -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!-- myPage-sideBar -->
    <jsp:include page="/WEB-INF/views/common/myPage-sideBar.jsp"/>
    
            <form action="#" onsubmit="return pwPrompt()">
                <section class="right-section">
                    <section class="right-section-head">회원 탈퇴<hr></section>

                    <section class="right-section-area">
                        <div>
                            <span class="sub-title">탈퇴 안내</span>
                            <br>
                            <span>회원 탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</span>
                        </div>

                        <div>
                            <span style="font-weight: bold;">- 사용하고 계신 아이디()는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</span>
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
                            <div class="pw-check-box">
                                <button class="fa-solid fa-key" style="color: #99d8c7;"></button>
                                <input type="password" id="pw-check">
                            </div>
                            <button class="pw-btn ok">확인</button>
                            <button type="button" class="pw-btn cancel">취소</button>
                        </div>
                    </section>
                </section>
            </form>
        </section>
    </main>

    <!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="${contextPath}/resources/js/myPage/myPage-secession.js"></script>
</body>
</html>