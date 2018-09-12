<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>You &amp; Orion - 자주 묻는 질문</title>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="stylesheet" type="text/css" href="../../style/base.css" />
<link rel="stylesheet" type="text/css"
	href="../../style/you_n_orion.css" />
<link rel="stylesheet" type="text/css" href="../../style/board.css" />
<link rel="stylesheet" type="text/css"
	href="../../style/NanumGothic.css" />
<script type="text/javascript" src="../../script/common.js"></script>
<script type="text/javascript" src="../../script/jquery-1.7.1.min.js"></script>
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
							<li class="onem"><a href="../company/orion_intro_main.jsp"
								class="oda"><img src="../../images/common/g1_company.png"
									class="od" title="COMPANY" alt="COMPANY" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('../../images/common/two_bg.png')">
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
		<area shape="rect" coords="44,6,152,31" href="/marketO/submain.asp" alt="Market O" />
		<area shape="rect" coords="163,4,254,30" href="/dr_you/submain.asp" alt="Dr. you" />
		<area shape="rect" coords="270,4,424,31" href="/power_brand/submain.asp" alt="orion Power Brand" />
		<area shape="rect" coords="454,3,524,31" href="/event/current_event.asp" alt="Event" />
		<area shape="rect" coords="552,0,658,31" href="/you_n_orion/customer_center.asp" alt="You&Orion" />
		<area shape="rect" coords="688,2,787,32" href="" alt="Company" />
	</map> -->
				<div class="util_wrap" style="top: 14px;">
					<ul class="util">
						<li style="padding-top: 1px;"><a href="../../main.jsp"
							title="Korean homepage" style="border-right: 1px solid #767676">Korean</a></li>
						<li style="padding-top: 1px;"><a href="../../ENG/index.html"
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
						style="background: url('../../images/common/left_top03_bg.png') no-repeat top;">
						<div class="snb_in">
							<div class="nav_wrap">
								<ul class="nav">
									<li class="sub"><span><a href="voc.jsp"><img
												src="../../images/common/lmenu_05.png" alt="고객소리" /></a></span></li>
									<li class="sub"><span><a href="customer.jsp"><img
												src="../../images/common/lmenu_06.png" alt="불만접수" /></a></span></li>
									<li class="sub"><span><a href="event150304.jsp"><img
												src="../../images/common/lmenu_07.png" alt="의견접수" /></a></span></li>
									<li class="sub"><span><a href="faq.jsp"><img
												src="../../images/common/lmenu_08.png" alt="자주묻는질문" /></a></span></li>
									<li class="sub"><span><a href="branch_net_01.jsp"><img
												src="../../images/common/lmenu_09.png" alt="영업소 위치" /></a></span></li>
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
							<img src="../../images/you_n_orion/subtit04.png" alt="자주 묻는 질문" />
						</h3>

						<div class="location">Home &gt; Customer &gt; 자주 묻는 질문</div>
					</div>

					<div class="subDesc02">
						<img src="../../images/you_n_orion/faq_img_01.gif"
							alt="오늘은 또 어떤 즐거운 일이 기다리고 있을까? 오리온은 언제나 새로운 소식과 즐거운 뉴스가 가득합니다." />
					</div>


					<!-- 탭 메뉴 -->
					<div class="subTabMenu02">
						<div class="new_tab_wrap02">
							<ul class="new_tab02">
								<li><a href="faq.jsp"><img
										src="../../images/tab/tab_faq01.png" alt="제품" /></a></li>
								<li class="fst"><a href="faq2.jsp"><img
										src="../../images/tab/tab_faq02_on.png" class="over" alt="표기" /></a></li>
							</ul>
						</div>
					</div>
					<!-- //탭 메뉴 -->

					<form name="frmSearch" method="post"
						action="http://www.orionworld.com/Snak/you_n_orion/faq.asp">
						<div class="searchList">
							<fieldset>
								<legend>게시판 검색</legend>
								<p class="inputLine">
									<label for="search_b" style="display: none">게시판검색선택박스</label> <select
										name="FindField" id="search_b">
										<option value="B_Subject" selected="selected">제 목</option>
									</select> <label for="search_b2" style="display: none">게시판검색</label> <input
										type="text" name="FindValue" id="search_b2" value="" size="15"
										class="textType" title="검색어 입력" /> <a
										href="javascript:document.frmSearch.submit();"><img
										src="../../images/button/search.gif" title="검색" alt="검색" /></a>
								</p>
							</fieldset>
						</div>
					</form>

					<!--  FAQ 리스트 -->
					<div class="faq_list02">
						<ul>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>소비자권장가가 어떤 제품엔 있고 어떤제품엔 없네요. 모두 표기해야 하는것 아닌가요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg0">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer0" class="p_padding">
										<p>
											&nbsp;오리온은 최종 소비자가격을 결정하지 않습니다.&nbsp;<br /> &nbsp;최종 판매점포가
											판매가격을 스스로 결정하는 오픈프라이스제도(open price)를 지향하고 있으며<br /> &nbsp;당사
											모든 제품에 대해서 단계적으로 소비자 권장가를 표기하지 않고 있으며, 향후 전 제품에 대해서 적용될
											예정입니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>왜 판매처마다 동일 제품의 소비자가격이 다른가요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg1">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer1" class="p_padding">
										<p>
											제조사인 오리온은 최종 소비자가격을 결정하지 않습니다.&nbsp;<br /> &nbsp;최종 판매점포가
											판매가격을 스스로 결정하는 오픈프라이스제도(open price)를 지향하고 있어<br />
											&nbsp;판매처별로 가격이 상이합니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>통아몬드나 아이셔 같은 경우는 에너지바/핫브처럼 개당 중량차이가 심해보이않는데.. 약 몇</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg2">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer2" class="p_padding">
										<p>
											소비자에게 취식량에 대한 정보를 제공하고자 함입니다.<br /> 먹는 상황, 먹는 인원에 따라 소비자들이
											구매하는 제품의 양을 판단할 수 있게 낱개 제품의 숫자를 표기하고 있습니다
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>고래밥 제품에 들어가는 물고기 종류와 이름을 알고 싶어요</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg3">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer3" class="p_padding">
										<p>
											모두 9종입니다. &nbsp; &nbsp;&nbsp;<br /> 라두(고래) ,
											&nbsp;스파피(불가사리), 요리보고(복어), 메탈부기(거북이), 징어징가(오징어),
											여보게(게),&nbsp;<br /> 문어크(문어), 피시따(열대어), 샤크진(상어)&nbsp;
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>유처리랑 유탕처리랑 차이가 뭔가요? (튀기지않았는데, 왜 유처리라고 되어있나요? )</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg4">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer4" class="p_padding">
										<p>
											제품 제조과정상 차이입니다.<br /> 유탕처리 식품은 조리과정에서 기름에 튀긴 제품을 말하는 것이며<br />
											유처리 식품은 제품의 표면에 기름을 분사하거나 바르는 제품으로, 유통제품 외의 것들을 말합니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>초코송이 식물성유지1,2 는 뭔가요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg5">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer5" class="p_padding">
										<p>
											유지 종류가 다른 식물성 유지 2가지 종류를 원료에 사용하여 명칭을 &nbsp;식물성유지1,
											&nbsp;식물성유지2로 &nbsp;<br /> &nbsp;식품표기법에 의거 표시하였습니다.&nbsp;
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>미쯔나 촉칩에 '게'가 왜 들어가나요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg6">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer6" class="p_padding">
										<p>
											&nbsp;미쯔나 촉칩에는 식물성유지를 사용하고 있습니다. 식물성유지는 오랜시간 경과하면 이미, 이취가
											발생하는데 식물성유지 제조업체에서&nbsp;<br /> &nbsp;이것을 제어하기 위해 항산화제로
											키토산분말(게껍질에서 추출)을 사용합니다, 또한 게는 알러전유발 원료이기 때문에 식품표기 기준에<br />
											&nbsp;제외 되더라도 따로 표기하였습니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>1회 제공량 개수랑 실제 제품 개수랑 차이가 있는 이유가 있나요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg7">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer7" class="p_padding">
										<p>
											식품표시기준에 의거 1회제공량 개수와 &nbsp;총 제공량을 병행표시하게 됩니다.<br /> 총 제공량
											표시단위가 &nbsp;정수 단위로 표시하게 되어 있어, 산술적으로 계산하시면 &nbsp;개수와 차이가 있을 수
											있습니다.<br /> &nbsp;예) 1회제공량 3개(11g), &nbsp; 총 제공량 약 5회(49g)
											&nbsp; &nbsp;; &nbsp; 산술적 15개 &nbsp;, &nbsp;실제 14개
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>HACCP 인증은 어떤 절차에 따라 진행되나요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg8">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer8" class="p_padding">
										<p>
											먼저 HACCP 인증심사를 희망하는 업체는 한국식품안전관리인증원에<br /> HACCP 계획서 및
											선행요건등을 인증신청서와 함께 접수합니다.<br /> 신청서가 접수되면 &nbsp;인증심사 계획과 일정을
											수립하여 서류심사와 현장심사를 실시하고,<br /> HACCP인증 심사관이 현장을 방문하여 선행요건관리 및
											HACCP관리에 대해 평가를 진행하여 인증을 받게 됩니다.
										</p>
									</div>
								</div>
							</li>

						</ul>
					</div>
					<!--  FAQ 리스트 -->

					<script type="text/javascript">
					<!--
						jQuery(function() {
							var article = $('.faq_list02 .article');
							article.addClass('hide');
							article.find('.a').slideUp(0);

							$('.faq_list02 .article .q')
									.click(
											function() {
												var idx = $(this).index();
												var myArticle = $(this)
														.parents(
																'.article:first');

												if (myArticle.hasClass('hide')) {
													myArticle.removeClass(
															'hide').addClass(
															'show');
													myArticle.find('.a')
															.slideDown(200);

													/* 죄송요 귀찮아서 JSO*/

													temp0 = $('#answer0')
															.height() + 20;
													$('#answerImg0').css({
														height : temp0 + 'px'
													});

													temp1 = $('#answer1')
															.height() + 20;
													$('#answerImg1').css({
														height : temp1 + 'px'
													});

													temp2 = $('#answer2')
															.height() + 20;
													$('#answerImg2').css({
														height : temp2 + 'px'
													});

													temp3 = $('#answer3')
															.height() + 20;
													$('#answerImg3').css({
														height : temp3 + 'px'
													});

													temp4 = $('#answer4')
															.height() + 20;
													$('#answerImg4').css({
														height : temp4 + 'px'
													});

													temp5 = $('#answer5')
															.height() + 20;
													$('#answerImg5').css({
														height : temp5 + 'px'
													});

													temp6 = $('#answer6')
															.height() + 20;
													$('#answerImg6').css({
														height : temp6 + 'px'
													});

													temp7 = $('#answer7')
															.height() + 20;
													$('#answerImg7').css({
														height : temp7 + 'px'
													});

													temp8 = $('#answer8')
															.height() + 20;
													$('#answerImg8').css({
														height : temp8 + 'px'
													});

												} else {
													myArticle.removeClass(
															'show').addClass(
															'hide');
													myArticle.find('.a')
															.slideUp(200);
												}
											});
						});
					//-->
					</script>

					<!-- paging -->
					<div class="paging">
						<p style="text-align: center">
							<span style="color: #dfdfdf"><img
								src="http://www.orionworld.com/img/arrow_quick_prev_off.gif"
								alt='이전 10개' style="vertical-align: middle" /></span> <span
								style="color: #dfdfdf"><img
								src="http://www.orionworld.com/img/arrow_prev_off.gif"
								style="vertical-align: middle" alt='이전 페이지' /></span> <span
								style="color: #333333">[<strong>1</strong>]
							</span>&nbsp; <span style="color: #DFDFDF"><img
								src="http://www.orionworld.com/img/arrow_next_off.gif"
								alt='다음 페이지' style="vertical-align: middle" /></span>&nbsp; <span
								style="color: #DFDFDF"><img
								src="http://www.orionworld.com/img/arrow_quick_next_off.gif"
								alt='다음 10개' style="vertical-align: middle" /></span>
						</p>
					</div>
					<!-- //paging -->

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

	<script type="text/javascript">
	<!--
		$(function() {
			$(".faq_list .faqlists")
					.click(
							function() {
								var temp = $(this).index();
								if ($(".faq_list .answer").eq(temp / 2).css(
										"display") == "none") {
									$(".faq_list .faqlists").each(
											function(i) {
												if ((temp / 2) == i) {
													$(".faq_list .answer")
															.eq(i).show();
												} else {
													$(".faq_list .answer")
															.eq(i).hide();
												}
											});
								} else {
									$(".faq_list .answer").eq(temp / 2).hide();
								}
							});
		});
	//-->
	</script>


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

<!-- Mirrored from www.orionworld.com/Snak/you_n_orion/faq2.asp by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 May 2017 00:50:36 GMT -->
</html>