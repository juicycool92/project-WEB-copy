<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company - Only Orion</title>
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

					<div class="subTitleArea borderNone">
						<h3>
							<img
								src="http://www.orionworld.com/images/company/subtit_only_orion.gif"
								alt="Only Orion" />
						</h3>

						<div class="location">Home &gt; Company &gt; 오리온 소개 &gt;
							Only Orion</div>
					</div>

					<!-- 탭 메뉴 -->
					<div class="subTabMenu" id="subTab">
						<!-- new_tab_wrap -->
						<div class="new_tab_wrap">
							<ul class="new_tab">
								<li class="fst"><a href="orion_way.jsp"><img
										src="http://www.orionworld.com/images/tab/tab_way_on.png"
										class="over" alt="오리온 Wap" /></a></li>
							</ul>
						</div>
						<!-- // new_tab_wrap -->
					</div>
					<!-- //탭 메뉴 -->

					<div class="subDesc02">
						<p>
							<img
								src="http://www.orionworld.com/images/company/subdesc_orion_way.gif"
								alt="World-class로 가는 길.
                        Smart하게 생각하고, Strong하게 움직여라!  
                        오리온 가족들의 모든 생각과 행동에 대한 기본 철학 입니다." />
						</p>
					</div>

					<div class="orionWayWrap">
						<h4>
							<img src="http://www.orionworld.com/images/company/tit_smart.gif"
								alt="Smart" />
						</h4>

						<!--p><img src="http://www.orionworld.com/images/company/txt_smart01.gif" alt="심볼은 오리온의 전체 이미지를 포괄적으로 상징하는 시각 물로서 C.I(Corporate Identity) 시스템의 핵심이 되는 중요한 요소이다. 오리온이 추구하고 있는 철학으로서의 스마트와 크게 다르지 않다. " /></p-->

						<p>
							<img
								src="http://www.orionworld.com/images/company/txt_smart02.gif"
								alt="오리온이 추구하는 스마트는 ”핵심역량을 중심으로 한 상향평준화”로 요약할 수 있다. 
						블요불급한 일들을 모두 제거하고 난 뒤 핵심 그 자체를 추구하고 실천함으로써 질적인 상승 효과를 도모하는 것이다.
						세계적인 경쟁력을 갖췄다고 자타가 공인하는 기업들도 오래 전부터 자신이 가장 잘 할 수 있는 부분, 즉 핵심역량에 집중해 왔다는 점은
						시사하는 바가 크다. 델,소니,마이크로 소프트등 IT기업들은 제품 생산을 아웃소싱하는 대신, 연구 개발과 마케팅에만 집중해 왔다. 
						코카콜라는 음료 제품 라인을 확장했다가 경쟁력이 떨어지자 다시 전통제품인 코카콜라에만 집중하기로 했다.
						오리온은 이미 오래 전부터 스마트 경영을 실천해 왔다.  " />
						</p>

						<p>
							<img
								src="http://www.orionworld.com/images/company/txt_smart03.gif"
								alt="1980년대 말부터 진행해온 오리온 판매촉진 전략 OMP(Orion Merchandising Program)는 소비자가 원하는 시간과 공간에 원하는 제품을 만날 수 있도록 해준 스마트한 판매 전략이었다." />
						</p>

						<p>
							<img
								src="http://www.orionworld.com/images/company/txt_smart04.gif"
								alt="1990년대 초에 전사적으로 도입한 BPR(Business Process Re-engineering)은 생산에서 부터 판매까지 ’꼭 필요한 일만 하는’ 업무 문화를 정립시켰다. 또 ABC(Activity Based Costing) 시스템을 개발, 제품의 손익구조를 정확히 파악할 수 있도록 했고, 이를 바탕으로 이익이나지 않는 제품을 과감히 퇴출 시키고 제품의 원가구조를 합리화 시켰다. 주력제품에 핵심역량을 집중시킨 ’코어브랜드 전략’ 또한 스마트 경영의 전형이었음은 두말 할 나위 없다." />
						</p>

						<ol>
							<li><img
								src="http://www.orionworld.com/images/company/txt_smart_list01.gif"
								alt="1. 해야 할 일과, 하지 말아야 할 일을 잘 판단해서 꼭 해야 할 일만 하는 것!
							스마트는 지금 우리가 하고 있는 일을 왜 하는지 따져보는 데서 출발한다. 이 일을 했을 때 어떤 효과가 있고 안 했을 때는 어떤 
							문제가 있는지 저울질 해 보고, 큰 문제가 없다면 하지 않는 것이 스마트이다. 이것은 또 ‘단순화’ 하는 작업과도 연관이 있다. 
							불필요한 일들을 도려내고 나면 회사의 시스템과 프로세스는 한층 단순해 지기 마련이다. 쉽게 일하면서도 효율은 더욱 높일 수 
							있는 군더더기 없는 조직으로 상향 평준화 할 수 있게 된다." /></li>
							<li><img
								src="http://www.orionworld.com/images/company/txt_smart_list02.gif"
								alt="2. 핵심역량 20%를 찾아가는 것!
							“모든 일은 핵심역량 20%가 나머지가 80%를 좌우한다” 핵심역량 20%는 무엇인가, ‘코어 브랜드 전략’ 이 전형적인 예다.
							적자를 내는 80%의 제품을 버리고 핵심적인 20% 제품을 찾는 것이다. 80%를 잘라냈음에도 오히려 매출과 수익이 늘게 만드는 것
							이것이 핵심역량 20%의 힘이다. 100%를 모두 하려고 할 필요가 없다. 핵심역량 20%만 찾으면 된다. 스마트는 많은 일을 하려고 
							하지 않고 가장 중요한 핵심적인 일만 골라서 하는 것이다." /></li>
							<li class="end"><img
								src="http://www.orionworld.com/images/company/txt_smart_list03.gif"
								alt="3. Never give up이 아니라, ‘Give up, & then Never give up’ 하는 것!
							전 세계적으로 성공한 기업들의 한결 같은 공통점은 양적으로 하는 것이 아니라 스마트하게 하는 것이다. 핵심 브랜드를 끝까지 
							물고 늘어진 것이다. 분산이 아니라 집중이었다. 스마트는 한다, 안 한다 를 판단하는 것이다. 역량을 집중할 만한 가치가 없는 
							일이라면  포기 할 건 포기 해야 한다. 빨리 포기해야 할 일을 끝까지 붙들고 있어서는 안 된다. 핵심적인 일만 끝까지 물고 늘어
							져서 끝을 보는 것이다." /></li>
						</ol>

						<h4>
							<img
								src="http://www.orionworld.com/images/company/tit_strong.gif"
								alt="Strong" />
						</h4>

						<p>
							<img
								src="http://www.orionworld.com/images/company/txt_strong01.gif"
								alt="‘스트롱(Strong)’ 은 말 그대로 튼튼하고 건강하다는 뜻이다. 오리온이 추구하는 스트롱 경영은 즐겁게(Fun) 일하고, 어떤 어려움에도 굴복 하지 않고 끊임 없이 도전하며, 이를 통해 남보다 한발 앞선 성과를 이룩할 수 있는 건강한 조직을 지향하는 것이다. " />
						</p>

						<p>
							<img
								src="http://www.orionworld.com/images/company/txt_strong02.gif"
								alt="스마트(Smart)가 ‘머리’ 혹은 ‘전략’ 의 상향평준화를 의미한다고 볼때, 스트롱은 이를 받쳐주는 마음이며 행동으로 옮겨 실천할 수 있는 건강한 기초체력, 즉, 기업문화의 상향평준화 라고 볼 수 있다." />
						</p>

						<p>
							<img
								src="http://www.orionworld.com/images/company/txt_strong03.gif"
								alt="오리온이 오래 전부터 ‘행복한 사원이 많은 회사’를 추구해온 것도 결국은 스트롱 경영의 일환이다. 아침에 일어나면 회사에 오고 싶어서 못 견디는 사원이 많은 회사, 누구보다 회사와 일과 제품을 사랑하고, 그러한 열정을 바탕으로 끊임없이 새롭게 도전하며 성과를 이뤄 내는 회사, 그 성과에 대해 합당한 보상을 해주는 회사를 만들려는 노력이 결실을 맺으면 ‘World-Class 오리온’은 자연스럽게 성취될 수 있기 때문이다." />
						</p>

						<p>
							<img
								src="http://www.orionworld.com/images/company/txt_strong04.gif"
								alt="스트롱은 결국 ‘마음’이다. 나의 마음과 남의 마음을 맞추어 ‘우리의 마음’으로 만들어가는 것이다. 스트롱 이야 말로 우리가 서양의 기업들에게 이길 수 있는 비결이다. 서구 문화권의 기업들과 달리 우리는 시스템과 제도 외에 ‘마음’이라는 감정적인 요소가 상당한 부분을 차지하기 때문이다. 오리온의 스트롱 경영은 단순한 팀워크가 아니라 진심에서 우러나는 배려와 단결, 신뢰와 희생정신이 복합적으로 어우러진 새로운 차원의 조직 문화라고 할 수 있다." />
						</p>

						<ol class="end">
							<li><img
								src="http://www.orionworld.com/images/company/txt_strong_list01.gif"
								alt="1. Want to do의 마음으로 즐겁게 일하는 것
							사람의 마음은 엄청난 힘을 가지고 있다. 어떻게 마음을 먹느냐에 따라 1000%의 성과를 이룰 수도 있고, 10% 밖에 못낼 수도 
							있다. 행복한 마음, 미래지향적인 마음을 갖고 출발하는 것과 그 반대와의 차이는 상상할 수 없을 만큼 크다. 결국 우리의 사업을 
							성공하게 하는 키워드는 바로 우리들의 마음이다. ‘Want to do’의 마음으로 하루하루를 열어나갈 때 ‘Have to do’로 는 도저히 
							따라 잡을 수 없는 상향평준화 된 경쟁력을 갖추게 된다." /></li>
							<li><img
								src="http://www.orionworld.com/images/company/txt_strong_list02.gif"
								alt="2. 성과 중심의 상향평준화 된 조직을 만드는 것
							잘해도 그만, 못해도 그만, “별탈 없으면 그냥 간다”고 생각하는 조직은 ‘World-Class’가 될 수 없다. 기회는 모두에게 공평하게 
							주어지지만, 보상은 철저하게 성과에 따라 이루어지는 조직이 합리적인 조직이고 스트롱한 조직이다. 오리온은 97년 부터 추진하고 
							있는 목표 관리제도(MBO: Management By Objectives)를 통해 자신의 목표를 정하고 성취한 정도에 따라 공정한 평가를 
							통해 보상을 하고 있다." /></li>
							<li><img
								src="http://www.orionworld.com/images/company/txt_strong_list03.gif"
								alt="3. 서로를 신뢰하고 존경하는 것
							오리온이 강조하는 ‘MT & RM (Mutual Trust & Respect)’ 은 서로 신뢰하고 존중하는 문화를 말한다. 
							이는 남과 내가 다르다는 점을 인정하고 자신을 낮추는 것으로 시작된다. 리더는 모두가 싫어하고 귀찮아 하는 일을 먼저 솔선
							수범하고, 편하고 좋아하는 일은 아랫사람에게 주어야 믿음과 존경을 받을 수 있다. 또한 ‘칭찬’은 모든 관계를 부드럽고 긍정적
							으로 만든다. 동료왕 선후배간의 상호 신뢰와 존중, 그리고 칭찬하고 격려하는 문화가 건강하고 분위기 좋은 조직을 만든" /></li>
							<li class="end"><img
								src="http://www.orionworld.com/images/company/txt_strong_list04.gif"
								alt="4. 목표를 달성할 때까지 영원히 만족하지 않는 것
							‘포기하지 않는 한 꿈은 이루어진다.’ 이것이 오리온의 정신이다. 어려움에 봉착하더라도 불굴의 정신으로 도전하는 직원이 많은 
							조직, 또 그런 사람이 인정받고 존경 받는 조직이 스트롱한 조직이다. 지금은 어렵지만 목표한 바를 반드시 이루어 내겠다는 
							열정으로 충만한 조직은 분명히 목표를 성취할 수 있다. 1등은 주어지는 것이 아니라 만들어 가는 것이라는 사실을 분명하게 
							인식하고 추진해 나갈 때, 끈기와 뒷심이 강한 ‘World-Class 오리온’을 이룰 수 있을 것이다.
							" /></li>
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
					<li><a href="../footer/pop_legal_notice.jsp" target="_blank"
						title="[팝업]" onclick="footerPop(1)"><img
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
