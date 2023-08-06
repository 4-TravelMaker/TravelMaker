<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="boardName" value="${map.boardName}" />
<c:set var="pagination" value="${map.pagination}" />
<c:set var="boardList" value="${map.boardList}" />
<c:set var="imageList" value="${map.imageList}" />
<c:set var="boardLikeList" value="${map.boardLikeList}" />
<c:set var="replyCountList" value="${map.replyCountList}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>"${param.searchParam}" 검색 결과</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Search/search.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section id="middle">

           <br>
           
           <section class="searchResultArea">

              
                <section class="serchResult">"${param.searchParam}" 검색 결과</section>
           		<input type="hidden" id="hiddenSerchResult" value="${param.searchParam}">
           </section>

           <section style="height: 15px;"></section>

           <section class="selectArea">

                <button id="allbutton" onclick="search.TravelInfo(this);">전체</button>
                <span>|</span>
                <button id="travelInfoButton" onclick="search.TravelInfo(this);">여행정보</button>  
                <span>|</span>
                <button id="travelReviewButton" onclick="search.TravelInfo(this);">여행 리뷰 게시판</button>
                
           </section>

           <section style="height: 11px;"></section>

           <section class="allList"><strong>총<span>${pagination.listCount}</span>건</strong></section>

           <section class="resultArea">

                
                <c:choose>

                    <c:when test="${empty boardList}">


                        <h1 class="notFindText">검색 결과가 없습니다</h1>



                    </c:when>

                    <c:otherwise>

                        <c:forEach var="board" items="${boardList}">
                        
                        	
                        
                            <li style="height: 150px; list-style: none;" class="searchLists" >
                                <section style="float: left;" class="imgSection">


                                  <c:if test= "${board.boardCode == 1}">
                                    <a href="${contextPath}/Region/regionDetail?ctgr=${board.boardCategory}&board=${board.boardNo}">

                                        <c:if test="${empty board.boardImage}">
                                            <img src="${contextPath}/resources/images/logo.png">
                                        </c:if>

                                        <c:if test="${!empty board.boardImage}">
											<img src="${contextPath}${board.boardImage}">                                   	
                                    	</c:if>
                                    	
                                    </a>
                               	  </c:if>

                                
                                
                               	  <c:if test= "${board.boardCode == 4}">
                                    <a href="${contextPath}/travelReview/detail?no=${board.boardNo}&cp=1&type=4">

                                        <c:if test="${empty board.boardImage}">
                                            <img src="${contextPath}/resources/images/logo.png">
                                        </c:if>

                                        <c:if test="${!empty board.boardImage}">
											<img src="${contextPath}${board.boardImage}">                                   	
                                    	</c:if>
                                    	
                                    </a>
                               	  </c:if>

                              
                               	  
                               	   <c:if test= "${board.boardCode == 5}">
                                    <a href="${contextPath}/boardNotice/detail?no=${board.boardNo}&cp=1&type=5">
                                    
                                    	<c:if test="${empty board.boardImage}">
                                    		<img src="${contextPath}/resources/images/logo.png">
                                    	</c:if>
                                    	
                                    	<c:if test="${!empty board.boardImage}">
											<img src="${contextPath}${board.boardImage}">                                   	
                                    	</c:if>
                                    
                                    </a>
                               	  </c:if>
                                    
                                </section>
                                <section  class="textSection">

                                    <c:if test= "${board.boardCode == 1 }">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=${board.boardCategory}&board=${board.boardNo}">${board.boardTitle}</a>
                                   </c:if>
                                
	                                <c:if test= "${board.boardCode == 4}">
	                                    <a href="${contextPath}/travelReview/detail?no=${board.boardNo}&cp=1&type=4">${board.boardTitle}</a>
	                                </c:if>
                                
                                	<c:if test= "${board.boardCode == 5 }">
                                		 <a href="${contextPath}/boardNotice/detail?no=${board.boardNo}&cp=1&type=5">${board.boardTitle}</a>
                                	</c:if>
                                	
                                	
                                
                                </section>
                                <br>
                                <p class="categoryName">${board.categoryName}</p>
                                <p class="readCount">조회수 : ${board.readCount}</p>                    
                            </li>

                        </c:forEach>

                    </c:otherwise>    
                    
                </c:choose>
               
            
           </section>

                
              <c:if test="${!empty boardList}">


                <section class="paginationList">
                    <c:set var="url" value="searchList?searchParam=${param.searchParam}&travelInfo=${param.travelInfo}&cp="/>
                    <ul class="pagination">
                        <li><a href="${url}1">&lt;&lt;</a></li>
                        <li><a href="${url}${pagination.prevPage}">&lt;</a></li>

                        <c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}" step="1">
                            
                            <c:choose>
                                <c:when test="${i == pagination.currentPage}">
                                    <li><a class="current">${i}</a></li>
                                </c:when>

                                <c:otherwise>
                                    <li><a href=${url}${i}>${i}</a></li>
                                </c:otherwise>
                            </c:choose>

                        </c:forEach>

                        <li><a href="${url}${pagination.nextPage}">&gt;</a></li>
                        <li><a href="${url}${pagination.maxPage}">&gt;&gt;</a></li>
                    </ul>
                </section>

            </c:if>
           
        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
    
    <script>

        const travelInfoButton = document.getElementById("travelInfoButton");
        const allbutton = document.getElementById("allbutton");
        const travelReviewButton = document.getElementById("travelReviewButton");

    $(document).ready(function(){
        
        var travelInfo = "${travelInfo}";
debugger
        if(travelInfo != null && travelInfo != ''){
            if(travelInfo == "travelInfo") {

                travelInfoButton.style.fontWeight = "bold";

            } else if(travelInfo == "travelReview") {

                travelReviewButton.style.fontWeight = "bold";

            }
        } else {

            allbutton.style.fontWeight = "bold";
        } 

    });
    	var search = {};
    


       
    	
    	search.TravelInfo = function (obj){
    		
            var searchParam = $("#hiddenSerchResult").val();
            var travelInfo;
    		if(obj.id == "travelInfoButton") {

    			travelInfo = "travelInfo";

    		} else if(obj.id == "travelReviewButton") {

    			travelInfo = "travelReview";
               
    		} else {

                travelInfo = "";
               
            }

            location.href="${contextPath}/board/searchList?searchParam="+ searchParam +"&travelInfo="+ travelInfo;

        


    	}

       
      
    
    
    </script>
</body>
</html>