<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/travel-plan1.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    
</head>
<body>
    <main>
        <header>
            <section class="head">
                <section id="logo">
                    <a href="#">
                        <img src="${contextPath}/resources/image/logo.png" width="100%">
                    </a>
                </section>

                <section></section>

                <section id="search-area">
                    <form action="#" name="search-form">
                        <fieldset>
                            <section>
                                <input type="search" id="query" name="query" autocomplete="off">
                                <button type="submit" id="search-btn" class="fa-solid fa-magnifying-glass"></button>
                            </section>
                        </fieldset>
                    </form>
                </section>
                <section></section>

                <section class="login-area">
                    <button>
                        <a href="#">로그인</a>
                    </button>
                    <button>
                        <a href="#">회원가입</a>
                    </button>
                </section>
            </section>
        </header>

        <nav>
            <section id="nav">
                <section class="nav-menu">
                    <a href="#">지역</a>
                </section>
                <section class="nav-menu">
                    <a href="#">테마</a>
                </section>
                <section class="nav-menu">
                    <a href="#">여행 계획하기</a>
                </section>
                <section class="nav-menu">
                    <a href="#">여행 리뷰</a>
                </section>
            </section>
        </nav>

        <section id="middle">
            
            <div id="left">
                <div id="left-title">
                    <input type="text" id="left-title1" placeholder="제목을 입력하세요.">
                </div>
                <div id="left-image">사진</div>
                <div id="left-map">지도</div>
                
                <div id="left-text">
                    <textarea rows="5" cols="70" style="resize:none" placeholder="내용을 입력하세요."></textarea>
                </div>
            </div>

            <div id="right">

                <div class="map_wrap">
                    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
                
                    <div id="menu_wrap" class="bg_white">
                        <div class="option">
                            <div>
                                <form onsubmit="searchPlaces(); return false;">
                                    키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15"> 
                                    <button type="submit">검색하기</button> 
                                </form>
                            </div>
                        </div>
                        <hr>
                        <ul id="placesList"></ul>
                        <div id="pagination"></div>
                    </div>
                </div>

                <div id="right-ex1">
                    <div >
                        <img src="이미지/캡처2.PNG" style="border-radius: 15px;">
                    </div>
                    <div id="right-place1">
                        <div id="place1-1">교동 집밥</div>
                        <div id="place1-2">된장 양념에 재운 돼지고기가 구워져 나오는 맥적구이 가정식이다.</div>
                    </div>
                </div>

                <div id="right-ex1">
                    <div >
                        <div >
                            <img src="${contextPath}/resources/images/이미지/캡처1.PNG" style="border-radius: 15px;">
                        </div>
                    </div>
                    <div id="right-place1">
                        <div id="place1-1">관광지 추천</div>
                        <div id="place1-2">아름다운 해안선을 잇는 바다열차는 총 4량으로 특실 1·2호차, 가족석(4인)과 열차 카페로 구성된 3호차, 단체에게 인기가 좋은 일반 4호차와 사랑을 전하는 달콤한 프로포즈룸(2인)으로 구성되어 있다.</div>
                    </div>
                </div>
                <div id="right-button">
                    <button type="button" id="right-btn">장소 추가</button>
                </div>
            </div>

        </section>

        <footer>
            <section>Copyright © TravelMaker Corp. All rights reserved.</section>
            <section class="footer"> 　　이용약관　　 </section>
            <section class="footer"> 　　운영정책　　 </section>
            <section class="footer"> 　　1:1문의　　 </section>
        </footer>
    </main>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=20a683366fa03cbaf1356dc21f5f1228&libraries=services"></script>
                <script>
                // 마커를 담을 배열입니다
                var markers = [];
                
                var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                    mapOption = {
                        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                        level: 3 // 지도의 확대 레벨
                    };  
                
                // 지도를 생성합니다    
                var map = new kakao.maps.Map(mapContainer, mapOption); 
                
                // 장소 검색 객체를 생성합니다
                var ps = new kakao.maps.services.Places();  
                
                // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
                var infowindow = new kakao.maps.InfoWindow({zIndex:1});
                
                // 키워드로 장소를 검색합니다
                searchPlaces();
                
                // 키워드 검색을 요청하는 함수입니다
                function searchPlaces() {
                
                    var keyword = document.getElementById('keyword').value;
                
                    if (!keyword.replace(/^\s+|\s+$/g, '')) {
                        alert('키워드를 입력해주세요!');
                        return false;
                    }
                
                    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
                    ps.keywordSearch( keyword, placesSearchCB); 
                }
                
                // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
                function placesSearchCB(data, status, pagination) {
                    if (status === kakao.maps.services.Status.OK) {
                
                        // 정상적으로 검색이 완료됐으면
                        // 검색 목록과 마커를 표출합니다
                        displayPlaces(data);
                
                        // 페이지 번호를 표출합니다
                        displayPagination(pagination);
                
                    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
                
                        alert('검색 결과가 존재하지 않습니다.');
                        return;
                
                    } else if (status === kakao.maps.services.Status.ERROR) {
                
                        alert('검색 결과 중 오류가 발생했습니다.');
                        return;
                
                    }
                }
                
                // 검색 결과 목록과 마커를 표출하는 함수입니다
                function displayPlaces(places) {
                
                    var listEl = document.getElementById('placesList'), 
                    menuEl = document.getElementById('menu_wrap'),
                    fragment = document.createDocumentFragment(), 
                    bounds = new kakao.maps.LatLngBounds(), 
                    listStr = '';
                    
                    // 검색 결과 목록에 추가된 항목들을 제거합니다
                    removeAllChildNods(listEl);
                
                    // 지도에 표시되고 있는 마커를 제거합니다
                    removeMarker();
                    
                    for ( var i=0; i<places.length; i++ ) {
                
                        // 마커를 생성하고 지도에 표시합니다
                        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                            marker = addMarker(placePosition, i), 
                            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
                
                        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                        // LatLngBounds 객체에 좌표를 추가합니다
                        bounds.extend(placePosition);
                
                        // 마커와 검색결과 항목에 mouseover 했을때
                        // 해당 장소에 인포윈도우에 장소명을 표시합니다
                        // mouseout 했을 때는 인포윈도우를 닫습니다
                        (function(marker, title) {
                            kakao.maps.event.addListener(marker, 'mouseover', function() {
                                displayInfowindow(marker, title);
                            });
                
                            kakao.maps.event.addListener(marker, 'mouseout', function() {
                                infowindow.close();
                            });
                
                            itemEl.onmouseover =  function () {
                                displayInfowindow(marker, title);
                            };
                
                            itemEl.onmouseout =  function () {
                                infowindow.close();
                            };
                        })(marker, places[i].place_name);
                
                        fragment.appendChild(itemEl);
                    }
                
                    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
                    listEl.appendChild(fragment);
                    menuEl.scrollTop = 0;
                
                    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                    map.setBounds(bounds);
                }
                
                // 검색결과 항목을 Element로 반환하는 함수입니다
                function getListItem(index, places) {
                
                    var el = document.createElement('li'),
                    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                                '<div class="info">' +
                                '   <h5>' + places.place_name + '</h5>';
                
                    if (places.road_address_name) {
                        itemStr += '    <span>' + places.road_address_name + '</span>' +
                                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
                    } else {
                        itemStr += '    <span>' +  places.address_name  + '</span>'; 
                    }
                                 
                      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                                '</div>';           
                
                    el.innerHTML = itemStr;
                    el.className = 'item';
                
                    return el;
                }
                
                // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
                function addMarker(position, idx, title) {
                    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                        imgOptions =  {
                            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                        },
                        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                            marker = new kakao.maps.Marker({
                            position: position, // 마커의 위치
                            image: markerImage 
                        });
                
                    marker.setMap(map); // 지도 위에 마커를 표출합니다
                    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
                
                    return marker;
                }
                
                // 지도 위에 표시되고 있는 마커를 모두 제거합니다
                function removeMarker() {
                    for ( var i = 0; i < markers.length; i++ ) {
                        markers[i].setMap(null);
                    }   
                    markers = [];
                }
                
                // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
                function displayPagination(pagination) {
                    var paginationEl = document.getElementById('pagination'),
                        fragment = document.createDocumentFragment(),
                        i; 
                
                    // 기존에 추가된 페이지번호를 삭제합니다
                    while (paginationEl.hasChildNodes()) {
                        paginationEl.removeChild (paginationEl.lastChild);
                    }
                
                    for (i=1; i<=pagination.last; i++) {
                        var el = document.createElement('a');
                        el.href = "#";
                        el.innerHTML = i;
                
                        if (i===pagination.current) {
                            el.className = 'on';
                        } else {
                            el.onclick = (function(i) {
                                return function() {
                                    pagination.gotoPage(i);
                                }
                            })(i);
                        }
                
                        fragment.appendChild(el);
                    }
                    paginationEl.appendChild(fragment);
                }
                
                // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
                // 인포윈도우에 장소명을 표시합니다
                function displayInfowindow(marker, title) {
                    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
                
                    infowindow.setContent(content);
                    infowindow.open(map, marker);
                }
                
                 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
                function removeAllChildNods(el) {   
                    while (el.hasChildNodes()) {
                        el.removeChild (el.lastChild);
                    }
                }
                </script>
</body>
</html>