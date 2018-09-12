<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.board.db.*"%>

<%
	System.out.print("my_idea_list jsp 입장");
	int a = 0;

	String NAME = null;

	if (session.getAttribute("NAME") != null) {
		NAME = (String) session.getAttribute("NAME");
	}

	List boardList = (List) request.getAttribute("boardlist");
	int listcount = ((Integer) request.getAttribute("listcount")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
	int maxpage = ((Integer) request.getAttribute("maxpage")).intValue();
	int startpage = ((Integer) request.getAttribute("startpage")).intValue();
	int endpage = ((Integer) request.getAttribute("endpage")).intValue();
%>


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>You &amp; Orion - 의견접수 (Idea)</title>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="stylesheet" type="text/css" href="style/base.css" />
<link rel="stylesheet" type="text/css" href="style/you_n_orion.css" />
<link rel="stylesheet" type="text/css" href="style/board.css" />
<script type="text/javascript" src="script/common.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="Inc/Js/Script.js"></script>


</head>

<style>
A.applink:hover {
	border: 2px dotted #DCE6F4;
	padding: 2px;
	background-color: #ffff00;
	color: green;
	text-decoration: none
}

A.applink {
	border: 2px dotted #DCE6F4;
	padding: 2px;
	color: #2F5BFF;
	background: transparent;
	text-decoration: none
}

A.info {
	color: #2F5BFF;
	background: transparent;
	text-decoration: none
}

A.info:hover {
	color: green;
	background: transparent;
	text-decoration: underline
}

.gnb_wrap ul.topm li.onem {
	margin-left: 9px;
}

.gnb_wrap ul.topm li:first-child {
	margin-left: 0;
}
</style>
<body>

	<FORM name="form_idea" id="form_idea" method="post">
		<input type="hidden" name="auth_name" value="김한슬" /> <input
			type="hidden" name="auth_tel" value="010-5543-4530" /> <input
			type="hidden" name="auth_pass" value="1234" /> <input type="hidden"
			name="idx" id="idx" />
	</FORM>

	<div id="container">
		<div id="wrapper">

			<!-- Header -->
			<!--
			<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
			<script type="text/javascript" src="js/hk.core.js"></script>
			-->
			<!-- skip menu -->
			<ul class="skiplist">
				<li class="skip"><a href="#gnbnew">주메뉴 바로가기</a></li>
				<li class="skip"><a href="#subContents">본문내용으로 바로가기</a></li>
			</ul>
			<!-- //skip menu -->

			<div id="header" class="sub">

				<h1>
					<a href="main.jsp"><img src="images/common/logo.gif"
						alt="ORION" /></a>
				</h1>


				<!--<div id="gnb">
      <img src="images/common/gnb.gif" alt="임시 네비" usemap="#GNB" style="display:block;" />
      <script type="text/javascript">showFlash("/flash/subnevi_120711.swf", "100%", "100%;", "");</script> 
   </div>-->

				<div id="gnb">
					<!-- gnb_wrap -->

					<div class="gnb_wrap" id="gnbnew">
						<ul class="topm">
							<li class="onem"><a
								href="power_brand/productinfo8b29.jsp" class="oda"><img
									src="images/common/g1_np.png" class="od"
									title="new product" alt="new product" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('/images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="power_brand/productinfo8b29.jsp"><img
												src="images/common/g2_newp.png" class="_on"
												title="new product" alt="new product" /></a></li>
									</ul>
								</div> <!-- // twom --></li>

							<li class="onem"><a href="MarketO/MarketO_intro.jsp"
								class="oda"><img src="images/common/g1_market.png"
									class="od" title="Market O" alt="Market O" /></a> <!-- twom -->
								<div class="twom"
									style="left: -120px; background-image: url('images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="MarketO/sub01MarketO.jsp"><img
												src="images/common/g2_marketobaking.png" class="_on"
												title="마켓오 제과" alt="마켓오 제과" /></a></li>
										<li><a href="http://restaurant.themarketo.com/"><img
												src="images/common/g2_marketorestaurant.png"
												class="_on" title="마켓오 레스토랑" alt="마켓오 레스토랑" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="Dryou/sub00dryou.jsp"
								class="oda"><img src="images/common/g1_dr.png"
									class="od" title="Dr. you" alt="Dr. you" /></a> <!-- <a href="http://www.dr-you.co.kr/main.php" class="oda"><img src="/images/common/g1_dr.png" class="od" title="Dr. you" alt="Dr. you" /></a> -->
								<!-- twom -->
								<div class="twom" style="left: -120px;">
									<ul class="tm">
										<li><a href="Dryou/sub01diget.jsp"><img
												src="images/common/g2_diget.png" class="_on"
												title="Dr. You Diget" alt="Dr. You Diget" /></a></li>
										<li><a href="Dryou/sub02bar.jsp"><img
												src="images/common/g2_bar.png" class="_on"
												title="Dr. You BAR" alt="Dr. You BAR" /></a></li>
										<li><a href="Dryou/sub03kids.jsp"><img
												src="images/common/g2_kids.png" class="_on"
												title="Dr. You KIDS" alt="Dr. You KIDS" /></a></li>
										<li><a href="Dryou/sub04minty.jsp"><img
												src="images/common/g2_minty.png" class="_on"
												title="Dr. You MINTY" alt="Dr. You MINTY" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a
								href="..power_brand/productinfo78e0.jsp" class="oda"><img
									src="images/common/g1_orion.png" class="od"
									title="ORION POWER BRAND" alt="ORION POWER BRAND" /></a> <!-- twom -->
								<div class="twom"
									style="left: -70px; background-image: url('images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="power_brand/productinfo78e0.jsp"><img
												src="images/common/g2_product.png" class="_on"
												title="ORION POWER BRAND" alt="Product Info" /></a></li>
										<li><a href="power_brand/view_cfba4b.jsp"><img
												src="images/common/g2_cf.png" class="_on" title="CF"
												alt="CF" /></a></li>
									</ul>
								</div> <!-- // twom --></li>


							<li class="onem" style="display: none;"><a
								href="event/current_event.asp" class="oda"><img
									src="images/common/g1_event.png" class="od" title="EVENT"
									alt="EVENT" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="event/current_event.asp"><img
												src="images/common/g2_eventing.png" class="_on"
												title="진행중인 이벤트" alt="진행중인 이벤트" /></a></li>
										<li><a href="event/past_event.asp"><img
												src="images/common/g2_eventend.png" class="_on"
												title="완료된 이벤트" alt="완료된 이벤트" /></a></li>
									</ul>
								</div> <!-- // twom --></li>



							<li class="onem"><a href="you_n_orion/voc.jsp"
								class="oda"><img src="images/common/g1_customer.png"
									class="od" title="CUSTOMER" alt="CUSTOMER" /></a> <!-- twom -->
								<div class="twom">
									<ul class="tm">
										<li><a href="you_n_orion/voc.jsp"><img
												src="images/common/g2_voc01.png" class="_on"
												title="고객소리" alt="고객소리" /></a></li>
										<li><a href="Snak/you_n_orion/customer.jsp"><img
												src="images/common/g2_claim.png" class="_on"
												title="불만접수" alt="불만접수" /></a></li>
										<li><a href="you_n_orion/event150304.jsp"><img
												src="images/common/g2_idea.png" class="_on"
												title="의견접수" alt="의견접수" /></a></li>
										<li><a href="you_n_orion/faq.jsp"><img
												src="images/common/g2_faq01.png" class="_on" alt="FAQ"
												title="FAQ" /></a></li>
										<li><a href="you_n_orion/branch_net_01.jsp"><img
												src="images/common/g2_location.png" title="영업소 위치"
												class="_on" alt="영업소 위치" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="company/orion_intro_main.jsp"
								class="oda"><img src="images/common/g1_company.png"
									class="od" title="COMPANY" alt="COMPANY" /></a> <!-- twom -->
								<div class="twom">
									<ul class="tm">
										<li><a href="company/orion_intro_main.jsp"><img
												src="images/common/g2_com1.png" class="_on"
												title="오리온 소개" alt="오리온 소개" /></a></li>
										<li><a href="company/orion_history_main.jsp"><img
												src="images/common/g2_com2.png" class="_on"
												title="오리온 역사관" alt="오리온 역사관" /></a></li>
										<li><a href="company/orion_business_main.jsp"><img
												src="images/common/g2_com3.png" class="_on"
												title="오리온 사업영역" alt="오리온 사업영역" /></a></li>
										<li><a href="company/ir02.jsp"><img
												src="images/common/g2_com4.png" class="_on"
												title="투자정보" alt="IR정보" /></a></li>
										<li><a href="company/e-press_room_list.jsp"><img
												src="images/common/g2_com5.png" class="_on"
												title="PR정보" alt="PR정보" /></a></li>
										<li><a href="http://recruit.orionworld.com" title="[새창]"
											target="_blank"><img src="images/common/g2_com6.png"
												class="_on" title="채용공고" alt="채용공고" /></a></li>
										<li><a href="company/contactsus.jsp"><img
												src="images/common/g2_com7.png" class="_on"
												title="오시는 길" alt="오시는 길" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
						</ul>
					</div>
					<!-- // gnb_wrap -->
				</div>



				<div class="bgBodyL">
					<!-- 상단 좌측 bg -->
				</div>

				<div class="util_wrap" style="top: 14px;">
					<ul class="util">
						<li style="padding-top: 1px;"><a href="/"
							title="Korean homepage" style="border-right: 1px solid #767676">Korean</a></li>
						<li style="padding-top: 1px;"><a href="/ENG/"
							title="English homepage">English</a></li>
						<li><a style="padding: 0 3px 0 5px;"
							href="http://blog.orionworld.com/" target="_blank"><img
								src="images/button/btnBlog.png" alt="blog"></a></li>
						<li><a style="padding: 0 3px 0 0;"
							href="https://www.facebook.com/onlyorion" target="_blank"><img
								src="images/button/btnFace.png" alt="facebook"></a></li>
						<li><a style="padding: 0;"
							href="https://www.instagram.com/orion_world/" target="_blank"><img
								src="images/button/btnInstar.png" alt="instargrem"></a></li>
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
				<script type="text/javascript" src="/script/jquery-1.7.1.min.js"></script>
				<script type="text/javascript" src="/script/hk.core.js"></script>
				<div id="subSide">
					<div id="snb_wrap"
						style="background: url('/Ori/images/common/left_top03_bg.png') no-repeat top;">
						<div class="snb_in">
							<div class="nav_wrap">
								<ul class="nav">
									<li class="sub"><span><a
											href="you_n_orion/voc.jsp"><img
												src="images/common/lmenu_05.png" alt="VOC" /></a></span></li>
									<li class="sub"><span><a
											href="you_n_orion/customer.jsp"><img
												src="images/common/lmenu_06.png" alt="고객불만접수" /></a></span></li>
									<li class="sub"><span><a
											href="you_n_orion/faq.jsp"><img
												src="images/common/lmenu_07.png" alt="FAQ" /></a></span></li>
									<li class="sub"><span><a
											href="you_n_orion/event.jsp"><img
												src="images/common/lmenu_08.png" alt="기타 문의 사항" /></a></span></li>
									<li class="sub"><span><a
											href="you_n_orion/branch_net_01.jsp"><img
												src="images/common/lmenu_09.png" alt="영업소 찾기" /></a></span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- //Sub Side -->

				<!-- Sub Contents -->
				<div id="subContents">

					<div class="subTitleArea borderNone">
						<h3>
							<img src="images/you_n_orion/subtit03.png" alt="의견접수 (Idea)" />
						</h3>

						<div class="location">Home &gt; Customer &gt; 의견 접수 (Idea)</div>
					</div>

					<!-- 탭 메뉴 -->
					<div class="subTabMenu" id="subTab">
						<div class="new_tab_wrap">
							<ul class="new_tab">
								<li class="fst"><a href="./event150304.jsp"><img
										src="images/tab/tab_idea.png" alt="문의 접수" /></a></li>
								<li><a href="./find_my_inquiry02.jsp"><img
										src="images/tab/tab_my_inquiry_on.png" class="over"
										alt="접수내역 조회" /></a></li>
							</ul>
						</div>
					</div>
					<!-- //탭 메뉴 -->


					<div style="padding: 30px 0px 10px 0px;">

						<%=NAME%>님의 의견 접수 내역이
						<%=listcount%>건 조회되었습니다.<br />수정하실 내역을 클릭하여 주십시오.
					</div>

					<table summary="의견 접수 내역" class="boardListType">
						<caption>의견 접수 내역</caption>
						<colgroup>
							<col width="auto" />
							<col width="20%" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><img
									src="images/board/txt_title_lst.gif" alt="제목" /></th>
								<th scope="col" class="end"><img
									src="images/board/txt_date_lst.gif" alt="작성일" /></th>
							</tr>
						</thead>
						<tbody>
							<%
								for (int i = 0; i < boardList.size(); i++) {
									BoardBean bl = (BoardBean) boardList.get(i);
							%>
							<tr align="center" valign="middle">


								<td height="23" style="font-family: Tahoma; font-size: 10pt;"
									align="left"><a
									href="BoardModifyView.bo?NUM=<%=bl.getNUM()%>&PWD=<%=bl.getPWD()%>">
										<%=bl.getTITLE()%></a></td>
										<td><%=bl.getDAY()%></td>
									
						
							</tr>
							<%
								}
							%>
						</tbody>
					</table>

				</div>
				<!-- //Sub Contents -->

			</div>
			<!-- //Contents Body -->

		</div>

		<!-- Footer -->
		<div id="footerWrap">
			<div id="footer">
				<h2 class="hidden">하단메뉴</h2>
				<!-- footer menu -->
				<ul class="footerMenu">
					<li><a href="footer/pop_legal_notice.asp" target="_blank"
						title="[팝업]" onclick="footerPop(1)"><img
							src="images/common/footer_menu01.gif" alt="법적고지" /></a></li>
					<li><a href="footer/pop_user_guide.asp" target="_blank"
						title="[팝업]" onclick="footerPop(2)"><img
							src="images/common/footer_menu02.gif" alt="이용안내" /></a></li>
					<li><a href="members/pop_privacy.asp" target="_blank"
						title="[팝업]" onclick="footerPop(3)"><img
							src="images/common/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
					<li style="background: none"><a
						href="footer/pop_forbid_colleting_email.asp" target="_blank"
						title="[팝업]" onclick="footerPop(4)"><img
							src="images/common/footer_menu04.gif" alt="이메일주소수집거부" /></a></li>
					<!-- <li><a href="footer/pop_legal_notice.asp" target="_blank" title="제휴문의[팝업]" onclick="window.open(this.href, 'popLegal', 'width=600, height=460, left=300, top=200'); return false;"><img src="images/button/footer_menu01.gif" alt="제휴문의" /></a></li>
         <li><a href="footer/pop_user_guide.asp" target="_blank" title="이용안내[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="images/button/footer_menu02.gif" alt="이용안내" /></a></li>
         <li><a href="members/pop_privacy.asp" target="_blank" title="개인정보취급방침[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="images/button/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
         <li class="end"><a href="footer/pop_forbid_colleting_email.asp" target="_blank" title="이메일주소수집거부[팝업]" onclick="window.open(this.href, 'popEmail', 'width=600, height=347, left=300, top=200'); return false;"><img src="images/button/footer_menu04.gif" alt="이메일주소수집거부 " /></a></li>
          -->
				</ul>
				<!-- //footer menu -->
				<ul class="footerMenu2">
					<li><img src="images/common/address.gif"
						alt="서울시 용산구 문배동 30-10 / 전화번호 : 02-710-6000 / 제품 주문시 : 02-710-6084 / 소비자보호센터 : 02-716-2805 orionmaster@orionworld.com" /></li>
					<li><img src="images/common/footer_explorer.png"
						alt="오리온 Website 는  internet Explorer 8. 9 버젼에 최적화 되어 있습니다. " /></li>
					<li><img src="images/common/copyright.gif"
						alt="COPYRIGHT ORION CORP. ALL RIGHT RESERVED." /></li>
					<li><a
						href="http://www.crosscert.com/seal/orionworld.files/slide0001.htm"
						target="_blank" title="[새창]"
						style="position: relative; top: -20px; left: 20px"><img
							src="images/common/injeung.gif" class="ssil" alt="보안인증씰" /></a></li>
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
</body>
</html>