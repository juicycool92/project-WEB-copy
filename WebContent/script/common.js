var currentAddress = location.href;
if (currentAddress.indexOf("https://www") == 0 && currentAddress.indexOf("login.asp") < 0 && currentAddress.indexOf("change_pw.asp") < 0 
	&& currentAddress.indexOf("modify.asp") < 0 && currentAddress.indexOf("join") < 0 && currentAddress.indexOf("check") < 0 && currentAddress.indexOf("search_idpw") < 0
	 && currentAddress.indexOf("customer_center.asp") < 0 && currentAddress.indexOf("customer_center_.asp") < 0) {
	currentAddress = currentAddress.replace("https://www", "http://www");
	location.href = currentAddress;
}




//개인정보보호정책
var showmenu = "";
var chImg = "imgPri1";
function menuclick(privacy,imgsrc){
 var imgVal = imgsrc.childNodes[0];

  if( showmenu != privacy ) {//showmenu에 담긴 id 문자열과 스크립트 실행시에 담긴 privacy를 비교
   if( showmenu !="" ) {//showmenu가 공백이 아니면 showmenu에 해당하는 id를 display="none"
    eval(document.getElementById(showmenu)).style.display = "none";
    var img_old = eval(document.getElementById(chImg));
    img_old.src = img_old.src.replace("_on.gif","_off.gif");
   }
   eval(document.getElementById(privacy)).style.display = "block"; //클릭된 privacy를 display="block"
   imgVal.src = imgVal.src.replace("_off.gif","_on.gif");  
   chImg = imgVal.id;
   showmenu = privacy;//전역변수에 클릭된 submenu id를 담아준다
  } else {
        eval(document.getElementById(privacy)).style.display = 'none';
        showmenu = ""; //전역변수 초기화, 같은 메뉴를 클릭했을경우인듯..
  
  var img_old = eval(document.getElementById(chImg));
  img_old.src = img_old.src.replace("_on.gif","_off.gif");  
  }
}

// <EMBED> <OBJECT> <APPLET> 출력용 함수
// -------------- 플래시 출력 --------------------
// fla : 플래시 경로
// width, height : 크기
// version : 플래시 출력 버전
function showFlash(fla, width, height, version)
{
	var ver
	
	switch (version){
		case 6 : ver = "6,0,29,0";	break;
		case 7 : ver = "7,0,19,0";	break;
		default : ver = "8,0,0,0";	break;
	}
	/*
	var object =
		"<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=" + ver + "' width='" + width + "' height='" + height + "'>"
		+ "<param name='movie' value='" + fla + "' />"
		+ "<param name='quality' value='high' />"
		+ "<param name='wmode' value='Transparent'>"
		+ "<embed src='" + fla + "' quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='" + width + "' height='" + height + "'></embed>"
		+ "</object>"
	*/
	var object =
		"<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=" + ver + "' width='" + width + "' height='" + height + "'>"
		+ "<param name='movie' value='" + fla + "' />"
		+ "<param name='quality' value='high' />"
		+ "<param name='wmode' value='Transparent'>"
		+ "<embed wmode='Transparent' src='" + fla + "' quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='" + width + "' height='" + height + "'></embed>"
		+ "</object>"
	
	document.write( object );
}

function showFlash_flex(fla, width, height, version, parameter)
{
	var ver
	
	switch (version){
		case 6 : ver = "6,0,29,0";	break;
		case 7 : ver = "7,0,19,0";	break;
		default : ver = "8,0,0,0";	break;
	}

	var object =
		"<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=" + ver + "' width='" + width + "' height='" + height + "'>"
		+ "<param name='movie' value='" + fla + "' />"
		+ "<param name='quality' value='high' />"
		+ "<param name='wmode' value='Transparent'>"
		+ parameter
		+ "<embed src='" + fla + "' quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='" + width + "' height='" + height + "'></embed>"
		+ "</object>"
	
	document.write( object );
}
// 글로벌 사이트 보이기 감추기
function showHide(idName){
     var obj=document.all(idName);
     if(obj==null) return;
     obj.style.display=obj.style.display=='none' ? '' : 'none';
}

function openWin(url, name, width, height, left, top, scroll){
	window.open(url, name, "width=" + width + ", height=" + height + ", left=" + left + ", top=" + top + ", scrollbars=" + scroll);
}