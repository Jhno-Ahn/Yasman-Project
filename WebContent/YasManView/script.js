/**
 * 회원관리 YasMan!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 */

var idmsg = "아이디를 입력하세요.";
var passwdmsg = "비밀번호를 입력하세요.";
var repasswdmsg = "비밀번호가 일치하지 않습니다.";
var namemsg = "이름을 입력하세요.";
var nick_namemsg = "닉네임을 입력하세요.";
var reg_nummsg = "주민번호를 입력하세요.";
var telmsg = "전화번호를 입력하세요.";
var confirm_idmsg = "아이디 중복확인을 해주세요";
var confirm_nick_namemsg = "닉네임 중복확인을 해주세요";
var agreemmsg = "개인정보 제공 동의 해주세요";

var inputerror = "회원가입에 실패했습니다.\n 잠시후 다시 시도하세요.";
var iderror = "입력하신 아이디가 없습니다. \n 다시 확인하세요";
var passwderror = "입력하신 비밀번호가 다릅니다. \n 다시 확인하세요";
var deleteerror = "회원 탈퇴에 실패했습니다. \n 잠시후 다시 시도해 주세요";
var modifyerror = "회원정보수정에 실패했습니다. \n 잠시후 다시 시도해 주세요";


function id_pass() {
	request.setAttribute("id", id);
}

function erroralert(msg) {
	alert(msg);
	history.back();
}

// 야스멘 회원정보 수정
function modifycheck() {
	if( ! modifyform.passwd.value){
		alert(passwdmsg);
		modifyform.passwd.focus();
		return false;
	}else if (modifyform.passwd.value != modifyform.repasswd.value){
		alert(repasswdmsg);
		modifyform.passwd.focus();
		return false;
	}
}

// 야스멘 회원 탈퇴
function passwdcheck() {
	if( ! passwdform.passwd.value) {
		alert(passwdmsg);
		passwdform.passwd.focus();
		return false;
	}
}

 // 야스멘 아이디 중복확인
function confirm_id() {
	if(!inputform.id.value){
		alert(idmsg);
		inputform.id.focus();
		return;
	}
	var url = "confirmId.do?id=" + inputform.id.value;
	window.open(url, "confirm", "menubar=no, scrollbar=no, status=no, width=400, height=300");
}
//야스멘 닉네임 중복확인
function confirm_nick_name() {
	if(!inputform.nick_name.value){
		alert(nick_namemsg);
		inputform.nick_name.focus();
		return;
	}
	var url = "confirmNickName.do?nick_name=" + inputform.nick_name.value;
	window.open(url, "confirm", "menubar=no, scrollbar=no, status=no, width=400, height=300");
}

// 야스맨 매치 지원 및 취소------------------------------------------------------------------------------------------------------------
function applyMatch_A(id, match_num) {
	var url = "applyMatchForm.do?id=" + id + "&match_num=" + match_num;
	window.open(url, "confirm", "menubar=no, scrollbar=no, status=no, width=400, height=300");
}

function applyMatch_B(id, match_num) {
	var url = "applyMatchPro.do?id=" + id + "&match_num=" + match_num;
	window.open(url, "confirm", "menubar=no, scrillbar=no, status=no, width=400, height=300");
}

function cancelMatch_A(match_num, member_num) {
	var url = "cancelMatchForm.do?match_num=" + match_num + "&member_num=" + member_num;
	window.open(url, "confirm", "menubar=no, scrollbar=no, status=no, width=400, height=300");
}

function cancelMatch_B(member_num, match_num) {
	var url = "cancelMatchPro.do?match_num=" + match_num + "&member_num=" + member_num;
	window.open(url, "confirm", "menubar=no, scrollbar=no, status=no, width=400, height=300");
	
}
//------------------------------------------------------------------------------------------------------------------------
	
// 회원 및 매치 관리----------------------------------------------------------------------------------------------------

function deleteMember_A(id, nick_name) {
	var url = "deleteMemberForm.do?id=" + id + "&nick_name=" + nick_name;
	window.open(url, "confirm", "menubar=no, scrollbar=no, status=no, width=400, height=300");
}

function deleteMember_B(id, nick_name) {
	var url = "deleteMemberPro.do?id=" + id + "&nick_name=" + nick_name;
	window.open(url, "confirm", "menubar=no, scrollbar=no, status=no, width=400, height=300");
}

function deleteMatch_A(match_num) {
	var url = "deleteMatchForm.do?match_num=" + match_num;
	window.open(url, "confirm", "menubar=no, scrollbar=no, status=no, width=400, height=300");
}

function deleteMatch_B(match_num) {
	var url = "deleteMatchPro.do?match_num=" + match_num;
	window.open(url, "confirm", "menubar=no, scrollbar=no, status=no, width=400, height=300");
}

//회원 관리----------------------------------------------------------------------------------------------------



// 야스멘 중복확인
function confirmidcheck() {
	if( ! confirmform.id.value ){
		alert(idmsg)
		confirmform.id.focus();
		return false;
	}
}

function confirmnicknamecheck() {
	if (!confirmform.nick_name.value) {
		alert(nick_namemsg);
		inputform.nick_name.focus();
		return false;
	}
}

function setid(id){
	opener.document.inputform.id_check.value= "1";
	opener.document.inputform.id.value = id;
	//window.close();
	//close();
	self.close();
}

function setok(){
	//window.close();
	//close();
	self.close();
}

function setnickname(nickname){
	opener.document.inputform.nick_name_check.value= "1";
	opener.document.inputform.nick_name.value = nickname;
	//window.close();
	//close();
	self.close();
}

// =============================================================  inputcheck() ==========================================================================

// 야스멘  회원 가입
function inputcheck() {
	
	
	if( inputform.id_check.value == "0"){
		alert(confirm_idmsg);
		inputform.id.focus();
		return false;
	}
	else if(inputform.nick_name_check.value == "0") {
		alert(confirm_nick_namemsg);
		inputform.nick_name.focus();
		return false;
	}
	
	else if( inputform.passwd.value != inputform.repasswd.value){
		alert(repasswdmsg);
		inputform.passwd.focus();
		return false;
	}
	else if(inputform.reg_num.value.lenght<13){
		alert(reg_nummsg);
		inputform.reg_num.focus();
		return false;
	}
	else if(inputform.passwd.value.lenght<17){
		alert(reg_nummsg);
		inputform.reg_num.focus();
		return false;
	}
	else if(inputform.member_tel.value.lenght<11 || !inputform.member_tel.value){
		alert(telmsg);
		inputform.member_tel.focus();
		return false;
	} 
}

//=============================================================  inputcheck() ==========================================================================

// 야스멘  메인페이지
function maincheck() {
	if( ! mainform.id.value){
		alert( idmsg );
		mainform.id.focus();
		return false;
	} else if(! mainform.passwd.value){
		alert( passwdmsg);
		mainform.passwd.focus();
		return false;
	}
}

// ===================================================

