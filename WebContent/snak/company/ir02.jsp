<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company - 주주정보</title>
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

				<!-- 2016년 8월10일 IR정보 추가개발 -->
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
											href="orion_intro_jsp.html"><img
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
											<li><a href="brochure.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_brochure.png"
													alt="브로셔" /></a></li>
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
											<!--<li><a href="ir01_list.jsp"><img src="http://www.orionworld.com/images/common/lmenu_sub_18.png" alt="공시" /></a></li>-->
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

					<div class="subTitleArea borderNone">
						<h3>
							<img
								src="http://www.orionworld.com/images/company/subtit_stockholder.gif"
								alt="주주정보" />
						</h3>

						<div class="location">Home &gt; Company &gt; IR정보 &gt; 주주정보
						</div>
					</div>

					<!-- 탭 메뉴 -->
					<div class="subTabMenu finance">
						<img
							src="http://www.orionworld.com/images/company/stockholder_tab01_on.gif"
							alt="" usemap="#subTab" />
						<map id="subTab" name="subTab">
							<area shape="rect" coords="-1,0,76,25" href="jsp.html" alt="주식개요" />
							<area shape="rect" coords="76,0,137,23" href="ir02_2.jsp"
								alt="배당현황" />
							<area shape="rect" coords="137,0,244,27" href="../../BoardList2.bo2"
								alt="Analyst 투자의견" />
						</map>
					</div>
					<!-- //탭 메뉴 -->

					<div class="subDesc02">
						<p>
							<img
								src="http://www.orionworld.com/images/company/subdesc_investment.gif"
								alt="내실있는 성장으로 새로운 도약을 준비하는 오리온 주주와 함께 더 큰 기업의 가치를 만들어 가겠습니다." />
						</p>
					</div>
					<!-- text / -->
					<div class="subcon">
						<p class="tt1">
							<span><img
								style="padding: 0 5px 0 0; vertical-align: middle;"
								src="http://www.orionworld.com/images/company/ico_dot.gif" />상장
								등록일</span> : 1975. 6. 27
						</p>
						<p class="tt2">[ 단위 : 원 , 주 ]</p>
						<!-- 게시판 리스트 -->
						<table summary="주식개요 테이블" class="boardListType">
							<caption>주식개요 테이블</caption>
							<colgroup>
								<col width="18%" />
								<col width="auto" />
								<col width="auto" />
								<col width="auto" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">구분</th>
									<th scope="col">2015</th>
									<th scope="col">2014</th>
									<th scope="col">2013</th>
									<th scope="col">2012</th>
									<th class="end" scope="col">2011</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="title">액면가</td>
									<td class="title3">5,000</td>
									<td class="title3">5,000</td>
									<td class="title3">5,000</td>
									<td class="title3">5,000</td>
									<td class="title3">5,000</td>
								</tr>
								<tr>
									<td class="title">최고주가</td>
									<td class="title3">1,374,000</td>
									<td class="title3">954,000</td>
									<td class="title3">1,214,000</td>
									<td class="title3">1,023,000</td>
									<td class="title3">687,000</td>
								</tr>
								<tr>
									<td class="title">최저주가</td>
									<td class="title3">857,000</td>
									<td class="title3">763,000</td>
									<td class="title3">882,000</td>
									<td class="title3">599,000</td>
									<td class="title3">349,500</td>
								</tr>
								<tr>
									<td class="title">보통주발행주수</td>
									<td class="title3">5,976,091</td>
									<td class="title3">5,974,969</td>
									<td class="title3">5,971,135</td>
									<td class="title3">5,966,890</td>
									<td class="title3">5,964,865</td>
								</tr>
								<tr>
									<td class="title">시가총액(억원)</td>
									<td class="title3">55,279</td>
									<td class="title3">71,639</td>
									<td class="title3">56,666</td>
									<td class="title3">65,576</td>
									<td class="title3">49,508</td>
								</tr>


							</tbody>
						</table>
						<!-- //게시판 리스트 -->

					</div>
					<!-- //text/ -->

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
