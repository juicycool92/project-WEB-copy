<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company - CEO 메시지</title>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="stylesheet" type="text/css" href="../../style/base.css" />
<link rel="stylesheet" type="text/css" href="../../style/company.css" />
<link rel="stylesheet" type="text/css" href="../../style/board.css" />
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

				<!-- <div id="gnb">
		<script type="text/javascript">showFlash("../../flash/subnevi.swf", "100%", "100%;", "");</script> 
	</div> -->

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
									style="background-image: url('../../images/common/two_bg2.png')">
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
								<div class="twom"
									style="background-image: url('../../images/common/two_bg.png')">
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
							<li class="onem"><a href="orion_intro_main.jsp" class="oda"><img
									src="../../images/common/g1_company.png" class="od"
									title="COMPANY" alt="COMPANY" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('../../images/common/two_bg.png')">
									<ul class="tm">
										<li><a href="orion_intro_main.jsp"><img
												src="../../images/common/g2_com1.png" class="_on"
												title="오리온 소개" alt="오리온 소개" /></a></li>
										<li><a href="orion_history_main.jsp"><img
												src="../../images/common/g2_com2.png" class="_on"
												title="오리온 역사관" alt="오리온 역사관" /></a></li>
										<li><a href="orion_business_main.jsp"><img
												src="../../images/common/g2_com3.png" class="_on"
												title="오리온 사업영역" alt="오리온 사업영역" /></a></li>
										<li><a href="ir02.jsp"><img
												src="../../images/common/g2_com4.png" class="_on"
												title="투자정보" alt="IR정보" /></a></li>
										<li><a href="e-press_room_list.jsp"><img
												src="../../images/common/g2_com5.png" class="_on"
												title="PR정보" alt="PR정보" /></a></li>
										<li><a href="http://recruit.orionworld.com/" title="[새창]"
											target="_blank"><img
												src="../../images/common/g2_com6.png" class="_on"
												title="채용공고" alt="채용공고" /></a></li>
										<li><a href="contactsus.jsp"><img
												src="../../images/common/g2_com7.png" class="_on"
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
						<li style="padding-top: 1px;"><a href="../../main.jsp"
							title="Korean homepage" style="border-right: 1px solid #767676">Korean</a></li>
						<li style="padding-top: 1px;"><a href="../../ENG/ENG.html"
							title="English homepage">English</a></li>
						<li><a style="padding: 0 3px 0 5px;"
							href="http://blog.orionworld.com/" target="_blank"><img
								src="../../images/button/btnBlog.png" alt="blog"></a></li>
						<li><a style="padding: 0 3px 0 0;"
							href="https://www.facebook.com/onlyorion" target="_blank"><img
								src="../../images/button/btnFace.png" alt="facebook"></a></li>
						<li><a style="padding: 0;"
							href="https://www.instagram.com/orion_world/" target="_blank"><img
								src="../../images/button/btnInstar.png" alt="instargrem"></a></li>
					</ul>
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
						style="background: url('../../images/common/left_top04_bg.png') no-repeat top;">
						<div class="snb_in">
							<div class="nav_wrap">
								<ul class="nav">
									<li class="sub"><span><a
											href="orion_intro_main.jsp"><img
												src="http://www.orionworld.com/images/common/lmenu_10.png"
												alt="오리온 소개" /></a></span>
										<ul class="twot">
											<li><a href="ceo01.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_09.png"
													alt="CEO 메시지" /></a></li>
											<li><a href="orion_way.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_10.png"
													alt="Only Orion" /></a></li>
											<li><a href="ci.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_11.png"
													alt="CI 소개" /></a></li>
											<li><a href="ethical01.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_17.png"
													alt="윤리경영" /></a></li>
											<li><a href="growth.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_growth.png"
													alt="동반성장" /></a></li>
											<li><a href="brochure.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_brochure.png"
													alt="브로슈어" /></a></li>
										</ul></li>
									<li class="sub"><span><a
											href="orion_history_main.jsp"><img
												src="http://www.orionworld.com/images/common/lmenu_11.png"
												alt="오리온 역사관" /></a></span>
										<ul class="twot">
											<li><a href="founder.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_12.png"
													alt="창업주 이양구 회장" /></a></li>
											<li><a href="snack50_01.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_13.png"
													alt="오리온 연혁" /></a></li>
										</ul></li>
									<li class="sub"><span><a
											href="orion_business_main.jsp"><img
												src="http://www.orionworld.com/images/common/lmenu_12.png"
												alt="오리온 사업영역" /></a></span>
										<ul class="twot">
											<li><a href="entertainment03.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_14.png"
													alt="엔터테인먼트" /></a></li>
											<li><a href="global_business02.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_15.png"
													alt="글로벌사업" /></a></li>
										</ul></li>
									<li class="sub"><span><a href="ir02.jsp"><img
												src="http://www.orionworld.com/images/common/lmenu_13.png"
												alt="IR정보" /></a></span>

										<ul class="twot">
											<li><a href="ir02.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_19.png"
													alt="주주정보" /></a></li>
											<li><a href="ir03.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_20.png"
													alt="재무정보" /></a></li>
											<li><a href="ir04.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_21.png"
													alt="주가정보" /></a></li>
											<li><a href="ir05_list.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_22.png"
													alt="IR자료실" /></a></li>
											<li><a href="ir06_list.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_23.png"
													alt="공고" /></a></li>
										</ul></li>


									<li class="sub"><span><a
											href="../../pressViewUser.epress?curPage=1"><img
												src="http://www.orionworld.com/images/common/lmenu_14.png"
												alt="PR정보" /></a></span>
										<ul class="twot">
											<li><a href="../../pressViewUser.epress?curPage=1"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_16.png"
													alt="e-프레스룸" /></a></li>
										</ul></li>
									<li class="sub"><span><a
											href="https://orion.recruiter.co.kr/" target="_blank"><img
												src="http://www.orionworld.com/images/common/lmenu_15.png"
												alt="채용공고" /></a></span></li>
									<!-- li class="sub"><span><a href="https://recruitorion.saramin.co.kr/_service/orion/apply_site/apply/intro.asp" target="_blank"><img src="http://www.orionworld.com/images/common/lmenu_15.png" alt="채용공고" /></a></span></li -->
									<li class="sub"><span><a href="contactsus.jsp"><img
												src="http://www.orionworld.com/images/common/lmenu_16.png"
												alt="오시는 길" /></a></span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- //Sub Side -->

				<!-- Sub Contents -->
				<div id="subContents">

					<div class="subTitleArea mb00">
						<h3>
							<img src="http://www.orionworld.com/images/company/subtit_ci.gif"
								alt="CI 소개" />
						</h3>

						<div class="location">Home &gt; Company &gt; 오리온 소개 &gt;
							CI소개</div>
					</div>

					<div class="subDesc02">
						<p>
							<img
								src="http://www.orionworld.com/images/company/subdesc_ci.gif"
								alt="지구를 둘러싸고 있는 일곱 개의 점점 커지는 별 글로벌 그룹 오리온의 세계로 뻗어가는 미래의지의 상징입니다." />
						</p>
					</div>

					<div class="ciWrap">
						<p>
							<img src="http://www.orionworld.com/images/company/img_ci.gif"
								alt="오리온 CI" />
						</p>
						<p>
							<img
								src="http://www.orionworld.com/images/company/txt_symbolAll.gif"
								alt="오리온 CI" />
						</p>
						<!-- 						<dl>
							<dt><img src="http://www.orionworld.com/images/company/tit_symbol.gif" alt="심볼" /></dt>
							<dd><img src="http://www.orionworld.com/images/company/txt_symbol.gif" alt="심볼은 오리온의 전체 이미지를 포괄적으로 상징하는 시각 물로서 C.I(Corporate Identity) 시스템의 핵심이 되는 중요한 요소이다. 뿐만 아니라 커뮤니케이션상의 도구로서 모든 기회에 언어나 태도로 설명을 다할 수 없는 컨셉트를 언제 어디서나 전달 가능하게 한다. 
							오리온 심볼의 전체 형상은 지구와 별을 상징하고 지구의 형태는 국제성을 의미하여 점점 크게 움직이는 별을 세계로 향한 기업의 미래 
							의지를 나타내고 있다." /></dd>
						</dl>
						<dl>
							<dt><img src="http://www.orionworld.com/images/company/tit_color_ex.gif" alt="색상표현" /></dt>
							<dd><img src="http://www.orionworld.com/images/company/txt_color_ex.gif" alt="코퍼리트 칼라는 C.I 프로그램의 궁극적인 목표인 코퍼리트 이미지 형성의 중요한 역할을 담당하는 기본 요소다. 코퍼리트 칼라는 주색 (Main Color)와 보조색(Sub Color)로 나뉘며 주색은 오리온 레드(Red/DIC 157)로 구성되어 있다. 코퍼리트 칼라는 오리온의 시각적 
							이미지의 통일을 위한 정확한 색상 관리가 요구 된다." /></dd>
						</dl>
						<dl>
							<dt><img src="http://www.orionworld.com/images/company/tit_color_rule.gif" alt="색상규정" /></dt>
							<dd><img src="http://www.orionworld.com/images/company/txt_color_rule.gif" alt="표현매체에 따라 명도,채도 등이 차이가 날 수 있으므로 색상 재현 시 최상의 표준색상을 얻기 위해서는 재생자료에 첨부된 색상 경본과 비교하여 사용하여야 한다." /></dd>
						</dl>
						<dl class="end">
							<dt><img src="http://www.orionworld.com/images/company/tit_prohibit.gif" alt="사용금지규정" /></dt>
							<dd><img src="http://www.orionworld.com/images/company/txt_prohibit.gif" alt="로고타입은 심벌과 더불어 오리온 그룹 및 각 오리온 계열사의 이미지를 시각적으로 상징하는 중요한 기본요소입니다.  로고타입은 한글, 영문 2종류가 있으며 특수한 경우를 제외하고는 로고타입만의 단독사용을 금하며 항상 심벌과 로고타입의 조합인 
							시그니춰로서 사용되어야 합니다." /></dd>
						</dl> -->
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
					<li><a href="../footer/pop_legal_notice.asp.html"
						target="_blank" title="[팝업]" onclick="footerPop(1)"><img
							src="../../images/common/footer_menu01.gif" alt="법적고지" /></a></li>
					<li><a href="../footer/pop_user_guide.asp.html"
						target="_blank" title="[팝업]" onclick="footerPop(2)"><img
							src="../../images/common/footer_menu02.gif" alt="이용안내" /></a></li>
					<li><a href="../members/pop_privacy.asp.html" target="_blank"
						title="[팝업]" onclick="footerPop(3)"><img
							src="../../images/common/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
					<li style="background: none"><a
						href="../footer/pop_forbid_colleting_email.asp.html"
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
