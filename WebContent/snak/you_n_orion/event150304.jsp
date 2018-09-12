
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>You &amp; Orion - 의견접수 (Idea)</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/copyingWeb03/style/base.css" />
<link rel="stylesheet" type="text/css" href="/copyingWeb03/style/you_n_orion.css" />
<link rel="stylesheet" type="text/css" href="/copyingWeb03/style/board.css" />
<script type="text/javascript" src="/copyingWeb03/script/common.js"></script>
<script type="text/javascript" src="/copyingWeb03/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/copyingWeb03/Inc/Js/Script.js"></script>
<script type="text/javascript" src="/copyingWeb03/js/jquery-1.7.2.min.js"></script>
			<script type="text/javascript" src="/copyingWeb03/js/hk.core.js"></script>
<script type="text/JavaScript">

	arrCode_1 = new Array('36', '71', '72', '73', '74', '75', '98', '100',
			'102', '105', '107', '111', '113', '115', '2', '3', '4', '5', '6',
			'1', '35', '85', '87', '89', '92', '94', '91', '83', '1', '2',
			'35', '5', '6', '1', '2', '5', '35', '6', '2', '1', '5', '6', '2',
			'5', '6', '1', '2', '5', '1', '6', '5', '2', '5', '1', '6', '1',
			'5', '1', '5', '6', '5', '1', '1', '5', '1', '5', '1', '1', '1',
			'1', '1', '1', '1');
	arrCode_2 = new Array('39', '40', '41', '42', '44', '65', '99', '101',
			'104', '106', '108', '112', '114', '116', '14', '20', '21', '23',
			'32', '82', '84', '86', '88', '90', '93', '95', '96', '97', '8',
			'15', '37', '56', '59', '7', '16', '25', '38', '60', '17', '45',
			'57', '61', '18', '22', '33', '46', '19', '24', '47', '62', '26',
			'77', '27', '48', '64', '10', '30', '11', '58', '78', '31', '49',
			'50', '29', '12', '80', '52', '53', '54', '55', '76', '79', '81');
	arrCode_Name = new Array('기타', '영업관련', '제품성분관련', '광고/판촉', '협찬문의', '제품 관련',
			'HR관련', '해외마케팅관련', '제품디자인관련', '홈페이지관련', '광고 관련', '이벤트문의', '아이디어',
			'기타', '초코송이', '모든 껌제품', '모든 사탕제품', '투니스', '초코파이', '촉촉한초코칩',
			'회원아이디', '생산및구매', '인사관련', '제품포장관련', '제품아이디어관련', 'IR관련', '해외영업관련',
			'마켓오', '초코칩쿠키', '에그몽', '회원탈퇴', '오감자', '미카카오케익', '다이제', '투유',
			'오징어땅콩', '회원기타문의', '신제품파이', '핫브레이크', '까메오', '땅콩강정', '오뜨', '도레미',
			'썬', '카스타드', '나', '그외 초콜릿제품', '콘칩', '베베', '후레쉬베리', '포카칩',
			'닥터유 99칼로리바', '스윙칩', '프리모', '다쿠아즈 미', '고소미', '도도한나쵸', '고래밥',
			'나쵸로카', '닥터유 초콜릿케익', '눈을감자', '왕고래밥', '통크', '강정류', '예감', '닥터유 라이스칩',
			'호두쿠키', '미쯔블랙', '웨하스', '아몬드와플', '닥터유 고단백영양바', '닥터유 식이섬유 크래커',
			'닥터유 골든키즈');
	function zipBoard(assort) {
		var aspName = "../../Myor/Member/zipBoardb1a0.jsp?ChangTmp=1&amp;strFrmName=frmMember_"
				+ assort;
		objZipWin = window
				.open(
						aspName,
						"zipCode",
						"top=150,left=500,width=400,height=300,menubar=no, directories=no, resize=no, status=no,scrollbars=yes");
		objZipWin.focus();
	}
	function chkSubmit(frm) {
		var reValue = false;
		if (frm.strAgree.checked == false) {
			alert("'개인정보 수집동의'에 동의해 주세요.");
			frm.strAgree.focus();
			return false;
		}
		/*
		 if (frm.strAssortCode.value == "") { alert("분류를 선택해주세요"); frm.strAssortCode.focus(); return false; }
		 if (frm.strAssortCode2.value == "") { alert("2차 분류를 선택해주세요"); frm.strAssortCode2.focus(); return false; }
		 */
		if (frm.NAME.value.length < 1) {
			alert("이름을 입력해주세요");
			frm.NAME.focus();
			return false;
		}
		if (frm.EMAIL_1.value.length < 1) {
			alert("이메일을 입력해주세요");
			frm.EMAIL_1.focus();
			return false;
		}
		if (frm.EMAIL_2.value.length < 1) {
			alert("이메일 도메인을 입력해주세요");
			frm.EAMIL_2.focus();
			return false;
		}
		if (frm.CALL_1.value.length < 2) {
			alert("전화번호를 입력해주세요");
			frm.CALL_1.focus();
			return false;
		}
		if (frm.CALL_2.value.length < 3) {
			alert("전화번호를 입력해주세요");
			frm.CALL_2.focus();
			return false;
		}
		if (frm.CALL_3.value.length < 3) {
			alert("전화번호를 입력해주세요");
			frm.CALL_3.focus();
			return false;
		}
		/*
		 if (frm.strZipCode.value.length < 1) { alert("주소를 입력해주세요"); frm.strZipCode.focus(); return false; }
		 */
		if (frm.ETC.value == "75" && frm.strPeriod.value.length < 1) {
			alert("유통기한을 입력해주세요");
			frm.ETC.focus();
		}
		if (frm.TITLE.value.length < 1) {
			alert("제목을 입력해주세요");
			frm.TITLE.focus();
			return false;
		}
		if (!frm.ETC[0].checked && !frm.ETC[1].checked
				&& !frm.strAssortCode[2].checked
				&& !frm.strAssortCode[3].checked) {
			alert("문의 유형을 선택해주세요.");
			return false;
		}
		if (frm.CONTENT.value.length < 1) {
			alert("내용을 입력해주세요");
			frm.CONTENT.focus();
			return false;
		}
		if (frm.PWD.value.length < 4) {
			alert("4자 이상의 비밀번호를 입력해주세요");
			frm.PWD.focus();
			return false;
		}
	}
	function chkPeriod() {
		var frm = document.frmMemberWrite;
		if (frm.ETC.value == "75") {
			document.all.disPeriod1.style.display = "";
			document.all.disPeriod2.style.display = "";
		} else {
			document.all.disPeriod1.style.display = "none";
			document.all.disPeriod2.style.display = "none";
		}
	}
	function font(NAME) {
		NAME.style.font = "small-caps bold 9pt gulim";
		document.all.first.style.font = "small-caps 9pt gulim";
	}
	function email_change() {
		objForm = document.frmMemberWrite;

		if (objForm.email_list.value == "") {
			objForm.EMAIL_2.readOnly = false;
		} else {
			objForm.EMAIL_2.readOnly = true;
		}
		objForm.EMAIL_2.value = objForm.email_list.value;
	}

</script>
<script type="text/javascript" src="Inc/Js/Script.js"></script>
</head>

<body>
	<div id="container">
		<div id="wrapper">

			<!-- Header -->
			<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
			<script type="text/javascript" src="js/hk.core.js"></script>
			<!-- skip menu -->
			<ul class="skiplist">
				<li class="skip"><a href="#gnbnew">주메뉴 바로가기</a></li>
				<li class="skip"><a href="#subContents">본문내용으로 바로가기</a></li>
			</ul>
			<!-- //skip menu -->

			<div id="header" class="sub">

				<h1>
					<a href="main.jsp"><img
						src="/copyingWeb03/images/common/logo.gif" alt="ORION" /></a>
				</h1>


				<!--<div id="gnb">
		<img src="/images/common/gnb.gif" alt="임시 네비" usemap="#GNB" style="display:block;" />
		<script type="text/javascript">showFlash("/flash/subnevi_120711.swf", "100%", "100%;", "");</script> 
	</div>-->

				<div id="gnb">
					<!-- gnb_wrap -->

					<style type="text/css">
.gnb_wrap ul.topm li.onem {
	margin-left: 9px;
}

.gnb_wrap ul.topm li:first-child {
	margin-left: 0;
}
</style>


					<div class="gnb_wrap" id="gnbnew">
						<ul class="topm">
							<li class="onem"><a href="/copyingWeb03/userSnakViewNew.snak?curPage=1"
								class="oda"><img src="/copyingWeb03/images/common/g1_np.png"
									class="od" title="new product" alt="new product" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('../../images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="/copyingWeb03/userSnakViewNew.snak?curPage=1"><img
												src="/copyingWeb03/images/common/g2_newp.png" class="_on"
												title="new product" alt="new product" /></a></li>
									</ul>
								</div> <!-- // twom --></li>

							<li class="onem"><a href="../MarketO/MarketO_intro.jsp"
								class="oda"><img src="/copyingWeb03/images/common/g1_market.png"
									class="od" title="Market O" alt="Market O" /></a> <!-- twom -->
								<div class="twom"
									style="left: -120px; background-image: url('/copyingWeb03/images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="../MarketO/sub01MarketO.jsp"><img
												src="/copyingWeb03/images/common/g2_marketobaking.png" class="_on"
												title="마켓오 제과" alt="마켓오 제과" /></a></li>
										<li><a href="http://restaurant.themarketo.com/"><img
												src="/copyingWeb03/images/common/g2_marketorestaurant.png"
												class="_on" title="마켓오 레스토랑" alt="마켓오 레스토랑" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="../Dryou/sub00dryou.jsp"
								class="oda"><img src="/copyingWeb03/images/common/g1_dr.png"
									class="od" title="Dr. you" alt="Dr. you" /></a> <!-- <a href="http://www.dr-you.co.kr/main.php" class="oda"><img src="/copyingWeb03/images/common/g1_dr.png" class="od" title="Dr. you" alt="Dr. you" /></a> -->
								<!-- twom -->
								<div class="twom"
									style="left: -120px; background-image: url('/copyingWeb03/images/common/two_bg.png')">
									<ul class="tm">
										<li><a href="../Dryou/sub01diget.jsp"><img
												src="/copyingWeb03/images/common/g2_diget.png" class="_on"
												title="Dr. You Diget" alt="Dr. You Diget" /></a></li>
										<li><a href="../Dryou/sub02bar.jsp"><img
												src="/copyingWeb03/images/common/g2_bar.png" class="_on"
												title="Dr. You BAR" alt="Dr. You BAR" /></a></li>
										<li><a href="../Dryou/sub03kids.jsp"><img
												src="/copyingWeb03/images/common/g2_kids.png" class="_on"
												title="Dr. You KIDS" alt="Dr. You KIDS" /></a></li>
										<li><a href="../Dryou/sub04minty.jsp"><img
												src="/copyingWeb03/images/common/g2_minty.png" class="_on"
												title="Dr. You MINTY" alt="Dr. You MINTY" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="/copyingWeb03/userSnakView.snak?curPage=1&category=1"
								class="oda"><img src="/copyingWeb03/images/common/g1_orion.png"
									class="od" title="ORION POWER BRAND" alt="ORION POWER BRAND" /></a>
								<!-- twom -->
								<div class="twom"
									style="left: -70px; background-image: url('/copyingWeb03/images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="/copyingWeb03/userSnakView.snak?curPage=1&category=1"><img
												src="/copyingWeb03/images/common/g2_product.png" class="_on"
												title="ORION POWER BRAND" alt="Product Info" /></a></li>
										<li><a href="../../userSnakView.snak?curPage=1&category=1"><img
												src="/copyingWeb03/images/common/g2_cf.png" class="_on" title="CF"
												alt="CF" /></a></li>
									</ul>
								</div> <!-- // twom --></li>


							<li class="onem" style="display: none;"><a
								href="../event/current_event.jsp" class="oda"><img
									src="/copyingWeb03/images/common/g1_event.png" class="od" title="EVENT"
									alt="EVENT" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('/copyingWeb03/images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="../event/current_event.jsp"><img
												src="/copyingWeb03/images/common/g2_eventing.png" class="_on"
												title="진행중인 이벤트" alt="진행중인 이벤트" /></a></li>
										<li><a href="../event/past_event.jsp"><img
												src="/copyingWeb03/images/common/g2_eventend.png" class="_on"
												title="완료된 이벤트" alt="완료된 이벤트" /></a></li>
									</ul>
								</div> <!-- // twom --></li>



							<li class="onem"><a href="../you_n_orion/voc.jsp"
								class="oda"><img src="/copyingWeb03/images/common/g1_customer.png"
									class="od" title="CUSTOMER" alt="CUSTOMER" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('/copyingWeb03/images/common/two_bg.png')">
									<ul class="tm">
										<li><a href="/copyingWeb03/snak/you_n_orion/voc.jsp"><img
												src="/copyingWeb03/images/common/g2_voc01.png" class="_on"
												title="고객소리" alt="고객소리" /></a></li>
										<li><a href="../you_n_orion/customer.jsp"><img
												src="/copyingWeb03/images/common/g2_claim.png" class="_on"
												title="불만접수" alt="불만접수" /></a></li>
										<li><a href="../you_n_orion/event150304.jsp"><img
												src="/copyingWeb03/images/common/g2_idea.png" class="_on"
												title="의견접수" alt="의견접수" /></a></li>
										<li><a href="../you_n_orion/faq.jsp"><img
												src="/copyingWeb03/images/common/g2_faq01.png" class="_on" alt="FAQ"
												title="FAQ" /></a></li>
										<li><a href="../you_n_orion/branch_net_01.jsp"><img
												src="/copyingWeb03/images/common/g2_location.png" title="영업소 위치"
												class="_on" alt="영업소 위치" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="../company/orion_intro_main.jsp"
								class="oda"><img src="/copyingWeb03/images/common/g1_company.png"
									class="od" title="COMPANY" alt="COMPANY" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('/copyingWeb03/images/common/two_bg.png')">
									<ul class="tm">
										<li><a href="../company/orion_intro_main.jsp"><img
												src="/copyingWeb03/images/common/g2_com1.png" class="_on"
												title="오리온 소개" alt="오리온 소개" /></a></li>
										<li><a href="../company/orion_history_main.jsp"><img
												src="/copyingWeb03/images/common/g2_com2.png" class="_on"
												title="오리온 역사관" alt="오리온 역사관" /></a></li>
										<li><a href="../company/orion_business_main.jsp"><img
												src="/copyingWeb03/images/common/g2_com3.png" class="_on"
												title="오리온 사업영역" alt="오리온 사업영역" /></a></li>
										<li><a href="../company/ir02.jsp"><img
												src="/copyingWeb03/images/common/g2_com4.png" class="_on"
												title="투자정보" alt="IR정보" /></a></li>
										<li><a href="../company/e-press_room_list.jsp"><img
												src="/copyingWeb03/images/common/g2_com5.png" class="_on"
												title="PR정보" alt="PR정보" /></a></li>
										<li><a href="http://recruit.orionworld.com/" title="[새창]"
											target="_blank"><img
												src="/copyingWeb03/images/common/g2_com6.png" class="_on"
												title="채용공고" alt="채용공고" /></a></li>
										<li><a href="../company/contactsus.jsp"><img
												src="/copyingWeb03/images/common/g2_com7.png" class="_on"
												title="오시는 길" alt="오시는 길" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
						</ul>
					</div>
					<!-- // gnb_wrap -->
				</div>

				<!-- global sites -->

				<!-- //global sites -->

				<!-- product search -->

				<!-- //product search -->

				<!-- 임시 맵 -->
				<!-- 
	<map id="GNB" name="GNB">
		<area shape="rect" coords="44,6,152,31" href="/marketO/submain.asp" alt="Market O" />
		<area shape="rect" coords="163,4,254,30" href="/dr_you/submain.asp" alt="Dr. you" />
		<area shape="rect" coords="270,4,424,31" href="/power_brand/submain.asp" alt="orion Power Brand" />
		<area shape="rect" coords="454,3,524,31" href="/event/current_event.asp" alt="Event" />
		<area shape="rect" coords="552,0,658,31" href="/you_n_orion/customer_center.asp" alt="You&Orion" />
		<area shape="rect" coords="688,2,787,32" href="" alt="Company" />
	</map> -->
				<div class="util_wrap" style="top: 14px;">
					<ul class="util">
						<li style="padding-top: 1px;"><a href="main.jsp"
							title="Korean homepage" style="border-right: 1px solid #767676">Korean</a></li>
						<li style="padding-top: 1px;"><a href="ENG/index.jsp"
							title="English homepage">English</a></li>
						<li><a style="padding: 0 3px 0 5px;"
							href="http://blog.orionworld.com/" target="_blank"><img
								src="/copyingWeb03/images/button/btnBlog.png" alt="blog"></a></li>
						<li><a style="padding: 0;"
							href="https://www.facebook.com/onlyorion" target="_blank"><img
								src="/copyingWeb03/images/button/btnFace.png" alt="facebook"></a></li>
					</ul>
				</div>
				<div class="bgBodyL">
					<!-- 상단 좌측 bg -->
				</div>

			</div>

			<script type="text/javascript">
			<!--
				var message = "";

				function clickIE() {
					if (document.all) {
						(message);

						return false;
					}
				}

				function clickNS(e) {
					if (document.layers
							|| (document.getElementById && !document.all)) {
						if (e.which == 1 || e.which == 2 || e.which == 3) {
							(message);

							return false;
						}
					}
				}

				if (document.layers) {
					document.captureEvents(Event.MOUSEDOWN);
					document.onmousedown = clickNS;
				} else {
					document.onmouseup = clickNS;
					document.oncontextmenu = clickIE;
				}
			//-->
			</script>
			<!-- //Header -->

			<!-- Contents Body -->
			<div id="contentsBody">

				<!-- Sub Side -->
		
				
				<script type="text/javascript"
					src="/copyingWeb03/script/jquery-1.7.1.min.js"></script>
				<script type="text/javascript" src="/copyingWeb03/script/hk.core.js"></script>
				<div id="subSide">
					<div id="snb_wrap"
						style="background: url('/copyingWeb03/images/common/left_top03_bg.png') no-repeat top;">
						<div class="snb_in">
							<div class="nav_wrap">
								<ul class="nav">
									<li class="sub"><span><a href="voc.jsp"><img
												src="/copyingWeb03/images/common/lmenu_05.png" alt="고객소리" /></a></span></li>
									<li class="sub"><span><a href="customer.jsp"><img
												src="/copyingWeb03/images/common/lmenu_06.png" alt="불만접수" /></a></span></li>
									<li class="sub"><span><a href="event150304.jsp"><img
												src="/copyingWeb03/images/common/lmenu_07.png" alt="의견접수" /></a></span></li>
									<li class="sub"><span><a href="faq.jsp"><img
												src="/copyingWeb03/images/common/lmenu_08.png" alt="자주묻는질문" /></a></span></li>
									<li class="sub"><span><a href="branch_net_01.jsp"><img
												src="/copyingWeb03/images/common/lmenu_09.png" alt="영업소 위치" /></a></span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- //Sub Side -->

				<!-- Sub Contents -->
				<!-- action="https://www.orionworld.com/Snak/Hapi/eventWriteProcess.asp"-->
				<form name="frmMemberWrite" method="post"
				
					action="/copyingWeb03/BoardAddAction.bo"
					onsubmit="return chkSubmit(this)" enctype="multipart/form-data">
					<input type='hidden' name='strIDcheck' value='0' /> <input
						type="hidden" name="strMode" value="W" /> <input type="hidden"
						name="iMemberCode" value="{$C_MemberCode}" /> <input
						type="hidden" name="ChangTmp" value="1" /> <input type="hidden"
						name="strAssortCode2" value="" />
					<div id="subContents">

						<div class="subTitleArea mb00 borderNone">
							<h3>
								<img src="/copyingWeb03/images/you_n_orion/subtit03.png"
									alt="의견접수 (Idea)" />
							</h3>

							<div class="location">Home &gt; Customer &gt; 의견 접수 (Idea)
							</div>
						</div>

						<!-- 탭 메뉴 -->
						<div class="subTabMenu" id="subTab">
							<div class="new_tab_wrap">
								<ul class="new_tab">
									<li class="fst"><a href="./event150304.jsp"><img
											src="/copyingWeb03/images/tab/tab_idea_on.png" class="over"
											alt="의견 접수" /></a></li>
									<li><a href="./find_my_inquiry02.jsp"><img
											src="/copyingWeb03/images/tab/tab_my_inquiry.png" alt="접수내역 조회" /></a></li>
								</ul>
							</div>
						</div>
						<!-- //탭 메뉴 -->


						<div class="subDesc02">
							<img src="/copyingWeb03/images/you_n_orion/event_img_01.gif"
								alt="오리온에서 진행되고 있는 제품 &amp; 이벤트의 대한 문의를 받고 있습니다. 소비자의 의견을 듣고, 더욱더 고객만족에 노력하도록 하겠습니다." />
						</div>

						<div class="agreementWrap">

							<!-- 개인정보수집동의 -->
							<div class="agreementBox mb45">
								<h4>
									<img src="/copyingWeb03/images/you_n_orion/tit_privacy.gif"
										alt="1. 개인정보수집 동의" />
								</h4>
								<a href="../members/pop_privacy.jsp" class="viewPrivacy"><img
									src="/copyingWeb03/images/button/view_privacy.gif" alt="개인정보취급방침 전체보기" /></a>
								<div class="agreeContents">
									■ 개인정보의 수집 및 이용목적<br /> 회사는 이용자 확인, 통계/분석을 통한 마케팅 자료로써 고객의 취향에
									맞는 최적의 서비스를 제공하기 위한 목적으로 필요한 최소한의 고객 개인정보를 수집하여 활용하고 있습니다.<br />
									<br /> ○회원관리 : 개인식별, 연령확인, 불만처리 등 민원처리, 고지사항 전달<br /> ○마케팅 및
									광고에 활용 : 신규 서비스(제품)개발 및 특화, 이벤트 등 광고성 정보 전달<br />
									<br /> ■ 수집하는 개인정보의 항목<br /> 회사는 회원가입, 상담, 서비스신청 등등을 위해 아래와
									같은 개인정보를 수집하고 있습니다.<br /> ○수집항목 : 로그인ID, 비밀번호, 이름, 자택 전화번호,
									휴대전화번호, 이메일, 이메일 수신여부, 문의게시판 등록 IP정보, 문의게시판 주소<br /> ○개인정보
									수집방법 : 홈페이지(회원가입, 상담게시판, 공개게시판)<br />
									<br /> ■ 개인정보의 보유 및 이용기간<br /> 회사에 제공하는 서비스를 이용하는 동안 회사는
									이용자들의 개인정보를 계속적으로 보유하며 서비스 제공 등을 위해 이용합니다.<br /> 개인정보 수집 및
									이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.<br /> 다만, 회사는 불량 회원의
									부정한 이용의 재발을 방지하기 위해, 이용계약 해지일로부터 1년간 해당 회원의 이메일을 보유할 수 있습니다.
									그리고 상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우
									회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.<br /> 이 경우 회사는 보관하는 정보를 그
									보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br />
									<br /> -계약 또는 청약철회 등에 관한 기록 : 5년<br /> -대금결제 및 재화 등의 공급에 관한
									기록 : 5년<br /> -소비자의 불만 또는 분쟁처리에 관한 기록 : 3년<br />
								</div>
								<fieldset>
									<legend>개인정보수집동의</legend>
									<p>
										<input type="checkbox" value="checkbox" id="agrPrivacy"
											name="strAgree" /> <label for="agrPrivacy">위의 개인정보
											제공에 동의합니다.</label>
									</p>
								</fieldset>
							</div>
							<!-- //개인정보수집동의 -->

							<!-- 의견 작성 -->
							<div class="inputOpinon">
								<h4>
									<img src="/copyingWeb03/images/you_n_orion/tit_customer_opinion.gif"
										alt="의견 작성" />
								</h4>
								<p class="textOpinonInfo">
									<img src="/copyingWeb03/images/you_n_orion/txt_opinon_info.gif"
										alt="이메일과 개인정보는 정확히 입력해 주셔야 답변을 받으실 수 있습니다." />
								</p>
								<div class="borderWrapper">
									<table summary="의견 작성 폼" class="boardInputType bgDot">
										<caption>의견 작성</caption>
										<colgroup>
											<col width="17%" />
											<col width="83%" />
										</colgroup>
										<tbody>
											<tr>
												<th scope="row"><label for="fname"><img
														src="/copyingWeb03/images/board/txt_name_ess.gif" alt="* 이름" /></label></th>
												<td><input type="text" size="18" name="NAME"
													class="textType" id="fname" title="이름 입력" /></td>
											</tr>
											<tr>
												<th scope="row"><label for="femail"><img
														src="/copyingWeb03/images/board/txt_email_ess.gif" alt="* 이메일" /></label></th>
												<td><input type="text" size="18" name="EMAIL_1"
													id="femail" value="" class="textType" title="이메일 계정입력" />
													 <input type="text" size="18" name="EMAIL_2" value=""
													class="textType" title="이메일 주소입력" /> <select
													onchange="javascript:email_change();" name="email_list"
													title="이메일계정 선택">
														<option value="">직접입력</option>
														<option value="naver.com">naver.com</option>
														<option value="chol.com">chol.com</option>
														<option value="dreamwiz.com">dreamwiz.com</option>
														<option value="empal.com">empal.com</option>
														<option value="freechal.com">freechal.com</option>
														<option value="gmail.com">gmail.com</option>
														<option value="hanafos.com">hanafos.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="hanmir.com">hanmir.com</option>
														<option value="hitel.net">hitel.net</option>
														<option value="hotmail.com">hotmail.com</option>
														<option value="korea.com">korea.com</option>
														<option value="lycos.co.kr">lycos.co.kr</option>
														<option value="nate.com">nate.com</option>
														<option value="netian.com">netian.com</option>
														<option value="paran.com">paran.com</option>
														<option value="yahoo.com">yahoo.com</option>
														<option value="yahoo.co.kr">yahoo.co.kr</option>
												</select></td>
											</tr>
											<tr>
												<th scope="row"><label for="contact"><img
														src="/copyingWeb03/images/board/txt_contact_ess.gif" alt="* 연락처" /></label></th>
												<td><select name="CALL_1" id="contact"
													title="연락처 앞번호 입력">
														<option value="010">010</option>
														<option value="011">011</option>
														<option value="016">016</option>
														<option value="017">017</option>
														<option value="018">018</option>
														<option value="019">019</option>
												</select> - <input type="text" name="CALL_2" size="6"
													class="textType" maxlength="4" title="가운데 번호 입력"
													onkeypress="onlyNumber()" /> - <input type="text"
													name="CALL_3" size="6" class="textType" maxlength="4"
													title="끝 번호 입력" onkeypress="onlyNumber()" /></td>
											</tr>
											<tr>
												<th scope="row"><label for="tit"><img
														src="/copyingWeb03/images/board/txt_title_ess.gif" alt="* 제목" /></label></th>
												<td><input type="text" size="65" class="textType"
													id="tit" title="제목 입력" name="TITLE" /></td>
											</tr>
											<tr>
												<th scope="row"><label for="etc"><img
														src="/copyingWeb03/images/board/txt_title_other.gif" alt="* 유형" /></label></th>
												<td><input type="radio" name="ETC" id="etc1"
													value="75" /><label for="etc1"
													style="padding: 0 15px 0 5px;">제품</label> <input
													type="radio" name="ETC" id="etc3" value="113" /><label
													for="etc3" style="padding: 0 15px 0 5px;">아이디어</label> <input
													type="radio" name="ETC" id="etc2" value="111" /><label
													for="etc2" style="padding: 0 15px 0 5px;">이벤트 문의</label> <input
													type="radio" name="ETC" id="etc4" value="115" /><label
													for="etc4" style="padding: 0 15px 0 5px;">기타</label></td>
											</tr>
											<tr>
												<th scope="row"><label for="cont"><img
														src="/copyingWeb03/images/board/txt_contents_ess.gif" alt="* 내용" /></label></th>
												<td><textarea cols="65" name="CONTENT" id="cont"
														rows="17" title="내용 입력"></textarea></td>
											</tr>
											<tr>
												<th scope="row"><label for="aflie"><img
														src="/copyingWeb03/images/board/txt_file_attach_ess.gif"
														alt="* 파일첨부" /></label></th>
												<td>

													<p style="height: 32px;">
														<input type="file" name="I_FILE" id="aflie1"
															class="input" size="50"
															style="border: 1px solid #e0e0e0; font-size: 12px; background-color: #f8f8f8;" />
													</p>파일명이 특수문자일 경우 등록된 파일에 손상(다운 불가능, 이미지 깨짐 등)이 생길 수 있습니다.

												</td>
											</tr>
											<tr class="end">
												<th scope="row"><label for="cuspass"><img
														src="/copyingWeb03/images/board/txt_pass_ess.gif" alt="* 비밀번호" /></label></th>
												<td>
													<div style="padding: 5px 0px 5px 0px;">
														접수하신 내역을 조회하거나 수정하기 위한 비밀번호입니다.<br /> (4~20자의 비밀번호를 기입하여
														주십시오.)
													</div> <input type="password" size="40" id="cuspass"
													name="PWD" class="textType" maxlength="20"
													title="비밀번호 입력" />
												</td>
											</tr>
										</tbody>
									</table>

								</div>
								<p style="margin-top: 10px;">
									<img src="/copyingWeb03/images/you_n_orion/txt_opinon_info3.png"
										alt="기타문의 사항 의견은 1개월 동안 저장되며 그 이후에는 삭제됩니다." />
								</p>
							</div>
							<!-- //의견 작성 -->

							<div class="bottomBtns">
								<div class="btnCenter">
									<input type="image" src="/copyingWeb03/images/button/register.gif"
										alt="등록" /> <a
										href="javascript:document.frmMemberWrite.reset();"><img
										src="/copyingWeb03/images/button/cancel.gif" alt="취소" /></a>
								</div>
							</div>

						</div>


					</div>
					<!-- //Sub Contents -->
				</form>
			</div>
			<!-- //Contents Body -->

		</div>

		<!-- Footer -->
		<div id="footerWrap">
			<div id="footer">
				<h2 class="hidden">하단메뉴</h2>
				<!-- footer menu -->
				<ul class="footerMenu">
					<li><a href="../footer/pop_legal_notice.jsp" target="_blank"
						title="[팝업]" onclick="footerPop(1)"><img
							src="/copyingWeb03/images/common/footer_menu01.gif" alt="법적고지" /></a></li>
					<li><a href="../footer/pop_user_guide.jsp" target="_blank"
						title="[팝업]" onclick="footerPop(2)"><img
							src="/copyingWeb03/images/common/footer_menu02.gif" alt="이용안내" /></a></li>
					<li><a href="../members/pop_privacy.jsp" target="_blank"
						title="[팝업]" onclick="footerPop(3)"><img
							src="/copyingWeb03/images/common/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
					<li style="background: none"><a
						href="../footer/pop_forbid_colleting_email.jsp" target="_blank"
						title="[팝업]" onclick="footerPop(4)"><img
							src="/copyingWeb03/images/common/footer_menu04.gif" alt="이메일주소수집거부" /></a></li>
					<!-- <li><a href="/snak/footer/pop_legal_notice.asp" target="_blank" title="제휴문의[팝업]" onclick="window.open(this.href, 'popLegal', 'width=600, height=460, left=300, top=200'); return false;"><img src="/images/button/footer_menu01.gif" alt="제휴문의" /></a></li>
			<li><a href="/snak/footer/pop_user_guide.asp" target="_blank" title="이용안내[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="/images/button/footer_menu02.gif" alt="이용안내" /></a></li>
			<li><a href="/snak/members/pop_privacy.asp" target="_blank" title="개인정보취급방침[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="/images/button/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
			<li class="end"><a href="/snak/footer/pop_forbid_colleting_email.asp" target="_blank" title="이메일주소수집거부[팝업]" onclick="window.open(this.href, 'popEmail', 'width=600, height=347, left=300, top=200'); return false;"><img src="/images/button/footer_menu04.gif" alt="이메일주소수집거부 " /></a></li>
			 -->
				</ul>
				<!-- //footer menu -->
				<ul class="footerMenu2">
					<li><img src="/copyingWeb03/images/common/address.gif"
						alt="서울시 용산구 문배동 30-10 / 전화번호 : 02-710-6000 / 제품 주문시 : 02-710-6084 / 소비자보호센터 : 02-716-2805 orionmaster@orionworld.com" /></li>
					<li><img src="/copyingWeb03/images/common/footer_explorer.png"
						alt="오리온 Website 는  internet Explorer 8. 9 버젼에 최적화 되어 있습니다. " /></li>
					<li><img src="/copyingWeb03/images/common/copyright.gif"
						alt="COPYRIGHT ORION CORP. ALL RIGHT RESERVED." /></li>
					<li><a
						href="http://www.crosscert.com/seal/orionworld.files/slide0001.htm"
						target="_blank" title="[새창]"
						style="position: relative; top: -20px; left: 20px"><img
							src="/copyingWeb03/images/common/injeung.gif" class="ssil" alt="보안인증씰" /></a></li>
				</ul>
			</div>
		</div>

		<script type="text/javascript">
		<!--
			var smartPhones = [ 'iphone', 'ipod', 'ipad', 'windows ce',
					'android', 'blackberry', 'nokia', 'webos', 'opera mini',
					'sonyerricsson', 'opera mobi', 'iemobile' ];

			for ( var i in smartPhones) {
				// 스마트폰 확인
				if (navigator.userAgent.toLowerCase().match(
						new RegExp(smartPhones[i]))) {
					$("#wrapper").css("overflow", "hidden").css("padding",
							"0 50px");
					$("#footerWrap").css("width", $(document).width());
				}
			}
		//-->
		</script>
		<!-- //Footer -->
	</div>

	<script type="text/javascript">
	<!--
		str = "" + location.pathname;
		loc = "";
		num = str.lastIndexOf("%");
		if (num > 0) {
			loc = "" + str.substr(0, num);
			location.href = "" + location.protocol + "/" + "/" + location.host
					+ loc;
		}
		-->
	</script>

</body>
</html>
<!-- Mirrored from www.orionworld.com/Snak/you_n_orion/event150304.asp by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 May 2017 00:38:41 GMT -->
</>
