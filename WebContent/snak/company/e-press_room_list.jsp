<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "net.epress.db.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	List<pressVO> list = new ArrayList<pressVO>();
	
	list = (ArrayList<pressVO>)request.getAttribute("list");
	pressVO vo;
	int curPage=1,curPage2=0;
	curPage2=(int)request.getAttribute("curPage");
	if(curPage2!=0){
		curPage=curPage2;
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company - e-프레스룸</title>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="stylesheet" type="text/css" href="style/base.css" />
<link rel="stylesheet" type="text/css" href="style/company.css" />
<link rel="stylesheet" type="text/css" href="style/board.css" />
<script type="text/javascript" src="script/common.js"></script>

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
		<script type="text/javascript">showFlash("flash/subnevi.swf", "100%", "100%;", "");</script> 
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
									class="od" title="Dr. you" alt="Dr. you" /></a> <!-- <a href="http://www.dr-you.co.kr/main.php" class="oda"><img src="snak/snak/images/common/g1_dr.png" class="od" title="Dr. you" alt="Dr. you" /></a> -->
								<!-- twom -->
								<div class="twom"
									style="left: -120px; background-image: url('snak/snak/images/common/two_bg.png')">
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
								href="snak/event/current_event.asp.html" class="oda"><img
									src="images/common/g1_event.png" class="od" title="EVENT"
									alt="EVENT" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('images/common/two_bg2.png')">
									<ul class="tm">
										<li><a href="snak/event/current_event.asp.html"><img
												src="images/common/g2_eventing.png" class="_on"
												title="진행중인 이벤트" alt="진행중인 이벤트" /></a></li>
										<li><a href="snak/event/past_event.asp.html"><img
												src="images/common/g2_eventend.png" class="_on"
												title="완료된 이벤트" alt="완료된 이벤트" /></a></li>
									</ul>
								</div> <!-- // twom --></li>



							<li class="onem"><a href="snak/you_n_orion/voc.jsp"
								class="oda"><img src="images/common/g1_customer.png"
									class="od" title="CUSTOMER" alt="CUSTOMER" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('images/common/two_bg.png')">
									<ul class="tm">
										<li><a href="you_n_orion/voc.jsp"><img
												src="images/common/g2_voc01.png" class="_on"
												title="고객소리" alt="고객소리" /></a></li>
										<li><a href="you_n_orion/customer.jsp"><img
												src="images/common/g2_claim.png" class="_on"
												title="불만접수" alt="불만접수" /></a></li>
										<li><a href="you_n_orion/event150304.jsp"><img
												src="images/common/g2_idea.png" class="_on"
												title="의견접수" alt="의견접수" /></a></li>
										<li><a href="you_n_orion/faq.jsp"><img
												src="images/common/g2_faq01.png" class="_on" alt="FAQ"
												title="FAQ" /></a></li>
										<li><a href="snak/you_n_orion/branch_net_01.jsp"><img
												src="images/common/g2_location.png" title="영업소 위치"
												class="_on" alt="영업소 위치" /></a></li>
									</ul>
								</div> <!-- // twom --></li>
							<li class="onem"><a href="snak/company/orion_intro_main.jsp" class="oda"><img
									src="images/common/g1_company.png" class="od"
									title="COMPANY" alt="COMPANY" /></a> <!-- twom -->
								<div class="twom"
									style="background-image: url('images/common/two_bg.png')">
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
						<li style="padding-top: 1px;"><a href="ENG/ENG.html"
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
						style="background: url('snak/snak/images/common/left_top04_bg.png') no-repeat top;">
						<div class="snb_in">
							<div class="nav_wrap">
								<ul class="nav">
									<li class="sub"><span><a
											href="snak/company/orion_intro_main.jsp"><img
												src="http://www.orionworld.com/images/common/lmenu_10.png"
												alt="오리온 소개" /></a></span>
										<ul class="twot">
											<li><a href="snak/company/ceo01.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_09.png"
													alt="CEO 메시지" /></a></li>
											<li><a href="snak/company/orion_way.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_10.png"
													alt="Only Orion" /></a></li>
											<li><a href="snak/company/ci.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_11.png"
													alt="CI 소개" /></a></li>
											<li><a href="snak/company/ethical01.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_17.png"
													alt="윤리경영" /></a></li>
											<li><a href="snak/company/growth.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_growth.png"
													alt="동반성장" /></a></li>
											<li><a href="snak/company/brochure.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_brochure.png"
													alt="브로셔" /></a></li>
										</ul></li>
									<li class="sub"><span><a
											href="snak/company/orion_history_main.jsp"><img
												src="http://www.orionworld.com/images/common/lmenu_11.png"
												alt="오리온 역사관" /></a></span>
										<ul class="twot">
											<li><a href="snak/company/founder.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_12.png"
													alt="창업주 이양구 회장" /></a></li>
											<li><a href="snak/company/snack50_01.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_13.png"
													alt="오리온 연혁" /></a></li>
										</ul></li>
									<li class="sub"><span><a
											href="snak/company/orion_business_main.jsp"><img
												src="http://www.orionworld.com/images/common/lmenu_12.png"
												alt="오리온 사업영역" /></a></span>
										<ul class="twot">
											<li><a href="snak/company/entertainment03.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_14.png"
													alt="엔터테인먼트" /></a></li>
											<li><a href="snak/company/global_business02.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_15.png"
													alt="글로벌사업" /></a></li>
										</ul></li>
									<li class="sub"><span><a href="snak/company/ir02.jsp"><img
												src="http://www.orionworld.com/images/common/lmenu_13.png"
												alt="IR정보" /></a></span>

										<ul class="twot">
											<li><a href="snak/company/ir02.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_19.png"
													alt="주주정보" /></a></li>
											<li><a href="snak/company/ir03.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_20.png"
													alt="재무정보" /></a></li>
											<li><a href="snak/company/ir04.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_21.png"
													alt="주가정보" /></a></li>
											<li><a href="snak/company/ir05_list.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_22.png"
													alt="IR자료실" /></a></li>
											<li><a href="snak/company/ir06_list.jsp"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_23.png"
													alt="공고" /></a></li>
										</ul></li>


									<li class="sub"><span><a
											href="pressViewUser.epress?curPage=1"><img
												src="http://www.orionworld.com/images/common/lmenu_14.png"
												alt="PR정보" /></a></span>
										<ul class="twot">
											<li><a href="pressViewUser.epress?curPage=1"><img
													src="http://www.orionworld.com/images/common/lmenu_sub_16.png"
													alt="e-프레스룸" /></a></li>
										</ul></li>
									<li class="sub"><span><a
											href="https://orion.recruiter.co.kr/" target="_blank"><img
												src="http://www.orionworld.com/images/common/lmenu_15.png"
												alt="채용공고" /></a></span></li>
									<!-- li class="sub"><span><a href="https://recruitorion.saramin.co.kr/_service/orion/apply_site/apply/intro.asp" target="_blank"><img src="http://www.orionworld.com/images/common/lmenu_15.png" alt="채용공고" /></a></span></li -->
									<li class="sub"><span><a href="snak/company/contactsus.jsp"><img
												src="http://www.orionworld.com/images/common/lmenu_16.png"
												alt="오시는 길" /></a></span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- //Sub Side -->

				<!-- 여기서부터 지옥의 시작인가 Sub Contents -->
				<div id="subContents">

					<div class="subTitleArea">
						<h3>
							<img
								src="http://www.orionworld.com/images/company/subtit_epress_room.gif"
								alt="e-프레스룸" />
						</h3>

						<div class="location">Home &gt; Company &gt; PR 정보 &gt;
							e-프레스룸</div>
					</div>

					<div class="subDesc02">
						<p>
							<img
								src="http://www.orionworld.com/images/company/subdesc_epress_room.gif"
								alt="고객의 관심과 사랑으로 성장해 온 오리온 새롭게 변화하는 오리온의 눈부신 행보를 지켜봐 주십시오." />
						</p>
					</div>
					<form name="frmSearch" method="post" action="e-press_room_list.asp">
						<div class="searchList">
							<fieldset>
								<legend>게시판 검색</legend>
								<p class="inputLine">
									<label for="search_b" style="display: none">게시판검색선택박스</label> <select
										name="FindField" title="게시판검색선택박스" id="search_b">
										<option value="B_Subject" selected="selected">제 목</option>
									</select> <label for="search_b2" style="display: none">게시판검색</label> <input
										type="text" name="FindValue" value="" id="search_b2" size="15"
										class="textType" title="검색어 입력" /> <a
										href="javascript:document.frmSearch.submit();"><img
										src="http://www.orionworld.com/images/button/search.gif"
										title="검색" alt="검색" /></a>
								</p>
							</fieldset>
						</div>
					</form>

					<!-- 게시판 리스트 -->
					<table summary="항목 번호, 제목, 작성일, 조회수의 e-프레스룸 리스트 게시판 "
						class="boardListType">
						<caption>e-프레스룸 리스트 게시판</caption>
						<colgroup>
							<col width="10%" />
							<col width="auto" />
							<col width="18%" />
							<col width="12%" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><img
									src="http://www.orionworld.com/images/board/txt_num_lst.gif"
									alt="번호" /></th>
								<th scope="col"><img
									src="http://www.orionworld.com/images/board/txt_title_lst.gif"
									alt="제목" /></th>
								<th scope="col"><img
									src="http://www.orionworld.com/images/board/txt_date_lst.gif"
									alt="작성일" /></th>
								<th scope="col" class="end"><img
									src="http://www.orionworld.com/images/board/txt_hit_lst.gif"
									alt="조회수" /></th>
							</tr>
						</thead>
						<tbody>

					<%
						int startSize = 10 * (curPage-1);
						int maxSize = list.size();
						int maxSizeDiv = maxSize/10;
						int maxSizeLeft = maxSize%10;
						int totalListSize=0;
						if(maxSizeLeft!=0){
							totalListSize = maxSizeDiv;
						}else{
							totalListSize = maxSizeDiv+1;
						}
						System.out.println("startSize : "+startSize+" curSize : "+curPage+" maxSze : "+maxSize);
						for(int i = 0 ; i < 10 ; i++){
							
							if(i+1+startSize>maxSize){
								System.out.println("enter if");
								%>	
								<tr>
								<td></td>
								<td class="title"></td>
								<td></td>
								<td></td>
							</tr>
								<%
							}else{
								System.out.println("enter else");
								vo=list.get(i+startSize);
							%>
							<tr>
								<td><%=vo.getNum()%></td>
								<td class="title"><a
									href="pressDetail.epress?kind=2&num=<%=vo.getNum()%>&count=<%=vo.getCount()%>">
									<%=vo.getTitle() %></a>
								</td>
								<td><%=vo.getUploaddate() %></td>
								<td><%=vo.getCount() %></td>
							</tr>
							<%
							}
						}
					%>
						</tbody>
					</table>
					<!-- //게시판 리스트 -->

					<!-- paging -->
					<div class="paging">
					
						<span style='color: #DFDFDF'>
						<%
							if(curPage>10){
								%>
								<a href="snak/snak/pressViewUser.epress?curPage=<%=curPage-10 %>">
									<img src='img/arrow_quick_prev_off.gif' alt='이전 10개' />
								</a> 
								<%
							}else{
								%><img src='img/arrow_quick_prev_off.gif' alt='이전 10개' />
								<%
							}
						%>
						</span> 
						
						<span style='color: #DFDFDF'>
						<%
							if(curPage>1){
								%>
								<a href="snak/snak/pressViewUser.epress?curPage=<%=curPage-1 %>">
									<img src='img/arrow_prev_off.gif' alt='이전 페이지' />
								</a> 
								<%
							}else{
								%><img src='img/arrow_prev_off.gif' alt='이전 페이지' />
								<%	
							}
						%>
							
						</span> 
						
						<span style='color: #333333'>[<strong>1</strong>]
						</span>&nbsp;
						<%
							for(int i = 0 ; i < totalListSize ; i ++){
								%>
								<a href="snak/snak/pressViewUser.epress?curPage=<%=i %>"
								class='cbindex'>[<%=i%>]</a>&nbsp;
								<%
							}
						%>
						
						<span style='color: #DFDFDF'>
						<%
							if(curPage<maxSizeDiv){
								%>
								<a href="snak/snak/pressViewUser.epress?curPage=<%=curPage+1 %>">
									<img src='img/arrow_next_on.gif' alt='다음 페이지' />
								</a> 
								<%
							}else{
								%>
									<img src='img/arrow_next_on.gif' alt='다음 페이지' />
								<%	
							}
						%>
							
						</span>
						<span style='color: #DFDFDF'>
						<%
							if(curPage<(maxSizeDiv+10)){
								%>
								<a href="snak/snak/pressViewUser.epress?curPage=<%=curPage+10 %>">
									<img src='img/arrow_next_on.gif' alt='다음 페이지' />
								</a> 
								<%
							}else{
								%>
									<img src='img/arrow_next_on.gif' alt='다음 페이지' />
								<%	
							}
						%>
							
						</span>
						
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
					<li><a href="snak/footer/pop_legal_notice.asp.html"
						target="_blank" title="[팝업]" onclick="footerPop(1)"><img
							src="images/common/footer_menu01.gif" alt="법적고지" /></a></li>
					<li><a href="snak/footer/pop_user_guide.asp.html"
						target="_blank" title="[팝업]" onclick="footerPop(2)"><img
							src="images/common/footer_menu02.gif" alt="이용안내" /></a></li>
					<li><a href="snak/members/pop_privacy.asp.html" target="_blank"
						title="[팝업]" onclick="footerPop(3)"><img
							src="images/common/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
					<li style="background: none"><a
						href="snak/footer/pop_forbid_colleting_email.asp.html"
						target="_blank" title="[팝업]" onclick="footerPop(4)"><img
							src="images/common/footer_menu04.gif" alt="이메일주소수집거부" /></a></li>
					<!-- <li><a href="snak/footer/pop_legal_notice.asp.html" target="_blank" title="제휴문의[팝업]" onclick="window.open(this.href, 'popLegal', 'width=600, height=460, left=300, top=200'); return false;"><img src="images/button/footer_menu01.gif" alt="제휴문의" /></a></li>
			<li><a href="snak/footer/pop_user_guide.asp.html" target="_blank" title="이용안내[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="images/button/footer_menu02.gif" alt="이용안내" /></a></li>
			<li><a href="snak/members/pop_privacy.asp.html" target="_blank" title="개인정보취급방침[팝업]" onclick="window.open(this.href, 'popPrivacy', 'width=600, height=654, left=300, top=200'); return false;"><img src="images/button/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
			<li class="end"><a href="snak/footer/pop_forbid_colleting_email.asp.html" target="_blank" title="이메일주소수집거부[팝업]" onclick="window.open(this.href, 'popEmail', 'width=600, height=347, left=300, top=200'); return false;"><img src="images/button/footer_menu04.gif" alt="이메일주소수집거부 " /></a></li>
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
