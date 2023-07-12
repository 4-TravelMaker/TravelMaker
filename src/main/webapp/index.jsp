<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/mainHomePage-style.css">

	<script src="https://unpkg.com/embla-carousel/embla-carousel.umd.js"></script>
    <script src="https://unpkg.com/embla-carousel-autoplay/embla-carousel-autoplay.umd.js"></script>

	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
		
		<section id="middle">
           
            <section class="container">
            
                <section class="container0"></section>
                
                <section class="container1">
                    <section style="display: flex;">
                        <!-- <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b30c2e42-dd00-463a-b726-0e40b1d13bbb" style="display:contents"> -->
                            <img src="resources/images/homemain/sunset.png"  style="width:100%;height:100%;object-fit:contain;">
                        <!-- </a> -->
                        
                        <!-- <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=7cf983d9-35e7-49e0-914d-1e67665be577" style="display:contents">  -->
                            <img src="resources/images/homemain/incheon.png" style="width:100%;height:100%;object-fit:contain;">
                        <!-- </a> -->
                        <!-- <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=dad57d1b-05e5-4633-a85b-58e32d93b1fe" style="display:contents"> -->
                            <img src="resources/images/homemain/yeosu.png" style="width:100%;height:100%;object-fit:contain;">
                        <!-- </a> -->
                        <!-- <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=3301d3ce-aa66-483d-8e78-66b4cac3a426" style="display:contents"> -->
                            <img src="resources/images/homemain/han-an.png" style="width:100%;height:100%;object-fit:contain;">
                        <!-- </a> -->
                        <!-- <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b3e8cc50-c792-4c9a-8fac-49376c99ef41" style="display:contents"> -->
                            <img src="resources/images/homemain/suwon.png" style="width:100%;height:100%;object-fit:contain;">
                        <!-- </a> -->
                        <!-- <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=9b251ab6-7f28-4547-a5bb-508644372dc9" style="display: contents"> -->
                            <img src="resources/images/homemain/summerflower.png" style="width:100%;height:100%;object-fit:contain;">
                        <!-- </a> -->
                        <!-- <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=e46d4b2f-5da4-40ad-ac69-f6492bfb6816" style="display: contents;"> -->
                            <img src="resources/images/homemain/chungnam.png" style="width:100%;height:100%;object-fit:contain;">
                        <!-- </a> -->
                    </section>    
                </section>
                <section class="container2">
                    <section style="width: 30px; position: relative; bottom:300px; font-size: 50px; color: white;" ><</section>
                    <section style="width: 30px; float: right; position: relative; bottom: 360px; font-size: 50px; color: white;">></section>
                </section>
                <section class="container3"><hr></section>
                <br>
                <section class="container4">
                    <b>이달의 베스트 여행지 Top 10</b>
                </section>
                
                <section class="container5">
                    <section class="flex-container1">
                        <a href="#" style="text-decoration:none">
                            <section class="item" id="photo">
                                <img src="resources/images/homemain/han-river.jpg">
                            </section>
                            <strong>
                               반포대교 달빛무지개 분수
                            </strong>
                        </a>
                        <a href="#" style="text-decoration:none">
                            <section class="item" id="photo">
                                <img src="resources/images/homemain/bomunjeong.jpg" >
                            </section>
                            <strong>
                                보문정 (경주)
                            </strong>
                        </a>
                        <a href="#" style="text-decoration:none">
                            <section class="item" id="photo">
                                <img src="resources/images/homemain/young-do.jpg" >
                            </section>
                            <strong>
                                영도 청학배수지 전망대
                            </strong>
                        </a>
                        <a href="#" style="text-decoration:none">
                            <section class="item" id="photo">
                                <img src="resources/images/homemain/nam-i.JPG" >
                            </section>
                            <strong>
                                남이섬
                            </strong>
                        </a>
                        
                    </section>
                    
                    
                    <section style="height: 15px;"></section>

                    <section class="nextSign">
                        
                    </section>

                </section>
                
                <section style="height: 30px;"></section>

                <section class="container6">
                    <b>테마</b>
                </section>

                <section class="flex-container3">
                    <a href="#" style="text-decoration:none">
                        <section class="item2" id="photo1">
                            <img src="resources/images/homemain/chilgok.png">
                        </section>
                        <strong>
                            유유자적 걸으며 즐기는
                            <br>
                            경북 칠곡 여행
                        </strong>
                    </a>
                    <a href="#" style="text-decoration:none">
                        <section class="item2" id="photo1">
                            <img src="resources/images/homemain/yangyang.png" >
                        </section>
                        <strong>
                            바닷바람을 만끽할 수 있는
                            <br>
                            강원 양양 여행
                        </strong>
                    </a>
                    <a href="#" style="text-decoration:none">
                        <section class="item2" id="photo1">
                            <img src="resources/images/homemain/youngdong.png" >
                        </section>
                        <strong>
                            그림 같은 풍경이 펼쳐지는
                            <br>
                            충북 영동 여행
                        </strong>
                    </a>

                </section>

            </section>
           
        </section>
		
    </main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script type="text/javascript">
        var emblaNode = document.querySelector(".container1");
        var options = { loop: false };
        var plugins = [EmblaCarouselAutoplay()]; // Plugins
  
        var embla = EmblaCarousel(emblaNode, options, plugins);
    </script>

</body>
</html>