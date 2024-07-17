
function popUpWindow(id, name, url){
	
	const chkBox = document.querySelector("#" + id);
	
	// 체크박스 체크했는지 확인
	if(chkBox.checked){
		// ID 값 추출
		const idValue = document.querySelector("input[name='id']").value;
		
		url = url + "?id=" + idValue ;
		alert(idValue + "아이디를 중복 체크합니다.");
	}
	
	window.open(url, name, "width=500, height=300, top=0, left=0");
}

document.querySelector("#chk1").addEventListener("click", function(){
	popUpWindow(
		"chk1", 
		"chkId", 
		"http://localhost/Ex13_MySQL/action/popUpWindow_chkId.jsp"
	);
});