
function popUpWindow(id, name, url){
	
	const chkBox = document.querySelector("#" + id);
	
	// 체크박스 체크했는지 확인
	if(chkBox.checked){
		// ID 값 추출
		const idValue = document.querySelector("input[name='id']").value;
	
		// ID 값 입력 여부 체크
		if(idValue.trim() == ""){
			alert("먼저 아이디를 입력해주세요 !");
			chkBox.checked = false;
			document.regForm.id.focus();
			return;
		}else{
			url = url + "?id=" + idValue ;
			alert(idValue + "아이디를 중복 체크합니다.");
			window.open(url, name, "width=500, height=300, top=0, left=0");
		}
		
	}
};

document.querySelector("#chk1").addEventListener("click", function(){
	popUpWindow(
		"chk1", 
		"chkId", 
		"http://localhost/Ex13_MySQL/action/popUpWindow_chkId.jsp"
	);
});