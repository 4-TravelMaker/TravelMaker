<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css"> -->
<link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <header>
        <section class="head">
            <section id="logo">
                <a href="${contextPath}">
                    <img src="${contextPath}/resources/images/logo.png" width="100%">
                </a>
            </section>

            <section></section>

            <section id="search-area">
                <!-- <div class="weather-area">
                    현재 날씨는?
                </div> -->
                    <fieldset>
                        <section>
                            <input type="search" id="query" name="query" autocomplete="off" onkeydown="characterCheck(this)">
                            <button type="button" id="search-btn" class="fa-solid fa-magnifying-glass" onclick="header.search();" ></button>
                        </section>
                    </fieldset>
            </section>
            <section></section>
            
        
        <!-- <section class="ass"> -->
            <c:choose>
                <c:when test="${empty sessionScope.loginMember}">
                    <section class="login-area2">
                        <button class="btn-style">
                            <a href="${contextPath}/member/login">로그인</a>
                        </button>
                        <button class="btn-style">
                            <a href="${contextPath}/member/signUp">회원가입</a>
                        </button>
                    </section>
                </c:when>
                <c:otherwise>
                    <section class="login-area">
                    
                    <!-- 여기 부분에 이프문 작성 -->
                    <!-- 프로필 이미지가 없을 경우 -->
                        <div class="loginArea5">
                            <c:if test="${empty loginMember.profileImage}">
                                <a href="${contextPath}/member/myPage/changeInfo">
                                    <img src="${contextPath}/resources/images/Admin/admin-profile.jpg">
                                </a>
                            </c:if>

                            <!-- 프로필 이미지가 있을 경우 -->
                            <c:if test="${!empty loginMember.profileImage}">
                                <a href="${contextPath}/member/myPage/changeInfo"><img src="${contextPath}${loginMember.profileImage}">
                                </a>
                            </c:if>
                            <span id="nickname-member">${loginMember.memberNickname} 님, 환영합니다!</span>
                            <c:if test="${loginMember.adminFlag != 'Y'}">
                                <button class="logout-btn-style">                    
                                    <a href="${contextPath}/memeber/logout">로그아웃</a>
                                </button>
                            </c:if>

                            <div class="logout-admin-btn-area">
                                <c:if test="${loginMember.adminFlag == 'Y'}">
                                    <button class="logout-btn">                    
                                        <a href="${contextPath}/memeber/logout">로그아웃</a>
                                    </button>
                                    <button class="admin-btn">
                                        <a href="${contextPath}/admin/selectAll">관리자<br>페이지</a>
                                    </button>
                                </c:if>
                            </div>

                        </div>
                    </section>
                </c:otherwise>
            </c:choose>
        <!-- </section> -->
       
    </section>
    </header>

    <nav>
        <section id="nav">
            <section class="nav-menu">
                <a href="${contextPath}/Region/main">지역</a>
            </section>
            <section class="nav-menu">
                <a href="${contextPath}/theme/list?type=2">테마</a>
            </section>
            <section class="nav-menu">
                <a href="#">여행 계획하기</a>
            </section>
            <section class="nav-menu">
                <a href="${contextPath}/travelReview/list?type=4&cp=1">여행 리뷰</a>
            </section>
            <section class="nav-menu">
                <a href="${contextPath}/boardNotice/list?type=5">공지사항</a>
            </section>
        </section>
    </nav>
    
    
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	
	<script>

    /* 특수문자  검색 막는 함수 */

    function characterCheck(obj){
    var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+┼<>@\#$%&\'\"\\\(\=]/gi; 
   
    if( regExp.test(obj.value) ){
        alert("특수문자는 입력하실수 없습니다.");
        obj.value = obj.value.substring( 0 , obj.value.length - 2 );
        return;
        }
    }


    // 검색 값 던져주는 함수

     const input = document.getElementById("query");

	 var header = {};
     header.search = function(){
     var searchParam =  $("#query").val();

     if(searchParam.trim().length == 0 ){

        alert("검색어를 입력해주세요")
        input.focus();
        return;

     } else{
         
         location.href="${contextPath}/searchList?searchParam="+ searchParam;

     }
    
   
     }

     // 엔터 검색 가능 함수

     $(function(){
        
        $("#query").keypress(function(e){
		if(e.keyCode == 13){
			$("#search-btn").trigger("click");
			return false;
		}
        
		//엔터키 막기
		if(e.keyCode && e.keyCode == 13){
			  e.preventDefault();	
		}
	}); 

     })

	</script>
	
	
   