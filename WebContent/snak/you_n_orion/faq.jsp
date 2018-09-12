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
								<li class="fst"><a href="faq.jsp"><img
										src="../../images/tab/tab_faq01_on.png" class="over" alt="제품" /></a></li>
								<li><a href="faq2.jsp"><img
										src="../../images/tab/tab_faq02.png" alt="표기" /></a></li>
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
									<div>'마이구미' 제품 이름의 뜻이 무엇인가요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg0">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer0" class="p_padding">
										<p>
											젤리는 젤라틴,한천,팩틴 등을 이용해서 탄력성있게 만든 제품을 의미하며, 비슷한 의미로 쓰이는&nbsp;<br />
											구미는 젤라틴으로 만든 식감이 조금 더 쫀뜩한 젤리를 의미합니다. &nbsp;<br /> 마이구미는
											&#39;나의 젤리&#39;라는 의미로, 탱글한 포도알갱이를 형상화한 쫄깃한 식감의 국내 최초로 출시된 구미형
											젤리입니다
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>오리온 선물세트는 판매하는 시기가 정해져 있나요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg1">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer1" class="p_padding">
										<p>
											과거처럼 상시적으로 종합선물세트를 판매하고 있지는 않습니다.<br /> 명절(설,추석)에
											&nbsp;회사위주로 단체 주문으로 판매는 되고 있고, 일부 슈퍼마켓에서도 비정기적 운영하는 경우도 있습니다.<br />
											또한 고래밥 라두세트처럼 브랜드별로 판매되기도 하지만 고정적으로 운영하지는 않습니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>GMO 사용하나요? / 감자, 옥수수 등 수입산을 많이 사용하는걸로 알고있는데 사용하지않</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg2">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer2" class="p_padding">
										<p>
											감자와 옥수수 모두 오리온은 Non-GMO을 사용합니다.<br /> 수입되는 거래처로부터
											&nbsp;Non-GMO 인증서를 받고 있으며, &nbsp;옥수수의 경우 &nbsp;수입시마다 국가에서 GMO
											검사 확인 후 통관되고 있습니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>젤리류 제품에 돼지고기가 왜 들어가나요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg3">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer3" class="p_padding">
										<p>
											돼지고기가 표기되는 이유는 젤라틴을 사용하기 때문입니다. 젤라틴은 돼지고기에서 추출한 단백질인 콜라겐으로 만든
											식품원료입니다.<br /> 젤라틴은 제품의 쫄깃하고 츄잉성 있는 식감을 구현하기 위해 사용됩니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>포카칩 샀는데 공기반 과자 반인거 같아요. 가격대비 너무 조금 들어가있는거 아닌가요</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg4">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer4" class="p_padding">
										<p>
											포카칩은 생감자를 1.3mm 내외로 얇게 썰고 튀겨서 제품을 만듭니다. 얇다보니 제품이 잘
											깨집니다.&nbsp;<br /> 오리온도 포장지 사이즈를 줄이면 비용을 절감해서 고객분들에게 더 많은 양의
											과자를 드릴 수 있습니다.<br /> 그럼에도 불구하고 현재 포장 사이즈를 유지하는 이유는 포카칩은 약
											25% 정도 공간비율을 확보해야만<br /> 유통간 제품의 깨짐 현상을 최소화하여 좋은 품질의 제품을
											제공해드릴 수 있기 때문입니다.<br /> 포장 공간 비율을 더 줄이면서도 유통간 제품의 깨짐을 최소화하는
											연구를 계속 진행하고 있습니다.&nbsp;
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>포카칩,예감 등 감자류과자에 껍질이 보이고 먹어도 된다지만 정말 깨끗한가요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg5">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer5" class="p_padding">
										<p>
											네 깨끗하고 괜찮습니다.<br /> 저희는 감자칩을 제조하면서 스프레이로 6회 세척, 물 세정 공정 5회를
											통해 깨끗한 감자를 만들어 제조하고 있습니다.<br /> 또한, 감자의 껍질에는 비타민과 영양소가 가장 많이
											함유되어 있으며 감자칩의 풍미도 향상시켜줍니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>팻블룸, 슈가블룸 에 대한 정확하고 자세한 설명을 요청합니다.</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg6">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer6" class="p_padding">
										<p>
											팻블룸 이란 초콜릿이 열에 의해 초콜릿 안에 있는 기름이 밖으로 용출되어 표면에 기름이 굳었을때 생기는
											현상입니다.<br /> 갈비탕을 끓였다가 식히면 위에 기름이 떠서 굳는 것과 동일하다 보시면
											됩니다.&nbsp;<br /> 슈가블룸은 초콜릿 안에 있는 설탕들이 &nbsp;내부 수분에 의해 녹았다
											굳으면서 표면 위에 생기는 현상입니다.<br /> 두가지 블룸현상 모두 온도에 의해 초콜릿의 성분이 뭉쳐지는
											현상으로 섭취했다고 하여 몸에 영향을 주지 않으니 안심하셔도 됩니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>제품마다 유통기한은 왜 다른가요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg7">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer7" class="p_padding">
										<p>
											제품군 마다의 특성을 고려하여 품질에 이상이 발생하지 않을 시점을 유통기한으로 설정합니다.<br /> 보통
											오리온 제품은 스낵류 5개월, 파이류 6개월, 비스킷, 캔디류 12개월 정도로 정하고 있습니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>베트남과 중국에서 들여오는 수입제품은 안전한가요?</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg8">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer8" class="p_padding">
										<p>
											베트남 및 중국 오리온 공장에서 생산되는 제품은 청결한 위생제조시설과 철저한 품질관리하에서&nbsp;<br />
											생산되고 있어 안심하고 드셔도 됩니다. &nbsp;<br /> 베트남과 중국 오리온 공장은 `16년
											식약처로부터 &nbsp;우수수입업소로 &nbsp;지정되었습니다.<br /> 또한 매년 국내외 모든 공장에서
											미국 AIB 로부터 식품위생 감사를 받고 있으며 우수한 평가를 받고 있습니다.
										</p>
									</div>
								</div>
							</li>

							<li class="article">
								<div class="q trigger">
									<div style="float: left; padding-right: 10px;">
										<img src="../../images/button/btn_q.gif" alt="" />
									</div>
									<div>빈봉지가 나왔습니다</div>
								</div>
								<div class="a" style="padding-top: 10px;">
									<div
										style="float: left; padding-left: 10px; padding-right: 10px;"
										id="answerImg9">
										<img src="../../images/button/btn_a.gif" alt="" />
									</div>
									<div id="answer9" class="p_padding">
										<p>
											<span style="font-family: gulim">통아몬드, 미니닥터유에너지바,
												미니후레이키, 초코바이트, 미니핫브레이크, 바이오후르츠 등<br /> 작은 미니제품이 여러 개 들어있는
												과자의 경우에는 개수가 아닌 중량으로 계량해서 생산합니다.
											</span>
										</p>

										<p>
											<span style="font-family: gulim">고속으로 자동 포장 공정이
												이루어지다보니 간혹 포장지안에 제품이 누락되는 경우가 있어 포장공정이후 빈봉지를 제거하는 장치가 따로
												있지만,<br /> 간혹 완제품 포장에 함께 들어가는 경우가 발생하고 있습니다.<br /> 이런 문제도
												제조상에서 완전무결하게 해결하기 위해 개선책을 진행하고 있습니다.
											</span>
										</p>

										<p>
											<span style="font-family: gulim"><strong><span
													style="color: red">간혹 빈봉지가 들어있더라도 전체 과자 중량에는 차이가 없기
														때문에 정상제품으로 보셔도 무방합니다.</span></strong><br /> <span style="color: black">(</span>예를
												들면 에너지바의 경우 견과류가 들어가는데 견과류의 크기가 매우 다양합니다. 그러므로 전체 제품의 개수가 아닌
												중량으로 체크를 하여 제품을 생산합니다.) </span>
										</p>

										<p>
											<span style="font-family: gulim">또한 현재 생산되는 미니제품의 경우
												포장지 뒷면을 보시면 문구가 있으니 참고하시기 바랍니다.</span>
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

													temp9 = $('#answer9')
															.height() + 20;
													$('#answerImg9').css({
														height : temp9 + 'px'
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
								src='http://www.orionworld.com/img/arrow_quick_prev_off.gif'
								alt='이전 10개' style="vertical-align: middle" /></span> <span
								style="color: #dfdfdf"><img
								src='http://www.orionworld.com/img/arrow_prev_off.gif'
								style="vertical-align: middle" alt='이전 페이지' /></span> <span
								style="color: #333333">[<strong>1</strong>]
							</span>&nbsp; <span style="color: #DFDFDF"><img
								src='http://www.orionworld.com/img/arrow_next_off.gif'
								alt='다음 페이지' style="vertical-align: middle" /></span>&nbsp; <span
								style="color: #DFDFDF"><img
								src='http://www.orionworld.com/img/arrow_quick_next_off.gif'
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

<!-- Mirrored from www.orionworld.com/Snak/you_n_orion/faq.asp by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 May 2017 00:38:45 GMT -->
</html>