
function checkIdReg(e){
	// [1]
	// const regExp = /[^0-9]/g;	
	// 패턴 -> 숫자와 영문자만 허용
	// 기본적으로 / 와 / 사이에는 패턴이 들어간다.
	// 괄호 사이에 ^(캐럿)은 부정을 의미(뭐뭐 이외..라는 의미) -> 패턴이 아닌 것을 의미
	// ^ -> 괄호 밖의 정규표현식에서는 문자열의 시작을 의미
	// g는 글로벌 태그 -> "전체 문자열에서 패턴을 찾겠다"는 의미
	// const et = e.target;
	// console.log(et.value); // et만 찍으면 값이 출력 X
	
	// 사용자가 입력한 값이 내가 만든 패턴에 맞는지 안맞는지 체크 -> true, false -> ~.test() 사용
	// console.log(regExp.test(et.value)); // 패턴을 적용해서 true, false 반환
	
	// [2]
	// match() 함수로 숫자만 검색
	// const str = "나는 1990년이 끝나고 2000년이 시작되면 다시 1부터 시작하는 줄 알았다.";
	// const regExp = /\d+/g; // + 없으면 숫자 하나하나씩 모두 검사
	
	// const matches = str.match(regExp);
	// console.log(matches); // [1990, 2000, 1]
	// console.log(matches.length); // 3
	
	/*for(i=0; i<matches.length; i++){
		console.log(matches[i]);
	}*/
	
	// [3] 
	// 비밀번호가 숫자로 시작하는지를 체크
	// 예) /^[0-9]/ -> 문자열의 시작이 숫자로 시작하는지 찾는 패턴
	/*const regExp = /^[0-9]/g;
	const strPassword = "123abdashg";
	if(regExp.test(strPassword)){
		console.log("비밀번호가 숫자로 시작합니다.");
	}else{
		console.log("비밀번호가 숫자로 시작하지 않습니다.");
	}*/
	
	// [4]
	// 숫자와 영문자만 허용하기 -> 한글 허용 X
	const regExp = /[^0-9a-zA-Z]/g;
	const et = e.target;
	
	// 조건 처리
	if(regExp.test(et.value)){
		// alert("아이디 입력에서는 한글로 시작할 수 없습니다.");
		et.value = et.value.replace(regExp, "");
		// et.value로 입력 필드의 값을 가져와서 regExp로 식별된 한글을 replace 함수로 제거함
	}
	
	// replace
	// let str2 = "홍GilDong";
	
	// console.log(str2.replace('홍','')); // GilDong
	// console.log(str2.replace(regExp, ''));
};

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