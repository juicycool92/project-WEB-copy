<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="net.snak.db.*" %>
	<!-- das page ist biscuit -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 추가부분 시작 -->
<%
	System.out.println("jsp 들어옴?");
	int categori = 3;//biscuit
	int curPage = 1;//현제페이지 번호, default는 1일것이다
	String curPageS=(String)request.getAttribute("curPage");
	System.out.println(curPageS);
	curPage=Integer.parseInt(curPageS);
	List voList = new ArrayList<snakVO>();
	voList=(ArrayList)request.getAttribute("voList");
	snakVO vo;
	System.out.println("jsp 헤드 지남");
%>
<!-- 추가부분 종료 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Orion Power Brand - Product Info</title>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="stylesheet" type="text/css" href="style/base.css" />
<link rel="stylesheet" type="text/css"
	href="style/power_brand.css" />
<script type="text/javascript" src="script/common.js"></script>

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
						src="images/common/logo.gif" alt="ORION" /></a>
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
							<li class="onem"><a href="userSnakViewNew.snak?curPage=1"
								class="oda"><img src="images/common/g1_np.png"
									class="od" title="new product" alt="new product" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="userSnakViewNew.snak?curPage=1"><img
												src="images/common/g2_newp.png" class="_on"
												title="new product" alt="new product" /></a></li>
									</ul>
								</div> <!-- // twom --></li>

							<li class="onem"><a href="snak/MarketO/MarketO_intro.jsp"
								class="oda"><img src="images/common/g1_market.png"
									class="od" title="Market O" alt="Market O" /></a> <!-- twom -->
								<div class="twom"
									style="left: -120px; background-image: url('images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="snak/MarketO/sub01MarketO.jsp"><img
												src="images/common/g2_marketobaking.png" class="_on"
												title="마켓오 제과" alt="마켓오 제과" /></a></li>
										<li><a href="http://restaurant.themarketo.com/"><img
												src="images/common/g2_marketorestaurant.png"
												class="_on" title="마켓오 레스토랑" alt="마켓오 레스토랑" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="snak/Dryou/sub00dryou.jsp"
								class="oda"><img src="images/common/g1_dr.png"
									class="od" title="Dr. you" alt="Dr. you" /></a> <!-- <a href="http://www.dr-you.co.kr/main.php" class="oda"><img src="images/common/g1_dr.png" class="od" title="Dr. you" alt="Dr. you" /></a> -->
								<!-- twom -->
								<div class="twom"
									style="left: -120px; background-image: url('images/common/two_bg.png')">
									<ul class="tm">
										<li><a href="snak/Dryou/sub01diget.jsp"><img
												src="images/common/g2_diget.png" class="_on"
												title="Dr. You Diget" alt="Dr. You Diget" /></a></li>
										<li><a href="snak/Dryou/sub02bar.jsp"><img
												src="images/common/g2_bar.png" class="_on"
												title="Dr. You BAR" alt="Dr. You BAR" /></a></li>
										<li><a href="snak/Dryou/sub03kids.jsp"><img
												src="images/common/g2_kids.png" class="_on"
												title="Dr. You KIDS" alt="Dr. You KIDS" /></a></li>
										<li><a href="snak/Dryou/sub04minty.jsp"><img
												src="images/common/g2_minty.png" class="_on"
												title="Dr. You MINTY" alt="Dr. You MINTY" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="userSnakView.snak?curPage=1&category=1"
								class="oda"><img src="images/common/g1_orion.png"
									class="od" title="ORION POWER BRAND" alt="ORION POWER BRAND" /></a>
								<!-- twom -->
								<div class="twom"
									style="left: -70px; background-image: url('images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="userSnakView.snak?curPage=1&category=1"><img
												src="images/common/g2_product.png" class="_on"
												title="ORION POWER BRAND" alt="Product Info" /></a></li>
										<li><a href="snak/power_brand/view_cfba4b.jsp"><img
												src="images/common/g2_cf.png" class="_on" title="CF"
												alt="CF" /></a></li>
									</ul>
								</div> <!-- // twom --></li>


							<li class="onem" style="display: none;"><a
								href="event/current_event.html" class="oda"><img
									src="images/common/g1_event.png" class="od" title="EVENT"
									alt="EVENT" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="event/current_event.html"><img
												src="images/common/g2_eventing.png" class="_on"
												title="진행중인 이벤트" alt="진행중인 이벤트" /></a></li>
										<li><a href="event/past_event.html"><img
												src="images/common/g2_eventend.png" class="_on"
												title="완료된 이벤트" alt="완료된 이벤트" /></a></li>
									</ul>
								</div> <!-- // twom --></li>



							<li class="onem"><a href="snak/you_n_orion/voc.jsp"
								class="oda"><img src="images/common/g1_customer.png"
									class="od" title="CUSTOMER" alt="CUSTOMER" /></a> <!-- twom -->
								<div class="twom">
									<ul class="tm">
										<li><a href="snak/you_n_orion/voc.jsp"><img
												src="images/common/g2_voc01.png" class="_on"
												title="고객소리" alt="고객소리" /></a></li>
										<li><a href="snak/you_n_orion/customer.jsp"><img
												src="images/common/g2_claim.png" class="_on"
												title="불만접수" alt="불만접수" /></a></li>
										<li><a href="snak/you_n_orion/event150304.jsp"><img
												src="images/common/g2_idea.png" class="_on"
												title="의견접수" alt="의견접수" /></a></li>
										<li><a href="snak/you_n_orion/faq.jsp"><img
												src="images/common/g2_faq01.png" class="_on" alt="FAQ"
												title="FAQ" /></a></li>
										<li><a href="snak/you_n_orion/branch_net_01.jsp"><img
												src="images/common/g2_location.png" title="영업소 위치"
												class="_on" alt="영업소 위치" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="snak/company/orion_intro_main.jsp"
								class="oda"><img src="images/common/g1_company.png"
									class="od" title="COMPANY" alt="COMPANY" /></a> <!-- twom -->
								<div class="twom">
									<ul class="tm">
										<li><a href="snak/company/orion_intro_main.jsp"><img
												src="images/common/g2_com1.png" class="_on"
												title="오리온 소개" alt="오리온 소개" /></a></li>
										<li><a href="snak/company/orion_history_main.jsp"><img
												src="images/common/g2_com2.png" class="_on"
												title="오리온 역사관" alt="오리온 역사관" /></a></li>
										<li><a href="snak/company/orion_business_main.jsp"><img
												src="images/common/g2_com3.png" class="_on"
												title="오리온 사업영역" alt="오리온 사업영역" /></a></li>
										<li><a href="snak/company/ir02.jsp"><img
												src="images/common/g2_com4.png" class="_on"
												title="투자정보" alt="IR정보" /></a></li>
										<li><a href="snak/company/e-press_room_list.jsp"><img
												src="images/common/g2_com5.png" class="_on"
												title="PR정보" alt="PR정보" /></a></li>
										<li><a href="http://recruit.orionworld.com/" title="[새창]"
											target="_blank"><img
												src="images/common/g2_com6.png" class="_on"
												title="채용공고" alt="채용공고" /></a></li>
										<li><a href="snak/company/contactsus.jsp"><img
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
						<li style="padding-top: 1px;"><a href="main.jsp"
							title="Korean homepage" style="border-right: 1px solid #767676">Korean</a></li>
						<li style="padding-top: 1px;"><a href="ENG/index.html"
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
					src="script/jquery-1.7.1.min.js"></script>
				<script type="text/javascript" src="script/hk.core.js"></script>
				<div id="subSide">
					<div id="snb_wrap"
						style="background: url('images/common/left_top01_bg.png') no-repeat top;">
						<div class="snb_in">
							<div class="nav_wrap">
								<ul class="nav">
									<li class="sub"><span><a
											href="userSnakView.snak?curPage=1&category=1"><img
												src="images/common/lmenu_01.png" alt="Product Info" /></a></span>
										<ul class="twot">
											<li><a href="userSnakView.snak?curPage=1&category=1"><img
													src="images/common/lmenu_sub_01.png" alt="파이류" /></a></li>
											<li><a href="userSnakView.snak?curPage=1&category=2"><img
													src="images/common/lmenu_sub_02.png" alt="스낵류" /></a></li>
											<li><a href="userSnakView.snak?curPage=1&category=3"><img
													src="images/common/lmenu_sub_03.png" alt="비스킷류" /></a></li>
											<li><a href="userSnakView.snak?curPage=1&category=4"><img
													src="images/common/lmenu_sub_04.png" alt="껌류" /></a></li>
											<li><a href="userSnakView.snak?curPage=1&category=5"><img
													src="images/common/lmenu_sub_05.png" alt="캔디류" /></a></li>
											<li><a href="userSnakView.snak?curPage=1&category=6"><img
													src="images/common/lmenu_sub_06.png" alt="초콜렛류" /></a></li>
										</ul></li>
									<li class="sub"><span><a
											href="snak/power_brand/view_cfba4b.html?iCodeNo=1&amp;iAssortNo=4"><img
												src="images/common/lmenu_02.png" alt="CF" /></a></span>
										<ul class="twot">
											<li><a href="snak/power_brand/view_cfba4b.html?iCodeNo=1&amp;iAssortNo=4"><img
													src="images/common/lmenu_sub_07.png" alt="오리온CF" /></a></li>
											<li><a href="snak/power_brand/view_cfe529.html?iCodeNo=1&amp;iAssortNo=5"><img
													src="images/common/lmenu_sub_08.png" alt="초코파이CF" /></a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

		
				<!-- //Sub Side -->

						<!-- Sub Contents 모든 서브 컨텐츠는 수정되었음, 복사해서 사용할 것 -->
				
				<div id="subContents">

					<div class="subTitleArea">
						<h3>
							<img src="images/power_brand/subtit_biscuit_type.gif"
								alt="비스킷류" /> <a style="margin-left: 10px;"
								href="http://blog.orionworld.com/" target="_blank"><img
								src="images/icon/btnBlog.png" alt="블로그" /></a> <a
								style="margin-left: 1px;"
								href="https://www.facebook.com/onlyorion" target="_blank"><img
								src="images/icon/btnFacebook.png" alt="페이스북" /></a> <a
								style="margin-left: 1px;"
								href="https://www.instagram.com/orion_world/" target="_blink"><img
								src="images/marketO/btnInstar.png" alt="마켓오 인스타그램" /></a>
						</h3>
						<div class="location">Home &gt; Orion Power Brand &gt;
							Product Info &gt; 비스킷류</div>
					</div>
					<%
				System.out.println("jsp 게시판 생성 시작전");
				%>
					<div class="typeList">
						<!-- type list line -->
						<%
							int h = 12 * (curPage-1);
							for(int i = 0 ; i<9 ; i+=4){
								for(int j = 0 ; j < 4 ; j++){
									int k = i+j+h;
									try{
									vo=(snakVO)voList.get(k);
									
									
									
									}catch(Exception e){
										System.out.println("캐치 진입 함. 373라인");
										vo=new snakVO();
									}
									
									if(k%4==0){//ein
										System.out.println("if진입,ein"+k);
										%>
						<div class="typeListLine">
							<dl class="typeListSet">
								<dt>
									<a href="userSnakDetail.snak?num=<%=vo.getNum()%>&category=<%=categori%>">
										<img src="<%=vo.getTh_image()%>" width="125" height="127"
										alt="<%=vo.getName() %>" />
									</a>
								</dt>
								<dd class="prodTitle"><%=vo.getName() %></dd>
								<dd class="prodIntro">
									<a href="userSnakDetail.snak?num=<%=vo.getNum()%>&category=<%=categori%>">
										<img src="images/button/product_intro.gif" alt="제품소개" />
									</a>
								</dd>
							</dl>	
										<%
									}else if(k%4==3){//funf
										System.out.println("else if진입,funf"+k);
										%>
							<dl class="typeListSet end">
								<dt>
									<a href="userSnakDetail.snak?num=<%=vo.getNum()%>&category=<%=categori%>">
										<img src="<%=vo.getTh_image()%>" width="125" height="127"
										alt="<%=vo.getName() %>" />
									</a>
								</dt>
								<dd class="prodTitle"><%=vo.getName() %></dd>
								<dd class="prodIntro">
									<a href="userSnakDetail.snak?num=<%=vo.getNum()%>&category=<%=categori%>">
										<img src="images/button/product_intro.gif" alt="제품소개" />
									</a>
								</dd>
							</dl>
						</div>
										<%
									}else{// zwie drie
										System.out.println("else진입,2,3"+k);
										%>
							<dl class="typeListSet">
								<dt>
									<a href="userSnakDetail.snak?num=<%=vo.getNum()%>&category=<%=categori%>"> 
										<img src="<%=vo.getTh_image()%>" width="125" height="127"
										alt="<%=vo.getName() %>" />
									</a>
								</dt>
								<dd class="prodTitle"><%=vo.getName() %></dd>
								<dd class="prodIntro">
									<a href="userSnakDetail.snak?num=<%=vo.getNum()%>&category=<%=categori%>">
										<img src="images/button/product_intro.gif" alt="제품소개" />
									</a>
								</dd>
							</dl>	
										<%
									}
									System.out.println("한번 통과");
								}
							}
						%>
						<div align="center">
							<%
								int result=0;
								if(voList.size() > 12){
									int i = voList.size()/12;
									int j = voList.size()%12;
									if(j!=0)
										result = i+j;
									else
										result = i;
								}
								for(int i = 1 ; i < result+1 ; i ++){
									if(curPage!=i){
										%>
										<a href="./userSnakView.snak?category=<%=categori %>&curPage=<%=i%>">[<%=i %>]</a>
										<%
									}else{
										%>
										[<%=i %>] 
										<%
									}
								}
							%>
						</div>

						<!-- //type list line -->




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
					<li><a href="footer/pop_legal_notice.html" target="_blank"
						title="[팝업]" onclick="footerPop(1)"><img
							src="images/common/footer_menu01.gif" alt="법적고지" /></a></li>
					<li><a href="footer/pop_user_guide.html" target="_blank"
						title="[팝업]" onclick="footerPop(2)"><img
							src="images/common/footer_menu02.gif" alt="이용안내" /></a></li>
					<li><a href="members/pop_privacy.html" target="_blank"
						title="[팝업]" onclick="footerPop(3)"><img
							src="images/common/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
					<li style="background: none"><a
						href="footer/pop_forbid_colleting_email.html" target="_blank"
						title="[팝업]" onclick="footerPop(4)"><img
							src="images/common/footer_menu04.gif" alt="이메일주소수집거부" /></a></li>
					<!-- <li><a href="/snak/footer/pop_legal_notice.asp" target="_blank" title="제휴문의[팝업]" onclick="window.open(this.href, 'popLegal', 'width=600, height=460, left=300, top=200'); return false;"><img src="/images/button/footer_menu01.gif" alt="제휴문의" /></a></li>
			<li><a href="/snak/footer/pop_user_guide.asp" target="_blank" title="이용안내[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="/images/button/footer_menu02.gif" alt="이용안내" /></a></li>
			<li><a href="/snak/members/pop_privacy.asp" target="_blank" title="개인정보취급방침[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="/images/button/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
			<li class="end"><a href="/snak/footer/pop_forbid_colleting_email.asp" target="_blank" title="이메일주소수집거부[팝업]" onclick="window.open(this.href, 'popEmail', 'width=600, height=347, left=300, top=200'); return false;"><img src="/images/button/footer_menu04.gif" alt="이메일주소수집거부 " /></a></li>
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

<!-- Mirrored from www.orionworld.com/Snak/power_brand/productinfo.asp?icodeNo=1 by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 May 2017 00:43:07 GMT -->
</html>
