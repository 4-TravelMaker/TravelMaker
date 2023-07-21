<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
 	<link rel="stylesheet" href="${contextPath}/resources/css/Region/region1.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
       
       <jsp:include page="/WEB-INF/views/common/header.jsp"/>
       
        <section id="middle">
           
            <section class="container">

                <section class="container0"></section>
                    <div class="temp2">
                        <button class="embla__prev2"><</button>  
                        <div class="embla">
                            <div class="viewport2">
                                <div class="embla__container">
                                    
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b30c2e42-dd00-463a-b726-0e40b1d13bbb" style="display:contents">
                                            <img src="resources/images/mainHome/sunset.png"  style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=7cf983d9-35e7-49e0-914d-1e67665be577" style="display:contents"> 
                                            <img src="resources/images/mainHome/incheon.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=dad57d1b-05e5-4633-a85b-58e32d93b1fe" style="display:contents">
                                            <img src="resources/images/mainHome/yeosu.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=3301d3ce-aa66-483d-8e78-66b4cac3a426" style="display:contents">
                                            <img src="resources/images/mainHome/han-an.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b3e8cc50-c792-4c9a-8fac-49376c99ef41" style="display:contents">
                                            <img src="resources/images/mainHome/suwon.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=9b251ab6-7f28-4547-a5bb-508644372dc9" style="display: contents">
                                            <img src="resources/images/mainHome/summerflower.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=e46d4b2f-5da4-40ad-ac69-f6492bfb6816" style="display: contents;">
                                            <img src="resources/images/mainHome/chungnam.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    
                                </div> 
                            </div>       
                        </div>
                        <button class="embla__next2">></button>
                    </div>
                    <section class="container2">
                        
                        
                    </section>

             <section id="middle">

            <section id="middle1">
                <section id="button">
                    <button><</button>
                </section>
                <section id="middle1-1">
                    <section>
                        <section id="pic">
                            <img src="${contextPath}/resources/images/여행이 있는 주말.jpg">
                        </section>
                        <section id="article">
                            <p>여행이 있는 주말</p>
                            <p>매월 마지막 주말은 일상에서 벗어나 여행을 떠나보세요!</p>
                        </section>
                    </section>
                    <section>
                        <section id="pic">
                            <img src="${contextPath}/resources/images/한국관광의별.jpg">
                        </section>
                        <section id="article">
                            <p>한국 관광의 별</p>
                            <p>한 해 동안 가장 빛난 별을 찾아 소개합니다!</p>
                        </section>
                    </section>
                    <section>
                        <section id="pic">
                            <img src="${contextPath}/resources/images/반려동물 동반여행.jpg">
                        </section>
                        <section id="article">
                            <p>반려동물 동반여행</p>
                            <p>반려동물과 함께할 수 있는 여행을 소개합니다.</p>
                        </section>
                    </section>
                </section>
                <section id="button">
                    <button>></button>
                </section>
            </section>

            <section id="middle2">
                <section id="map">
                    <img src="${contextPath}/resources/images/Region/map2.PNG">
                </section>
                <section class="infobox">
                    <section id="information">
                        <div id="info2" >여행지정보</div>
                    </section>
                    <section class="photobox1">
                        <section id="photo">
                            <section>사진</section>
                            <section>정보</section>
                        </section>
                        <section id="photo">
                            <section>사진</section>
                            <section>정보</section>
                        </section>
                        <section id="photo">
                            <section>사진</section>
                            <section>정보</section>
                        </section>
                    </section>
              
                </section>
            </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
        
    </main>
</body>
</html>