
arrHandPhoneValue = new Array("010", "011", "016", "017", "018", "019");
arrHandPhoneName  = new Array("010", "011", "016", "017", "018", "019");

arrTelValue	 = new Array("02", "031", "032", "033", "041", "042", "043", "051", "052", "053", "054", "061" ," 062");
arrTelName	 = new Array("02", "031", "032", "033", "041", "042", "043", "051", "052", "053", "054", "061" ," 062");

/** 컴마 찍기를 위한 함수 */
String.prototype.trim = function() {
	return this.replace(/(^\s*)|(\s*$)/g, "");
} 

//숫자만 입력가능 (콤마 가능)
function onlyNumber(objForm) {
	var objElement = eval(objForm);
	var num ="-0123456789";
	event.returnValue = true;
  
	for (var i=0;i<objElement.value.length;i++) {
		if (-1 == num.indexOf(objElement.value.charAt(i)) && ","!=objElement.value.charAt(i)) {
			event.returnValue = false;
		}
	}
          
	if (!event.returnValue) {
		objElement.value="";
		objElement.focus();
	}    

	commaCal(objForm); 
}
	
// 자동계산 (콤마 보이기)
function commaCal(objForm) {
	var objElement = eval(objForm);

	commaDel(objForm);
	objElement.value = objElement.value.split(",");  
	commaInc(objForm);
}

// 입력값 콤마 제거하기
function commaDel(objForm) {   
	var objElement = eval(objForm);
	objElement.value = objElement.value.replace(/,/g,"");
}

// 입력값콤마 붙이기
function commaInc(objForm) {
	var objElement = eval(objForm);
	comma1000(objForm);
}

// 컴마(,) 찍기
function comma1000(objForm) { 
	var objElement = eval(objForm);
	var sOrg = objElement.value.trim(); 
  
	if (isNaN(sOrg) || sOrg.length==0) return "";
  
	var sRetVal      = "";
	var sTmpVal      = "";
	var sFractionVal = "";
  
	sOrg = sOrg.toString();
	sOrg = sOrg.replace(/,/g,"");
  
	var lLengh = sOrg.search(/\./);
  
	if (lLengh<0) {
		lLengh = sOrg.length;
	} else sFractionVal = sOrg.substr(lLengh);
  
	lLengh         = lLengh;
	var lRemainder = lLengh % 3;
  
	if (lRemainder == 0 && lLengh > 0)
		lRemainder  = 3;
  
	sRetVal = sOrg.substr(0,lRemainder);
  
	while(lRemainder < lLengh) {
		sTmpVal = sTmpVal + "," + sOrg.substr(lRemainder,3);
		lRemainder  += 3;
	}

	if (sRetVal == "-") sTmpVal = sTmpVal.substr(1,sTmpVal.length);

	sRetVal = sRetVal + sTmpVal + sFractionVal;

	objElement.value = sRetVal ;
}
  
// 컴마(,)를 없앤 숫자를 반환
function commaNone(sOrg) {
	var nm;
	sOrg = sOrg.replace(/,/g,""); 
	nm = parseFloat(sOrg).toString();
	return (isNaN(nm)?0:nm);
}

/** 이미지 경로를 받아서 현재위치에 보여진다 */
function getImage(temp,w,h) {
	if (StartMode == 1)	{
//		HTMLEDITeditorDiv.document.body.focus();
		var selectedRange = EditorBodyDiv.document.selection.createRange();
		selectedRange.pasteHTML("<img src=\""+ temp +"\" border=\"0\" width=" + w +"height="+ h +"><br>");
	}
	else	{
		document.Form1.txtBody.value = document.Form1.txtBody.value + "<img src="+temp+" border=\"0\" width="+ w+" height="+ h +"><br>";
	}
}

/** Flash 경로를 받아서 현재위치에 보여진다 */
function getFlash(temp,w,h) {
	DesignArea.document.body.focus();

	var selectedRange = document.selection.createRange();
	pasteHTML =  "<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\" width="+ w +" height="+ h +">"
    pasteHTML += "<param name=\"movie\" value=\""+temp+"\">"
    pasteHTML += "<param name=\"quality\" value='high'>"
    pasteHTML += "<embed src=\""+temp+"\" quality=\"high\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" width="+ w +" height="+ h +"></embed>"
	pasteHTML += "</object>"
	selectedRange.pasteHTML(pasteHTML);

}


/* 셀렉트박스 이미지 삭제 */
function Board_Select(selectedIndex){
    selectedOptIndex = selectedIndex;
    document.goods.img_list[selectedIndex].selected = true;

}

/* 파일 업로드 프로그래스 바 */
function UploadStart(This_Form,theUniqueID){

		strAppVersion = navigator.appVersion; 
		if (strAppVersion.indexOf('MSIE')!=-1 && 
	          strAppVersion.substr(strAppVersion.indexOf('MSIE')+5,1) > 4) { 
	          winstyle = "dialogWidth=480px; dialogHeight:140px; center:yes"; 
	          window.showModelessDialog("progressbar.asp?nav=ie&ID=" + theUniqueID, "probarwindow", winstyle); 
	    } else { 
	          winpos = "left=" + ((window.screen.width-380)/2)+",top=" +
	               ((window.screen.height-110)/2); 
	          winstyle = "width=480,height=110,status=no,toolbar=no,menubar=no," + 
	               "location=no,resizable=no,scrollbars=no,copyhistory=no," + winpos; 
	          window.open("progressbar.asp?ID=" + theUniqueID ,"probarwindow",winstyle); 
	    } 
	    This_Form.action = This_Form.action +"?progressid="+theUniqueID;
}

function SelectBox(strInputName, strArea, arrName,strCode,strMent) {
	// 조건이 없는 선택박스
	var iCnt = eval(arrName+"Value.length");
	var str = ''
	
	if (strMent != '') {
	   str = str+"<option value=''>"+strMent+"</option>";
	}

	for(i=0; i<iCnt; i++)	{
		 eval("code="+arrName+"Value[i]");
		 eval("name="+arrName+"Name[i]");
		 str = str + "<option value='"+ code +"'";
		 if (code == strCode) {
			 str = str +" selected";
		 }
		 str = str + ">"+ name +"</option>";
	}

	strInputForm = "<select name='"+ strInputName +"' size='1'" + ">";

	strInputForm += str + "</select>";
	document.getElementById(strArea).innerHTML = strInputForm;
}

function subCategoryBox(strInputName, iCategory_1, iCategory_2, iSize) {
	var iCnt = arrCode_1.length;
	var str = "";

	str = str+"<option value=''"

	if (iCategory_2 == "") {
		str = str +" selected";
	}

	str = str+"> - 선 택 -</option>";

	for(i=0; i<iCnt; i++)	{
		var strCode_1 = arrCode_1[i];
		var strCode_2 = arrCode_2[i];
		var strName_2 = arrCode_Name[i];

		if (iCategory_1 == strCode_1) {
			str = str + "<option value='"+ strCode_2 +"'";

			if (iCategory_2 == strCode_2) {
				str = str +" selected";
			}

			str = str+">"+strName_2+"</option>";
		}
	}

	areaList = "<select name='"+strInputName+"' size='"+iSize+"' class='area_Category' onchange='abcd(this.value)'>"
	areaList += str + "</select>"
	document.getElementById(Category_2_Area).innerHTML = areaList;
}

function abcd(value)
{
	//alert(value);
	//if (value == 65)
	//	document.all.aaa.style.display="none";
}

function TimeSelectBox(strInputName, strInputArea, iMinValue, iMaxValue, iStep, strCode, strMent, strMode) {

	var strTemp = "<option value=''>"+strMent+"</option>";

	for(i=iMinValue; i<=iMaxValue; i=i+iStep)	{
	     strI = "00"+String(i);
		 strI = strI.substr(strI.length-2,2)
		 strTemp = strTemp + "<option value='"+ strI +"'";

		 if (strI == strCode) {
			 strTemp = strTemp + " selected";
		 }
		 strTemp = strTemp + ">"+ strI;
		 
		 if (strMode == "M") {
            strTemp = strTemp + ":00";
		 }

		 strTemp = strTemp+"</option>";
	}

	strInputForm = "<select name='"+ strInputName +"' size='1'" + ">";
	strInputForm += strTemp + "</select>";

	document.getElementById(strInputArea).innerHTML = strInputForm;
}


function SelectChoice(arrName, strCode) {
	var strValue = "";
	var iCnt = eval(arrName+"Value.length");

	for(i=0; i<iCnt; i++)	{
		 eval("code="+arrName+"Value[i]");
		 eval("name="+arrName+"Name[i]");

		 if (code == strCode) {
            strValue = name;
		 }
	}
	document.write(strValue);
}

function RadioButton(strInputName, strInputArea, arrName,strCode) {
	var iCnt = eval(arrName+"Value.length");
	var str = "";

	for(i=0; i<iCnt; i++)	{
		 eval("code="+arrName+"Value[i]");
		 eval("name="+arrName+"Name[i]");
		 str = str + "<input type='radio' name='"+strInputName+"' value='"+ code +"'";
		 if (code == strCode || (strCode == "" && i == 0)) {
			 str = str +" checked";
		 }
		 str = str + ">"+ name +"&nbsp;&nbsp;";
	}

	strInputForm = str;
	document.getElementById(strInputArea).innerHTML = strInputForm;
}

function ChoiceRadioButton(strInputName, strInputArea, arrName,strCode) {
	var iCnt = eval(arrName+"Value.length");
	var str = "";

	for(i=0; i<iCnt; i++)	{
		 eval("code="+arrName+"Value[i]");
		 eval("name="+arrName+"Name[i]");

		 if (code == strCode || (strCode == "" && i == 0)) {
			str = str + "<input type='radio' name='"+strInputName+"' value='"+ code +"' checked>" + name;
		 }
	}

	strInputForm = str;
	document.getElementById(strInputArea).innerHTML = strInputForm;
}

// objCurrent 객체 내용 길이 체크해서 len 길이 이상이 되면 objNext 객체로 포커스 이동
// onKeyUp
function checkNext(objCurrent, objNext, len)
{
	if(len <= objCurrent.value.length)
	{
		objNext.focus();
		objNext.select();
	}
}

// 숫자 입력만 허용
// onKeyPress
function onlyNumber()
{
  if ((event.keyCode < 48) || (57 < event.keyCode)) event.returnValue=false;
}


// 파일 첨부 허용, 금지 체크
function file_upload_ext(frmFile) {

	var img = new Image();
	
	if (frmFile.value != "") {
		//img.dynsrc = frmFile.value;	
		imgFileSize = img.fileSize;	
		var str1 = frmFile.value;
		strlen = str1.length;
					
		for (i = 0;i < str1.length;i++) {
			ch = str1.charAt(i);
			if (ch == "\\"){
				   var last_i = i;
				   var fileyn = "Y" 
			}
		}
	
		last_i = last_i +1;
		endstr = strlen - last_i;
		str = str1.substr(last_i, endstr);
		var strlen = str.length;
		strlen = parseInt(strlen);
			
		str_file = str.substr(strlen-3,strlen-1);
		str_file = str_file.toUpperCase();
			
		if((str_file != 'JPG') && (str_file != 'GIF') && (str_file != 'PNG') && (str_file != 'PDF') && (str_file != 'ZIP') && (str_file != 'DOC') && (str_file != 'HWP') && (str_file != 'XLS') && (str_file != 'PPT') && (str_file != 'TXT') && (str_file != 'SWF') && (str_file != 'MPEG') && (str_file != 'MPG') && (str_file != 'ASF') && (str_file != 'AVI') && (str_file != 'WMV')){			
			alert("업로드가 금지된 파일입니다.");
			frmFile.focus();
			return false;
		
		} else {
			return true;
		}
	}
	
	return false;
}

// 이메일 정규식 체크 
function emailEreg(str) {
	if (str.search(/(\S+)@(\S+)\.(\S+)/) == -1) {
		alert("올바른 이메일주소를 입력하세요.");
		return false;
	} else {
		return true;
	}
} 
