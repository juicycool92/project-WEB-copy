<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dr.You - KIDS</title>
<link rel="stylesheet" type="text/css" href="../../style/base.css" />
<link rel="stylesheet" type="text/css" href="../../style/dr_you.css" />
<script type="text/javascript" src="../../script/common.js"></script>
</head>
<body>
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
</style>
	<div id="container">
		<div id="wrapper">

			<!-- Header -->
			<script type="text/javascript" src="../../js/jquery-1.7.2.min.js"></script>
			<script type="text/javascript" src="../../js/hk.core.js"></script>
			<!-- skip menu -->
			<ul class="skiplist">
				<li class="skip"><a href="#gnbnew">주메뉴 바로가기</a></li>
				<li class="skip"><a href="#subContents">본문내용으로 바로가기</a></li>
			</ul>
			<!-- //skip menu -->

			<div id="header" class="sub">

				<h1>
					<a href="../../main.jsp"><img
						src="../../images/common/logo.gif" alt="ORION" /></a>
				</h1>


				<!--<div id="gnb">
		<img src="../../images/common/gnb.gif" alt="임시 네비" usemap="#GNB" style="display:block;" />
		<script type="text/javascript">showFlash("../../flash/subnevi_120711.swf", "100%", "100%;", "");</script> 
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
							<li class="onem"><a href="../../userSnakViewNew.snak?curPage=1"
								class="oda"><img src="../../images/common/g1_np.png"
									class="od" title="new product" alt="new product" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('../../images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="../../userSnakViewNew.snak?curPage=1"><img
												src="../../images/common/g2_newp.png" class="_on"
												title="new product" alt="new product" /></a></li>
									</ul>
								</div> <!-- // twom --></li>

							<li class="onem"><a href="../MarketO/MarketO_intro.jsp"
								class="oda"><img src="../../images/common/g1_market.png"
									class="od" title="Market O" alt="Market O" /></a> <!-- twom -->
								<div class="twom"
									style="left: -120px; background-image: url('../../images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="../MarketO/sub01MarketO.jsp"><img
												src="../../images/common/g2_marketobaking.png" class="_on"
												title="마켓오 제과" alt="마켓오 제과" /></a></li>
										<li><a href="http://restaurant.themarketo.com/"><img
												src="../../images/common/g2_marketorestaurant.png"
												class="_on" title="마켓오 레스토랑" alt="마켓오 레스토랑" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="../Dryou/sub00dryou.jsp"
								class="oda"><img src="../../images/common/g1_dr.png"
									class="od" title="Dr. you" alt="Dr. you" /></a> <!-- <a href="http://www.dr-you.co.kr/main.php" class="oda"><img src="../../images/common/g1_dr.png" class="od" title="Dr. you" alt="Dr. you" /></a> -->
								<!-- twom -->
								<div class="twom"
									style="left: -120px; background-image: url('../../images/common/two_bg.png')">
									<ul class="tm">
										<li><a href="../Dryou/sub01diget.jsp"><img
												src="../../images/common/g2_diget.png" class="_on"
												title="Dr. You Diget" alt="Dr. You Diget" /></a></li>
										<li><a href="../Dryou/sub02bar.jsp"><img
												src="../../images/common/g2_bar.png" class="_on"
												title="Dr. You BAR" alt="Dr. You BAR" /></a></li>
										<li><a href="../Dryou/sub03kids.jsp"><img
												src="../../images/common/g2_kids.png" class="_on"
												title="Dr. You KIDS" alt="Dr. You KIDS" /></a></li>
										<li><a href="../Dryou/sub04minty.jsp"><img
												src="../../images/common/g2_minty.png" class="_on"
												title="Dr. You MINTY" alt="Dr. You MINTY" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="../../userSnakView.snak?curPage=1&category=1"
								class="oda"><img src="../../images/common/g1_orion.png"
									class="od" title="ORION POWER BRAND" alt="ORION POWER BRAND" /></a>
								<!-- twom -->
								<div class="twom"
									style="left: -70px; background-image: url('../../images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="../../userSnakView.snak?curPage=1&category=1"><img
												src="../../images/common/g2_product.png" class="_on"
												title="ORION POWER BRAND" alt="Product Info" /></a></li>
										<li><a href="../power_brand/view_cfba4b.jsp"><img
												src="../../images/common/g2_cf.png" class="_on" title="CF"
												alt="CF" /></a></li>
									</ul>
								</div> <!-- // twom --></li>


							<li class="onem" style="display: none;"><a
								href="../event/current_event.asp.html" class="oda"><img
									src="../../images/common/g1_event.png" class="od" title="EVENT"
									alt="EVENT" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('/images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="../event/current_event.asp.html"><img
												src="../../images/common/g2_eventing.png" class="_on"
												title="진행중인 이벤트" alt="진행중인 이벤트" /></a></li>
										<li><a href="../event/past_event.asp.html"><img
												src="../../images/common/g2_eventend.png" class="_on"
												title="완료된 이벤트" alt="완료된 이벤트" /></a></li>
									</ul>
								</div> <!-- // twom --></li>



							<li class="onem"><a href="../you_n_orion/voc.jsp"
								class="oda"><img src="../../images/common/g1_customer.png"
									class="od" title="CUSTOMER" alt="CUSTOMER" /></a> <!-- twom -->
								<div class="twom" style="background-image: url('../../images/common/two_bg.png')">
									<ul class="tm">
										<li><a href="../you_n_orion/voc.jsp"><img
												src="../../images/common/g2_voc01.png" class="_on"
												title="고객소리" alt="고객소리" /></a></li>
										<li><a href="../you_n_orion/customer.jsp"><img
												src="../../images/common/g2_claim.png" class="_on"
												title="불만접수" alt="불만접수" /></a></li>
										<li><a href="../you_n_orion/event150304.jsp"><img
												src="../../images/common/g2_idea.png" class="_on"
												title="의견접수" alt="의견접수" /></a></li>
										<li><a href="../you_n_orion/faq.jsp"><img
												src="../../images/common/g2_faq01.png" class="_on" alt="FAQ"
												title="FAQ" /></a></li>
										<li><a href="../you_n_orion/branch_net_01.jsp"><img
												src="../../images/common/g2_location.png" title="영업소 위치"
												class="_on" alt="영업소 위치" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a
								href="../company/orion_intro_main.jsp" class="oda"><img
									src="../../images/common/g1_company.png" class="od"
									title="COMPANY" alt="COMPANY" /></a> <!-- twom -->
								<div class="twom" style="background-image: url('../../images/common/two_bg.png')">
									<ul class="tm">
										<li><a href="../company/orion_intro_main.jsp"><img
												src="../../images/common/g2_com1.png" class="_on"
												title="오리온 소개" alt="오리온 소개" /></a></li>
										<li><a href="../company/orion_history_main.jsp"><img
												src="../../images/common/g2_com2.png" class="_on"
												title="오리온 역사관" alt="오리온 역사관" /></a></li>
										<li><a href="../company/orion_business_main.jsp"><img
												src="../../images/common/g2_com3.png" class="_on"
												title="오리온 사업영역" alt="오리온 사업영역" /></a></li>
										<li><a href="../company/ir02.jsp"><img
												src="../../images/common/g2_com4.png" class="_on"
												title="투자정보" alt="IR정보" /></a></li>
										<li><a href="../company/e-press_room_list.jsp"><img
												src="../../images/common/g2_com5.png" class="_on"
												title="PR정보" alt="PR정보" /></a></li>
										<li><a href="http://recruit.orionworld.com/" title="[새창]"
											target="_blank"><img
												src="../../images/common/g2_com6.png" class="_on"
												title="채용공고" alt="채용공고" /></a></li>
										<li><a href="../company/contactsus.jsp"><img
												src="../../images/common/g2_com7.png" class="_on"
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
		<area shape="rect" coords="44,6,152,31" href="../../marketO/submain.asp.htm" alt="Market O" />
		<area shape="rect" coords="163,4,254,30" href="../../dr_you/submain.asp.htm" alt="Dr. you" />
		<area shape="rect" coords="270,4,424,31" href="../../power_brand/submain.asp.htm" alt="orion Power Brand" />
		<area shape="rect" coords="454,3,524,31" href="../../event/current_event.asp.htm" alt="Event" />
		<area shape="rect" coords="552,0,658,31" href="../../you_n_orion/customer_center.asp.htm" alt="You&Orion" />
		<area shape="rect" coords="688,2,787,32" href="" alt="Company" />
	</map> -->
				<div class="util_wrap" style="top: 14px;">
					<ul class="util">
						<li style="padding-top: 1px;"><a
							href="../../main.jsp" title="Korean homepage"
							style="border-right: 1px solid #767676">Korean</a></li>
						<li style="padding-top: 1px;"><a href="../../ENG/ENG.html"
							title="English homepage">English</a></li>
						<li><a style="padding: 0 3px 0 5px;"
							href="http://blog.orionworld.com/" target="_blank"><img
								src="../../images/button/btnBlog.png" alt="blog"></a></li>
						<li><a style="padding: 0;"
							href="https://www.facebook.com/onlyorion" target="_blank"><img
								src="../../images/button/btnFace.png" alt="facebook"></a></li>
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
					src="../../script/jquery-1.7.1.min.js"></script>
				<script type="text/javascript" src="../../script/hk.core.js"></script>
				<div id="subSide">
					<div id="snb_wrap"
						style="background: url('../../images/common/left_top06_bg.png') no-repeat top;">
						<div class="snb_in">
							<div class="nav_wrap">
								<ul class="nav">
									<li class="sub"><span><a href="sub00dryou.jsp"><img
												src="../../images/common/lmenu_17.png" alt="Dr.you" /></a></span>
										<ul class="twot">
											<li><a href="sub01diget.jsp"><img
													src="../../images/common/lmenu_sub_d01.png" alt="닥터유 다이제" /></a></li>
											<li><a href="sub02bar.jsp"><img
													src="../../images/common/lmenu_sub_d02.png" alt="닥터유 바" /></a></li>
											<li><a href="sub03kids.jsp"><img
													src="../../images/common/lmenu_sub_d03.png" alt="닥터유 키즈" /></a></li>
											<li><a href="sub04minty.jsp"><img
													src="../../images/common/lmenu_sub_d04.png" alt="닥터유 민티" /></a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- //Sub Side -->

				<!-- Sub Contents -->
				<div id="subContents">

					<div class="subTitleArea">
						<h3>
							<img src="../../images/dr_you/sub03.png" alt="Dr. You KIDS" /> <a
								style="margin-left: 15px;" href="http://blog.orionworld.com/"
								target="_blank"><img src="../../images/icon/btnBlog.png"
								alt="블로그" /></a> <a style="margin-left: 1px;"
								href="https://www.facebook.com/onlyorion" target="_blank"><img
								src="../../images/icon/btnFacebook.png" alt="페이스북" /></a> <a
								style="margin-left: 1px;"
								href="https://www.instagram.com/orion_world/" target="_blink"><img
								src="../../images/marketO/btnInstar.png" alt="마켓오 인스타그램" /></a>
						</h3>

						<div class="location">Home &gt; Dr.You &gt; Dr. You KIDS</div>
					</div>

					<div class="newPoductContents03">
						<img src="../../images/dr_you/sub03_cont1.png"
							alt="안심하고 먹을 수 있는 영양간식" class="mb60" usemap="#dryouKidsMap">
						<map name="dryouKidsMap">
							<area shape="rect" coords="160,143,232,168" href="#dryouKidsmilk"
								title="청정목장우유쿠키 자세히보기">
							<area shape="rect" coords="282,143,356,168"
								href="#dryouKidspumpkin" title="해남단호박쿠키 자세히보기">
							<area shape="rect" coords="412,143,482,168"
								href="#dryouKidschesse" title="임실치즈쿠키 자세히보기">
						</map>
						<img src="../../images/dr_you/sub03_cont2.png"
							alt="임실치즈쿠키 알러지를 일으킬 수 있는 밀가루 NO! 쌀로 만들어 안심할 수 있는 쿠키 아이에게 과민반응을 일으킬 수 있는 밀가루 대신 임금님 수라상에 올랐을 만큼 품질 좋기로 유명한 100%순수 이천쌀 36% 함유 더 좋은 국내산 원료를 고집합니다. 안심하고 먹을 수 있는 최고급산지 원료 전북임실의 순수 임실자연치즈 3.6%함유 (생물환산기준 치즈 28%함유) 우리아이를 위한 영양설계 성장기 아이를 위한 제품별 영양설계 머리가 좋아하는 DHA, EPA(제품 100g당 각 24.35hmg,38.51mg)"
							class="mb60" id="dryouKidschesse" /> <img
							src="../../images/dr_you/sub03_cont3.png"
							alt="해남 단호박 쿠키 알러지를 일으킬 수 있는 밀가루 NO! 쌀로 만들어 안심할 수 있는 쿠키 아이에게 과민반응을 일으킬 수 있는 밀가루 대신 임금님 수라상에 올랐을 만큼 품질 좋기로 유명한 100%순수 이천쌀 36.7% 함유 더 좋은 국내산 원료를 고집합니다. 안심하고 먹을 수 있는 최고급산지 원료 우리땅에서 나고 자란 해남산 단호박 농축액 3.2%함유 (생물환산기준 치즈 29%함유) 우리아이를 위한 영양설계 성장기 아이를 위한 제품별 영양설계 우리아이 성장에 필요한 비타민 (A,B1,B2, 엽산). 무기질(칼슘, 철분)"
							class="mb60" id="dryouKidspumpkin" /> <img
							src="../../images/dr_you/sub03_cont4.png"
							alt="청정목장 우유쿠키 알러지를 일으킬 수 있는 밀가루 NO! 쌀로 만들어 안심할 수 있는 쿠키 아이에게 과민반응을 일으킬 수 있는 밀가루 대신 임금님 수라상에 올랐을 만큼 품질 좋기로 유명한 100%순수 이천쌀 41.3% 함유 더 좋은 국내산 원료를 고집합니다. 안심하고 먹을 수 있는 최고급산지 원료 강원도 청정범산목장에서 만든 유기농 우유 3.5% 함유 우리아이를 위한 영양설계 성장기 아이를 위한 제품별 영양설계 제품 100g에 우유 한 잔의 칼슘이 그대로! 뼈가 좋아하는 칼슘과 칼슘의 흡수를 도와주는 비타민D"
							id="dryouKidsmilk" />
					</div>

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
					<li><a href="../footer/pop_legal_nojsp.html"
						target="_blank" title="[팝업]" onclick="footerPop(1)"><img
							src="../../images/common/footer_menu01.gif" alt="법적고지" /></a></li>
					<li><a href="../footer/pop_user_guide.html"
						target="_blank" title="[팝업]" onclick="footerPop(2)"><img
							src="../../images/common/footer_menu02.gif" alt="이용안내" /></a></li>
					<li><a href="../members/pop_privacy.html" target="_blank"
						title="[팝업]" onclick="footerPop(3)"><img
							src="../../images/common/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
					<li style="background: none"><a
						href="../footer/pop_forbid_colleting_email.html"
						target="_blank" title="[팝업]" onclick="footerPop(4)"><img
							src="../../images/common/footer_menu04.gif" alt="이메일주소수집거부" /></a></li>
					<!-- <li><a href="../footer/pop_legal_notice.asp.html" target="_blank" title="제휴문의[팝업]" onclick="window.open(this.href, 'popLegal', 'width=600, height=460, left=300, top=200'); return false;"><img src="../../images/button/footer_menu01.gif" alt="제휴문의" /></a></li>
			<li><a href="../footer/pop_user_guide.asp.html" target="_blank" title="이용안내[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="../../images/button/footer_menu02.gif" alt="이용안내" /></a></li>
			<li><a href="../members/pop_privacy.asp.html" target="_blank" title="개인정보취급방침[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="../../images/button/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
			<li class="end"><a href="../footer/pop_forbid_colleting_email.asp.html" target="_blank" title="이메일주소수집거부[팝업]" onclick="window.open(this.href, 'popEmail', 'width=600, height=347, left=300, top=200'); return false;"><img src="../../images/button/footer_menu04.gif" alt="이메일주소수집거부 " /></a></li>
			 -->
				</ul>
				<!-- //footer menu -->
				<ul class="footerMenu2">
					<li><img src="../../images/common/address.gif"
						alt="서울시 용산구 문배동 30-10 / 전화번호 : 02-710-6000 / 제품 주문시 : 02-710-6084 / 소비자보호센터 : 02-716-2805 orionmaster@orionworld.com" /></li>
					<li><img src="../../images/common/footer_explorer.png"
						alt="오리온 Website 는  internet Explorer 8. 9 버젼에 최적화 되어 있습니다. " /></li>
					<li><img src="../../images/common/copyright.gif"
						alt="COPYRIGHT ORION CORP. ALL RIGHT RESERVED." /></li>
					<li><a
						href="http://www.crosscert.com/seal/orionworld.files/slide0001.htm"
						target="_blank" title="[새창]"
						style="position: relative; top: -20px; left: 20px"><img
							src="../../images/common/injeung.gif" class="ssil" alt="보안인증씰" /></a></li>
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
