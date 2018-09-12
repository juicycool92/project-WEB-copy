

function keywordinput(form){
    if(form.value != ""){
        form.style.backgroundImage='';
    }
}

function fnInit(val){
	// 라디오 버튼 value 값 조건 비교
	if(val == "road"){
		document.getElementById('notitab3_list').style.display = ""; 
		document.getElementById('notitab5_list').style.display = "none"; 
		document.getElementById('gubun').value="road";
	}
	else if(val == "dong"){
		document.getElementById('notitab3_list').style.display = "none"; 
		document.getElementById('notitab5_list').style.display = ""; 
		document.getElementById('gubun').value="dong";
	}
}

function fnGubun(obj){
	// 라디오 버튼 value 값 조건 비교
	document.getElementById("keyword").value = "";
	if(obj.value == "road"){
		document.getElementById('notitab3_list').style.display = ""; 
		document.getElementById('notitab5_list').style.display = "none"; 
	}
	else if(obj.value == "dong"){
		document.getElementById('notitab3_list').style.display = "none"; 
		document.getElementById('notitab5_list').style.display = ""; 
	}
}

function createXMLHTTPRequest(){
	if(window.ActiveXObject){
		try{  
			return new ActiveXObject("Msxml2.XMLHTTP"); // IE 7.0이후
		} catch(e){
			return new ActiveXObject("Microsoft.XMLHTTP"); // IE 7.0이전
		}
	} else if(window.XMLHttpRequest){ 
		return new XMLHttpRequest(); // extra Ms(크롬, 불여우, 사파리 등)
	} else {  
		alert("Ajax를 지원하지 않습니다"); 
	}
}

function fnCheckForm(srcEl)
{
	var gubun, keyword,stitle;
	keyword = fnCheckstring(srcEl.keyword.value);
	stitle = srcEl.keyword.title;
	gubun = srcEl.gubun.value;
	// alert(gubun);
	if(keyword.length == 0){
		if (gubun == "road"){
			alert("도로명+건물번호를 입력하세요!\n\n검색방법 : 도로명(~로,~길)+건물번호\n- 서울시 중구 소공로 70 \n  예) '소공로(도로명) 70(건물번호)'");
		}
		else if (gubun == "dong"){
		  	alert("동/읍/면/리/명+지번을 입력하십시오!\n\n검색방법 : 동/읍/면/리명+지번\n- 서울시 중구 충무로1가 21-1 \n  예) '충무로1가(동명) 21-1(지번)'");
		}
		srcEl.keyword.style.backgroundImage="";
		srcEl.keyword.focus();
		return false;
	}else if(keyword.length < 2){
	  	alert("검색어를 2글자이상으로입력하세요!");
	  	srcEl.keyword.style.backgroundImage="";
	  	srcEl.keyword.focus();
	  	return false;
	}

  if (gubun == "road"){
      var str = srcEl.keyword.value.split(" ").join("");
      var strlen = str.length;
      var strdiv = "";
      for(var i = strlen-1; i > -1; i--){
          if(IsRoad(str.charAt(i))){
              strdiv = i+1;
              break;
          }
      }
      srcEl.searchKey.value = str.substring(0,strdiv);
      srcEl.MainNo.value = str.substring(strdiv,strlen);
      
      if(srcEl.searchKey.value == "시장북로"){
        alert("\"시장북로\"는 지번주소(법정동) 입니다.");
        return false;
      }
      
      if ((gubun == "road")&&((srcEl.searchKey.value == "")||(srcEl.MainNo.value == ""))) {
          alert("도로명+건물번호를 입력하세요!\n\n검색방법 : 도로명(~로,~길)+건물번호\n- 서울시 중구 소공로 70 \n  예) '소공로(도로명) 70(건물번호)'");
          return false;
      }
      
      var Temp    = srcEl.MainNo.value.split("-");
      srcEl.MainNo.value   = Temp[0];
      srcEl.SubNo.value = "";
      for (var i = 1; i < Temp.length; i++) {
          srcEl.SubNo.value = Temp[i];
          break;
      }
      
      srcEl.SubNo.value = srcEl.SubNo.value.replace(" ", "");
      
      if (srcEl.SubNo.value.length == 0) {
          srcEl.SubNo.value = "";
      }

      if ( (gubun == "road")&&(!IsNumeric(srcEl.MainNo.value) || !IsNumeric(srcEl.SubNo.value)) ) {
          alert("건물번호는 반드시 숫자만 입력하세요!");
          return false;
      }
      else{
      	srcEl.MainNo.value = escape(srcEl.MainNo.value);
      }                   

  }
  else if (gubun == "dong"){
      var str = srcEl.keyword.value.split(" ").join("");
      var strlen = str.length;
      var strdiv = "";
      for(var i = strlen-1; i > -1; i--){
          if(IsDong(str.charAt(i))){
              strdiv = i+1;
              break;
          }
      }
      srcEl.searchKey.value = str.substring(0,strdiv);
      srcEl.MainNo.value = str.substring(strdiv,strlen);  

      if ((gubun == "dong")&&((srcEl.searchKey.value == "")||(srcEl.MainNo.value == ""))) {
          alert("동/읍/면/리/명+지번을 입력하십시오!\n\n검색방법 : 동/읍/면/리명+지번\n-  서울시 중구 충무로1가 21-1 \n  예) '충무로1가(동명) 21-1(지번)'");
          return false;
      }
      
      srcEl.MainNo.value = srcEl.MainNo.value.replace("산", "");
      var Temp     = srcEl.MainNo.value.split("-");
  
      srcEl.MainNo.value  = Temp[0];
      srcEl.SubNo.value = "";
  
      for (var i = 1; i < Temp.length; i++) {
          srcEl.SubNo.value = Temp[i];
          break;
      }
      
      srcEl.SubNo.value = srcEl.SubNo.value.replace(" ", "");
      
      if (srcEl.SubNo.value.length == 0) {
          srcEl.SubNo.value = "";
      }
      
      if ( (gubun == "dong")&&(!IsNumeric(srcEl.MainNo.value) || !IsNumeric(srcEl.SubNo.value)) ) {
          alert("번지는 반드시 숫자만 입력하세요!");
          return false;
      }                   
      else{
      	srcEl.MainNo.value = escape(srcEl.MainNo.value);
      }                   

  }

  return true;
	
}

function IsNumeric(sText){
    var ValidChars = "0123456789";
    var IsNumber=true;
    var Char;

    for (i = 0; i < sText.length && IsNumber == true; i++) { 
        Char = sText.charAt(i); 
        if (ValidChars.indexOf(Char) == -1){
            IsNumber = false;
        }
    }
    return IsNumber;
}

function IsRoad(sText){
    var ValidChars = "개길도로리";
    var IsRoad=true;
    
    if (ValidChars.indexOf(sText) == -1){
        IsRoad = false;
    }
    return IsRoad;
}

function IsDong(sText){
    var ValidChars = "읍면동리로가";
    var IsDong=true;

    if (ValidChars.indexOf(sText) == -1){
        IsDong = false;
    }
    return IsDong;
}

function fnCheckstring(str)
{
	var index, len
	while(true) {
		index = str.indexOf(" ")
		if (index == -1) break
		len = str.length
		str = str.substring(0, index) + str.substring((index+1),len)
	}
	str = escape(str)
	while(true) {
		index = str.indexOf("%0D%0A")
		if (index == -1) break
		len = str.length
		str = str.substring(0, index) + str.substring((index+6),len)
	}
	str = unescape(str)

	return str
}

// 우편번호 검색결과 반영
function setAddr_(zipcode, road_address, zip1, zip2, addr1){
	var zip1;
	var zip2;
	var addr1;
	var addr2;
	var post

// zip1 = window.parent.document.getElementById("post_zipcode_1");
// zip2 = window.parent.document.getElementById("post_zipcode_2");
// addr1 = window.parent.document.getElementById("post_addr_1");
// addr2 = window.parent.document.getElementById("post_addr_2");
	zip1 = parent.$("#post_zipcode_1");
	zip2 = parent.$("#post_zipcode_2");
	addr1 =parent.$("#post_addr_1");
	addr2 = parent.$("#post_addr_2");

	post = zipcode.split("-");

	zip1.value = zipcode.split("-")[0];
	zip2.value = zipcode.split("-")[1];
	addr1.value = road_address;
	if(addr2){
		addr2.focus();
	}

	parent.$.smartPop.close();
}