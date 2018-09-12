<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company - 제과 ’50</title>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="stylesheet" type="text/css" href="../../style/base.css" />
<link rel="stylesheet" type="text/css" href="../../style/company.css" />
<link rel="stylesheet" type="text/css" href="../../style/board.css" />
<script type="text/javascript" src="../../script/common.js"></script>

</head>

<body>
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
		<script type="text/javascript">showFlash("/flash/subnevi.swf", "100%", "100%;", "");</script> 
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
								href="../event/current_event.html" class="oda"><img
									src="../../images/common/g1_event.png" class="od" title="EVENT"
									alt="EVENT" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('../../images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="../event/current_event.html"><img
												src="../../images/common/g2_eventing.png" class="_on"
												title="진행중인 이벤트" alt="진행중인 이벤트" /></a></li>
										<li><a href="../event/past_event.html"><img
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
						<li style="padding-top: 1px;"><a href="../../ENG/index.html"
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
												src="../../images/common/lmenu_10.png" alt="오리온 소개" /></a></span>
										<ul class="twot">
											<li><a href="ceo01.jsp"><img
													src="../../images/common/lmenu_sub_09.png" alt="CEO 메시지" /></a></li>
											<li><a href="orion_way.jsp"><img
													src="../../images/common/lmenu_sub_10.png" alt="Only Orion" /></a></li>
											<li><a href="ci.jsp"><img
													src="../../images/common/lmenu_sub_11.png" alt="CI 소개" /></a></li>
											<li><a href="ethical01.jsp"><img
													src="../../images/common/lmenu_sub_17.png" alt="윤리경영" /></a></li>
											<li><a href="growth.jsp"><img
													src="../../images/common/lmenu_sub_growth.png" alt="동반성장" /></a></li>
											<li><a href="brochure.jsp"><img
													src="../../images/common/lmenu_sub_brochure.png" alt="브로셔" /></a></li>
										</ul></li>
									<li class="sub"><span><a
											href="orion_history_main.jsp"><img
												src="../../images/common/lmenu_11.png" alt="오리온 역사관" /></a></span>
										<ul class="twot">
											<li><a href="founder.jsp"><img
													src="../../images/common/lmenu_sub_12.png" alt="창업주 이양구 회장" /></a></li>
											<li><a href="snack50_01.jsp"><img
													src="../../images/common/lmenu_sub_13.png" alt="오리온 연혁" /></a></li>
										</ul></li>
									<li class="sub"><span><a
											href="orion_business_main.jsp"><img
												src="../../images/common/lmenu_12.png" alt="오리온 사업영역" /></a></span>
										<ul class="twot">
											<li><a href="entertainment03.jsp"><img
													src="../../images/common/lmenu_sub_14.png" alt="엔터테인먼트" /></a></li>
											<li><a href="global_business02.jsp"><img
													src="../../images/common/lmenu_sub_15.png" alt="글로벌사업" /></a></li>
										</ul></li>
									<li class="sub"><span><a href="ir02.jsp"><img
												src="../../images/common/lmenu_13.png" alt="IR정보" /></a></span>

										<ul class="twot">
											<li><a href="ir02.jsp"><img
													src="../../images/common/lmenu_sub_19.png" alt="주주정보" /></a></li>
											<li><a href="ir03.jsp"><img
													src="../../images/common/lmenu_sub_20.png" alt="재무정보" /></a></li>
											<li><a href="ir04.jsp"><img
													src="../../images/common/lmenu_sub_21.png" alt="주가정보" /></a></li>
											<li><a href="ir05_list.jsp"><img
													src="../../images/common/lmenu_sub_22.png" alt="IR자료실" /></a></li>
											<li><a href="ir06_list.jsp"><img
													src="../../images/common/lmenu_sub_23.png" alt="공고" /></a></li>
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
												src="../../images/common/lmenu_15.png" alt="채용공고" /></a></span></li>
									<!-- li class="sub"><span><a href="https://recruitorion.saramin.co.kr/_service/orion/apply_site/apply/intro.asp" target="_blank"><img src="/images/common/lmenu_15.png" alt="채용공고" /></a></span></li -->
									<li class="sub"><span><a href="contactsus.jsp"><img
												src="../../images/common/lmenu_16.png" alt="오시는 길" /></a></span></li>
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
								src="http://www.orionworld.com/images/company/subtit_hisotry.gif"
								alt="연혁" />
						</h3>

						<div class="location">Home &gt; Company &gt; 오리온 역사관 &gt; 연혁
						</div>
					</div>

					<!-- 탭 메뉴 -->
					<div class="subTabMenu history">
						<a href="#"><img
							src="http://www.orionworld.com/images/company/history_tab01_on.gif"
							alt="역사" /></a>
					</div>
					<!-- //탭 메뉴 -->

					<div class="subDesc02 borderNone">
						<p>
							<img
								src="http://www.orionworld.com/images/company/subdesc_snack50_01.gif"
								alt=" 50년 전, 이 땅에 제과업계의 큰 별로 탄생한 오리온 더욱 빛나는 50년을 향해 또 한번 힘차게 도약합니다." />
						</p>
					</div>

					<div class="historyWrap">

						<ul class="historyTab">
							<li><a href="snack50_01.jsp"><img
									src="http://www.orionworld.com/images/company/snack50_01_tab01_off.gif"
									alt="1950년대" /></a></li>
							<li><a href="snack50_01_2.jsp"><img
									src="http://www.orionworld.com/images/company/snack50_01_tab02_off.gif"
									alt="1960년대" /></a></li>
							<li><a href="snack50_01_3.jsp"><img
									src="http://www.orionworld.com/images/company/snack50_01_tab03_off.gif"
									alt="1970년대" /></a></li>
							<li><a href="snack50_01_4.jsp"><img
									src="http://www.orionworld.com/images/company/snack50_01_tab04_off.gif"
									alt="1980년대" /></a></li>
							<li><a href="snack50_01_5.jsp"><img
									src="http://www.orionworld.com/images/company/snack50_01_tab05_off.gif"
									alt="1990년대" /></a></li>
							<li><a href="snack50_01_6.jsp"><img
									src="http://www.orionworld.com/images/company/snack50_01_tab06_off.gif"
									alt="2000년대" /></a></li>
							<li><a href="snack50_01_7.jsp"><img
									src="http://www.orionworld.com/images/company/snack50_01_tab07_on.gif"
									alt="2010년대" /></a></li>
						</ul>

						<p class="snack50Desc">
							<img src="http://www.orionworld.com/images/company/his2010.gif"
								alt="World-class Company를 향하여!" />
						</p>

						<!--  <p class="snackPara">
                            <img src="/images/company/txt_snack50_07.gif" alt="오리온은 지금까지의 방식으로 더 노력하는 것이 아닌 새로운 생각과 새로운 방법으로 오리온만의 格을 찾고, 그 格을 높임으로써
                        						시장을 선도해나가고 있다. 그리고 고객을 위한 진정성 위에 제대로, 남다르게 해내는 실력을 더한 Only Orion의 경쟁력으로
                        						World-class Company를 향해 힘차게 도약하고 있다." />
                        </p>
                        
                        <ol class="snackList">
                            <li><img src="/images/company/txt_snack50_list_07_1.gif" alt="
                        								Strategic Business Unit 체제로의 전환 (2010년)
                        
                        								효율적이고 특화된 사업 전개를 위하여 기존 마케팅 조직을 3개의 SBU 체제로 전환
                        								 - P ★Orion (Power   Orion) : 맛있고 안전한 먹거리의 대명사인 기존의 Power Brand 담당 SBU
                        								 - H★Orion (Health  Orion) : 건강, 기능, 영양 밸런스 등의 개념을 갖는 Dr. You 브랜드군 담당 SBU
                        								 - N★Orion (Natural Orion) : 순수, 자연, 천연, 유기농 등의 개념을 갖는 Market O 브랜드군 담당 SBU" /></li>
                            <li><img src="/images/company/txt_snack50_list_07_2.gif" alt="해외 시장 공략 가속화
                        
                        								지속적으로 해외 매출이 국내 매출을 초과하며 명실상부한 Global Company 등극
                        								 - 2009년 50%, 2010년 52%, 2011년 55%로 해외 매출 비중 상승 중
                        								 를 신설하여 새로운 시장 창출 (2011년 9월)
                        								 - 미국 내 최대 유통체인점 ‘Walmart’, ‘Costco’ 정식 입점
                        								Market O 리얼 브라우니의 일본 시장 진출
                        								 - 2011년 매출액 253% 성장 (전년 대비)" /></li>
                        							<li><img src="/images/company/txt_snack50_list_07_3.gif" alt="식품안전 강화
                        							한국 제과업체 최초로 국내 모든 공장 HACCP 지정 (2009년)
                        							미국제빵협회(AIB)에 의뢰하여 국내외 모든 공장(총 22개 팀)이 매년 엄격한 Audit 실시 중
                        							 - 전 공장 Excellent 등급 이상 평가" /></li> -->

						<!--span class="goProject"><a href="http://www.orionworld.com/Snak/Dryou/submain.asp" target="_blank"><img src="/images/button/go_dr_project.gif" alt="닥터유 프로젝트 바로가기" /></a>
							<a href="http://www.themarketo.com/" target="_blank" ><img src="/images/button/go_marketo_project.gif" alt="마켓오 프로젝트 바로가기" /></a></span-->

						</ol>

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
					<li><a href="../footer/pop_legal_notice.html" target="_blank"
						title="[팝업]" onclick="footerPop(1)"><img
							src="../../images/common/footer_menu01.gif" alt="법적고지" /></a></li>
					<li><a href="../footer/pop_user_guide.html" target="_blank"
						title="[팝업]" onclick="footerPop(2)"><img
							src="../../images/common/footer_menu02.gif" alt="이용안내" /></a></li>
					<li><a href="../members/pop_privacy.html" target="_blank"
						title="[팝업]" onclick="footerPop(3)"><img
							src="../../images/common/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
					<li style="background: none"><a
						href="../footer/pop_forbid_colleting_email.html" target="_blank"
						title="[팝업]" onclick="footerPop(4)"><img
							src="../../images/common/footer_menu04.gif" alt="이메일주소수집거부" /></a></li>
					<!-- <li><a href="/snak/footer/pop_legal_notice.asp" target="_blank" title="제휴문의[팝업]" onclick="window.open(this.href, 'popLegal', 'width=600, height=460, left=300, top=200'); return false;"><img src="/images/button/footer_menu01.gif" alt="제휴문의" /></a></li>
			<li><a href="/snak/footer/pop_user_guide.asp" target="_blank" title="이용안내[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="/images/button/footer_menu02.gif" alt="이용안내" /></a></li>
			<li><a href="/snak/members/pop_privacy.asp" target="_blank" title="개인정보취급방침[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="/images/button/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
			<li class="end"><a href="/snak/footer/pop_forbid_colleting_email.asp" target="_blank" title="이메일주소수집거부[팝업]" onclick="window.open(this.href, 'popEmail', 'width=600, height=347, left=300, top=200'); return false;"><img src="/images/button/footer_menu04.gif" alt="이메일주소수집거부 " /></a></li>
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

<!-- Mirrored from www.orionworld.com/Snak/company/snack50_01_7.asp by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 May 2017 02:51:09 GMT -->
</html>
