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

            <section class="weather-area">
                <div id="ww_0e385ca888432" v='1.3' loc='id' a='{"t":"horizontal","lang":"ko","sl_lpl":1,"ids":[],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF00","cl_font":"rgba(172,172,172,1)","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722","el_phw":3,"el_whr":3}'>Weather Data Source: <a href="https://wetterlang.de/seoul_wetter_30_tage/" id="ww_0e385ca888432_u" target="_blank">Wetter 30 tage Seoul</a></div><script async src="https://app2.weatherwidget.org/js/?id=ww_0e385ca888432"></script>
            </section>

            <section id="search-area">
                <fieldset>
                    <section>
                        <input type="search" id="query" name="query" autocomplete="off" onkeydown="characterCheck(this)">
                        <button type="button" id="search-btn" class="fa-solid fa-magnifying-glass" onclick="header.search();" ></button>
                    </section>
                </fieldset>
            </section>
            <section></section>
            
        
            <c:choose>
                <c:when test="${empty sessionScope.loginMember}">
                    <section class="login-area2">
                        <a href="${contextPath}/member/login">
                            <button class="btn-style">
                                로그인
                            </button>
                        </a>
                        <a href="${contextPath}/member/signUp">
                            <button class="btn-style">
                                회원가입
                            </button>
                        </a>
                    </section>
                </c:when>

                <c:otherwise>
                    <section class="login-area">
                    
                    <!-- 여기 부분에 이프문 작성 -->
                    <!-- 프로필 이미지가 없을 경우 -->
                        <div class="loginArea5">
                            <c:if test="${empty loginMember.profileImage}">
                                <a href="${contextPath}/myPage/changeInfo">
                                    <img src="${contextPath}/resources/images/Admin/admin-profile.jpg">
                                </a>
                            </c:if>

                            <!-- 프로필 이미지가 있을 경우 -->
                            <c:if test="${!empty loginMember.profileImage}">
                                <a href="${contextPath}/myPage/changeInfo">
                                    <img src="${contextPath}${loginMember.profileImage}">
                                </a>
                            </c:if>
                            <span id="nickname-member">${loginMember.memberNickname} 님, 환영합니다!</span>

                            <!-- 관리자 계정이 아닐 경우 로그아웃 버튼 활성화 -->
                            <c:if test="${loginMember.adminFlag != 'Y'}">
                                <a href="${contextPath}/memeber/logout">   
                                    <button class="logout-btn">                    
                                        로그아웃
                                    </button>
                                </a> 
                            </c:if>
                            
                            <!-- 관리자 계정일 경우 로그아웃, 관리자 페이지 버튼 활성화-->
                            <div class="logout-admin-btn-area">
                                <c:if test="${loginMember.adminFlag == 'Y'}">
                                    <a href="${contextPath}/memeber/logout">
                                        <button class="logout-btn">                    
                                            로그아웃
                                        </button>
                                    </a>
                                    <a href="${contextPath}/admin/selectAll">
                                        <button class="admin-btn">
                                            관리자<br>페이지
                                        </button>
                                    </a>
                                </c:if>
                            </div>

                        </div>
                    </section>
                </c:otherwise>
            </c:choose>
       
    </section>
    </header>

    <nav>
        <section id="nav">
            <a href="${contextPath}/Region/main">
                <section class="nav-menu">
                    지역
                </section>
            </a>
            <a href="${contextPath}/theme/list?type=2">
                <section class="nav-menu">
                    테마
                </section>
            </a>
            <a href="${contextPath}/planList">
                <section class="nav-menu">
                    여행 계획하기
                </section>
            </a>
            <a href="${contextPath}/travelReview/list?type=4&cp=1">
                <section class="nav-menu">
                    여행 리뷰
                </section>
            </a>
            <a href="${contextPath}/boardNotice/list?type=5&cp=1">
                <section class="nav-menu">
                    공지사항
                </section>
            </a>
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
         
         location.href="${contextPath}/board/searchList?searchParam="+ searchParam;

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
	
	
   