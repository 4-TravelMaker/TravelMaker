/**
 * index 화면 자바스크립트
 */
﻿window.onload= function(){
	/* onload event  */
	console.log("Logon onload");
}
 
function fnLogin (){
   
   console.log("btn Logon Click!!!!!!");
let id= document.querySelector("#inpID").value;
let pw = document.querySelector("#inpPW").value;
   req_logon('/TravelMaker/login', { id : id , pw: pw }).then((data) => {
     console.log(data); // JSON 데이터가 `data.json()` 호출에 의해 파싱됨
   });
	
}
async function req_logon(url='', data = {}) {
   //url  = "/TravelMaker/test";
    //data = { "var1": "a", "var2": "b" };
   const response = await fetch(url, {
       method: 'POST', // *GET, POST, PUT, DELETE 등
       headers: {
         'Content-Type': 'application/json'
       },
       body: JSON.stringify(data), 
     });
     return response.json(); // JSON 응답을 네이티브 JavaScript 객체로 파싱
}
