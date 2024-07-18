
function checkIdReg(e){
	// [1]
	const regExp = /[^0-9]/g;	
	// 패턴 -> 숫자와 영문자만 허용
	// 기본적으로 / 와 / 사이에는 패턴이 들어간다.
	// 괄호 사이에 ^(캐럿)은 부정을 의미(뭐뭐 이외..라는 의미) -> 패턴이 아닌 것을 의미
	const et = e.target;
	console.log(et.value); // et만 찍으면 값이 출력 X
	
	// 사용자가 입력한 값이 내가 만든 패턴에 맞는지 안맞는지 체크 -> true, false -> ~.test() 사용
	console.log(regExp.test(et.value)); // 패턴을 적용해서 true, false 반환

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