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
        // alert('키워드를 입력해주세요!');
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

            kakao.maps.event.addListener(marker, 'onclick', function() {
                test(marker, title);
            });

            itemEl.onclick =  function () {
                test(marker, title);
            };

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

//검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
//인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

function test(marker, title) {
    const info = document.getElementsByClassName("info");
    const result = document.getElementById("result-box");
    
    if(title == "아쿠아플라넷 제주") {
        searchText();
    }
    
    if(title == "협재해수욕장") {
        searchText1();
    }

    if(title == "그계절") {
        searchText2();
    }

    if(title == "아르떼뮤지엄 제주") {
        searchText3();
    }

    if(title == "목장카페드르쿰다") {
        searchText4();
    }
    
}

// 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}

// ---------------------------------------------------------
const columns = document.querySelectorAll(".column");
columns.forEach((column) => {
  new Sortable(column, {
    group: "shared",
    animation: 300,
    ghostClass: "blue-background-class"
  });
});
// ---------------------------------------------------------

function searchText(){

    const result = document.getElementById("result-box");

    result.innerHTML = "";
    
    /* 이미지 영역 */
    const resultBox = document.createElement("div");
    resultBox.classList.add("result-box");

    /* 이미지 태그 */
    const searchImg = document.createElement("img");
    searchImg.setAttribute("src", contextPath + "/resources/images/Region/jeju/aquaPlanet.jpg")
    searchImg.classList.add("place-image2");

    /* 이미지 태그 하위로 넣기 */
    resultBox.append(searchImg);

    const resultBox1 = document.createElement("div");
    resultBox1.classList.add("result-box1");

    const h1Tag = document.createElement("h1");
    h1Tag.innerText = "아쿠아플라넷";

    const h4Tag = document.createElement("h4");
    h4Tag.innerText = "한화그룹에서 운영하는 아쿠아리움. 제주특별자치도에 있는 유일한 수족관이며, 대한민국에서 가장 큰 아쿠아리움이다. 국내 최대의 수족관인 만큼 상당한 규모를 자랑하며, 지하 1층부터 지상 2층까지 총 3층 규모다. 아쿠아플라넷 제주는 해양생물 보존의 가치를 공유하며, 인간과 자연이 공생하며 느낄 수 있는 최고의 즐거움을 제공한다.";

    resultBox1.append(h1Tag, h4Tag);

    result.append(resultBox, resultBox1);
}

function searchText1(){

    const result = document.getElementById("result-box");

    result.innerHTML = "";
    
    /* 이미지 영역 */
    const resultBox = document.createElement("div");
    resultBox.classList.add("result-box");

    /* 이미지 태그 */
    const searchImg = document.createElement("img");
    searchImg.setAttribute("src", contextPath + "/resources/images/Region/jeju/han.jpg")
    searchImg.classList.add("place-image2");

    /* 이미지 태그 하위로 넣기 */
    resultBox.append(searchImg);

    const resultBox1 = document.createElement("div");
    resultBox1.classList.add("result-box1");

    const h1Tag = document.createElement("h1");
    h1Tag.innerText = "협재해수욕장";

    const h4Tag = document.createElement("h4");
    h4Tag.innerText = "협재해수욕장은 제주시 서쪽 32km 거리의 한림공원에 인접해 있다. 조개껍질 가루가 많이 섞인 백사장과 앞 바다에 떠 있는 비양도, 코발트 빛깔의 아름다운 바다와 울창한 소나무 숲이 한데 어우러진 풍광이 매우 아름답다. 백사장의 길이 약 200m, 폭은 60m, 평균수심 1.2m, 경사도 3~8도로서 수심이 얕고 경사가 완만하여 가족 단위의 해수욕장으로 적합하다. 또한 각종 편의시설이 잘 갖추어져 있으며 소나무 숲에서는 야영도 가능하다. 이 해수욕장의 남서쪽 해안은 금릉해수욕장과 이어져 있는데, 주민들은 두 해변을 합쳐 협재해수욕장이라고도 부른다.";

    resultBox1.append(h1Tag, h4Tag);

    result.append(resultBox, resultBox1);
}

function searchText2(){

    const result = document.getElementById("result-box");

    result.innerHTML = "";
    
    /* 이미지 영역 */
    const resultBox = document.createElement("div");
    resultBox.classList.add("result-box");

    /* 이미지 태그 */
    const searchImg = document.createElement("img");
    searchImg.setAttribute("src", contextPath + "/resources/images/Region/jeju/cafeTheSeason.jpg")
    searchImg.classList.add("place-image2");

    /* 이미지 태그 하위로 넣기 */
    resultBox.append(searchImg);

    const resultBox1 = document.createElement("div");
    resultBox1.classList.add("result-box1");

    const h1Tag = document.createElement("h1");
    h1Tag.innerText = "그계절";

    const h4Tag = document.createElement("h4");
    h4Tag.innerText = "제주 동쪽 구좌읍에 위치한 카페 ‘그계절’, 카페에 들어서면 수많은 초록 식물들이 싱그러움을 뽐내며 반겨준다. 창문 틈새로 햇빛이 들어오면 마치 숲 속에 있는 듯한 느낌을 받아서 괜히 기분이 상쾌해지고 좋아진다. 무화과 토스트의 맛이 일품이니 꼭 한번 맛보기를 추천한다.";

    resultBox1.append(h1Tag, h4Tag);

    result.append(resultBox, resultBox1);
}

function searchText3(){

    const result = document.getElementById("result-box");

    result.innerHTML = "";
    
    /* 이미지 영역 */
    const resultBox = document.createElement("div");
    resultBox.classList.add("result-box");

    /* 이미지 태그 */
    const searchImg = document.createElement("img");
    searchImg.setAttribute("src", contextPath + "/resources/images/Region/jeju/ArteMuseum.jpg")
    searchImg.classList.add("place-image2");

    /* 이미지 태그 하위로 넣기 */
    resultBox.append(searchImg);

    const resultBox1 = document.createElement("div");
    resultBox1.classList.add("result-box1");

    const h1Tag = document.createElement("h1");
    h1Tag.innerText = "아르떼뮤지엄";

    const h4Tag = document.createElement("h4");
    h4Tag.innerText = "아르떼 뮤지엄은 디스트릭트가 2020년 9월말 제주 애월에서 선보인 첫 번째 몰입형 미디어아트 전시관이다. 과거 스피커 제조 공장으로 사용되던 바닥 면적 1,400평, 최대 10M 높이에 육박하는 웅장한 공간을 업사이클링하여 선보인 아르떼뮤지엄 제주에서는 섬을 컨셉으로 빛과 소리로 만들어진 11개의 다채로운 미디어아트 전시가 펼쳐진다.";

    resultBox1.append(h1Tag, h4Tag);

    result.append(resultBox, resultBox1);
}

function searchText4(){

    const result = document.getElementById("result-box");

    result.innerHTML = "";
    
    /* 이미지 영역 */
    const resultBox = document.createElement("div");
    resultBox.classList.add("result-box");

    /* 이미지 태그 */
    const searchImg = document.createElement("img");
    searchImg.setAttribute("src", contextPath + "/resources/images/Region/jeju/delekoomada.jpg")
    searchImg.classList.add("place-image2");

    /* 이미지 태그 하위로 넣기 */
    resultBox.append(searchImg);

    const resultBox1 = document.createElement("div");
    resultBox1.classList.add("result-box1");

    const h1Tag = document.createElement("h1");
    h1Tag.innerText = "목장카페드르쿰다";

    const h4Tag = document.createElement("h4");
    h4Tag.innerText = "제주 속의 또 다른 제주를 느낄 수 있는 목장 카페 드르쿰다는 제주도의 넓은 들판을 바라보며 커피를 마실 수 있는 탁 트인 실내공간과 승마와 카트, 동물 먹이 주기 체험 등을 모두 한 곳에서 할 수 있는 올인원 카페이다. 실외에는 넓고 푸른 초원 위에 다양한 소품들이 있어서 구석구석이 포토존으로, 어디서 사진을 찍던 멋진 인생 사진을 찍을 수 있다. 또한 세상에 하나뿐인 자전거를 마음껏 탈 수 있는 공간도 마련되어 있다. 36개월 아이가 탈 수 있는 체험 승마부터 성인을 위한 장거리 승마까지 준비되어 있어 남녀노소 즐길 거리, 먹을거리가 가득하다.";

    resultBox1.append(h1Tag, h4Tag);

    result.append(resultBox, resultBox1);
}

// 일수 추가 버튼
const plusBtn = document.getElementById("plus");
const minusBtn = document.getElementById("minus");
const date = document.getElementById("date");
let dateValue = +document.getElementById("date-value").value;
const column = document.getElementsByClassName("column")[0];

plusBtn.addEventListener("click", function(){

    if(dateValue != 5) {
        
        dateValue++;

        date.innerText = (dateValue - 1) + "박 " + (dateValue) + "일";

        const h1 = document.createElement("h1");
        h1.innerText = (dateValue) + "일차";
        h1.classList.add("h1-" + dateValue);

        column.append(h1);

    }

})

minusBtn.addEventListener("click", function(){

    if(dateValue != 1) {

        dateValue--;

        date.innerText = (dateValue - 1) + "박 " + dateValue + "일";

        const prevH1 = document.getElementsByClassName("h1-" + (dateValue + 1))[0];

        column.removeChild(prevH1);

    }

})

// 장소 추가 버튼 이벤트
const addBtn = document.getElementById("add-place");
addBtn.addEventListener("click", function(){
    
    const resultBox = document.getElementById("result-box");
    
    if(resultBox.innerHTML == '') {
        alert("장소를 선택 후 버튼을 클릭해주세요.");
        return;
    }
    
    const column = document.getElementsByClassName("column")[0];
    const div = document.createElement("div");
    div.classList.add("list-group-item");
    div.setAttribute("draggable", "true");
    
    const img = document.getElementById("result-box").children[0].children[0];
    const placeName = document.getElementById("result-box").children[1].children[0];
    
    const button = document.createElement("button");
    button.setAttribute("type", "button");
    button.classList.add("cancelBtn");
    button.classList.add("pmBtn");
    button.innerText = '-';
    
    img.classList.remove("place-image2");
    img.classList.add("place-image");
    placeName.classList.add("place-name");
    
    div.append(img, placeName, button);
    
    column.append(div);
    
    resultBox.innerHTML = "";

})

// 장소 제거 버튼
const cancelBtn = document.getElementsByClassName("cancelBtn");

for(let i = 0; i < cancelBtn.length; i++) {

    cancelBtn[i].addEventListener("click", function(){

        console.log("test");

        this.parentElement.remove();

    })

}

const saveBtn = document.getElementById("save-btn");
const resetBtn = document.getElementById("reset-btn");
const columnContent = document.getElementById("columnContent");
columnContent.value = column.innerHTML;

// 초기화 버튼 클릭 이벤트
resetBtn.addEventListener("click", function(){

    console.log("test");

    column.innerHTML = "";

    dateValue = 1;

    date.innerText = (dateValue - 1) + "박 " + (dateValue) + "일";

    const h1 = document.createElement("h1");
    h1.innerText = (dateValue) + "일차";
    h1.classList.add("h1-" + dateValue);

    column.append(h1);

})