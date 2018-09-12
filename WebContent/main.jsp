<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta name="viewport" content="width=1024" />
<title>ORION</title>
<link rel="stylesheet" type="text/css" href="style/common.css" />

<!-- Facebook Pixel Code
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');

fbq('init', '1565320483707108');
fbq('track', "PageView");</script>
<!noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=1565320483707108&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->

<!-- Facebook Pixel Code -->
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script', '../connect.facebook.net/en_US/fbevents.js');
	fbq('init', '1701603920156477');
	fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1701603920156477&amp;ev=PageView&amp;noscript=1" />
</noscript>
<!-- DO NOT MODIFY -->
<!-- End Facebook Pixel Code -->

<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/hk.core.js"></script>
<script type="text/javascript">
<!--
	function notice_getCookie(name) {
		var nameOfCookie = name + "=";
		var x = 0;
		while (x <= document.cookie.length) {
			var y = (x + nameOfCookie.length);
			if (document.cookie.substring(x, y) == nameOfCookie) {
				if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
					endOfCookie = document.cookie.length;
				return unescape(document.cookie.substring(y, endOfCookie));
			}
			x = document.cookie.indexOf(" ", x) + 1;
			if (x == 0)
				break;
		}
		return "";
	}

	//쿠키

	function getCookie(name) {
		var Found = false
		var start, end
		var i = 0

		while (i <= document.cookie.length) {
			start = i
			end = start + name.length

			if (document.cookie.substring(start, end) == name) {
				Found = true
				break
			}
			i++
		}

		if (Found == true) {
			start = end + 1
			end = document.cookie.indexOf(";", start)
			if (end < start)
				end = document.cookie.length
			return document.cookie.substring(start, end)
		}
		return ""
	}
	//쿠키

	function openPopup1() {
		/*
		var noticeCookie=getCookie("CookieName1");  // 쿠키네임 지정
		if (noticeCookie != "no") {
			//window.open('pop/20120312/pop2.html','pop1','width=470,height=319,top=0,left=0,scrollbars=no');
			//window.open('pop/20120323/pop1.html','pop2','width=639,height=965,left=0,top=0,right=0,resizable=no');
		}
		 */
		var cookie1 = getCookie("CookieName1"); // 쿠키네임 지정
		var cookie2 = getCookie("CookieName2"); // 쿠키네임 지정
		if (cookie1 != "no") {
			//window.open('pop/20130311/pop1.html','pop1','width=500,height=500,top=0,left=0,scrollbars=no');
			//window.open('pop/20130613/popup.html','pop1','width=500,height=600,top=0,left=0,scrollbars=yes');
		}
		if (cookie2 != "no") {
			//window.open('pop/20130311/pop2.html','pop2','width=500,height=500,left=517,top=0,right=0,resizable=no');
		}
	}

	openPopup1();

	if (notice_getCookie("popup01") != "done") {

		//window.open('http://www.chocchoc.co.kr/winner.php','popup01','width=500,height=500,left=0,top=0,right=0,resizable=no');
		//window.open('pop/20111013/pop1.html','popup01','width=450,height=380,left=0,top=0,right=0,resizable=no');
		//window.open('pop/20120703/pop1.html','popup03','width=600,height=940,left=800,top=0,right=0,resizable=no');

	}

	// 오린온 강제 팝업 window.open('pop/popup_20141105.html','popup01','width=463,height=238,left=100,top=100,resizable=no');
//-->
</script>
</head>
<body id="subMain">
	<!-- skip menu -->
	<ul class="skiplist">
		<li class="skip"><a href="#gnb">주메뉴 바로가기</a></li>
		<li class="skip"><a href="#main">본문내용으로 바로가기</a></li>
	</ul>
	<!-- //skip menu -->

	<!-- page_wrap -->
	<div id="page_wrap">
		<!-- top_wrap -->
		<div class="top_wrap">
			<div class="top_in">
				<h1 class="top_logo">
					<a href="main.jsp" tabindex="0"><img
						src="images/common/main_logo.png" alt="ORION" /></a>
				</h1>
				<!-- util_wrap -->
				<div class="util_wrap">
					<ul class="util">
						<li><a href="main.jsp" title="Korean homepage"
							style="border-right: 1px solid #767676">Korean</a></li>
						<li><a href="ENG/index.html" title="English homepage">English</a></li>
						<li><a style="padding: 0 3px 0 5px;"
							href="http://blog.orionworld.com/" target="_blank"><img
								src="images/button/btnBlog.png" alt="blog" /></a></li>
						<li><a style="padding: 0 3px 0 0;"
							href="https://www.facebook.com/onlyorion" target="_blank"><img
								src="images/button/btnFace.png" alt="facebook"></a></li>
						<li><a style="padding: 0 3px 0 0;"
							href="https://www.instagram.com/orion_world/" target="_blank"><img
								src="images/button/btnInstar.png" alt="instargrem"></a></li>
						<li><a style="padding: 0;"
							href="http://recruitsales.orionworld.com/" target="_blank"><img
								src="images/button/btnPeople.png" alt="영업사원"></a></li>
					</ul>


				</div>
				<!-- // util_wrap -->

				<style type="text/css">
.gnb_wrap ul.topm li.onem {
	margin-left: 10px;
}

.gnb_wrap ul.topm li:first-child {
	margin-left: 0;
}
</style>
				<!-- gnb_wrap -->
				<div class="gnb_wrap" id="gnb">
					<h2 class="hidden">메인메뉴</h2>
					<ul class="topm">
						<li class="onem"><a
							href="userSnakViewNew.snak?curPage=1"
							class="oda"><img src="images/common/mg1_newp.png" class="od"
								alt="new product" /></a> <!-- twom -->
							<div class="twom"
								style="left: -120px; background-image: url('images/common/two_bg2.png')">
								<ul class="tm">
									<li><a
										href="userSnakViewNew.snak?curPage=1"><img
											src="images/common/g2_newp.png" class="_on"
											title="new product" alt="new product" /></a></li>
								</ul>
							</div> <!-- // twom --></li>
						<li class="onem"><a href="snak/MarketO/MarketO_intro.jsp"
							class="oda"><img src="images/common/mg1_market.png"
								class="od" alt="Market O" /></a> <!-- twom -->
							<div class="twom"
								style="left: -120px; background-image: url('images/common/two_bg2.png')">
								<ul class="tm">
									<li><a href="snak/MarketO/sub01MarketO.jsp"><img
											src="images/common/g2_marketobaking.png" class="_on"
											title="마켓오 제과" alt="마켓오 제과" /></a></li>
									<li><a href="http://restaurant.themarketo.com/"><img
											src="images/common/g2_marketorestaurant.png" class="_on"
											title="마켓오 레스토랑" alt="마켓오 레스토랑" /></a></li>
								</ul>
							</div> <!-- // twom --></li>
						<li class="onem"><a href="snak/Dryou/sub00dryou.jsp"
							class="oda"><img src="images/common/mg1_dr.png" class="od"
								alt="Dr. you" /></a> <!-- <a href="http://www.dr-you.co.kr/main.php" class="oda"><img src="/images/common/mg1_dr.png" class="od" alt="Dr. you" /></a> -->
							<!-- twom -->
							<div class="twom" style="left: -120px;">
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
						<li class="onem"><a
							href="userSnakView.snak?curPage=1&category=1"
							class="oda"><img src="images/common/mg1_orion.png" class="od"
								alt="ORION POWER BRAND" /></a> <!-- twom -->
							<div class="twom"
								style="left: -70px; background-image: url('images/common/two_bg2.png')">
								<ul class="tm">
									<li><a
										href="userSnakView.snak?curPage=1&category=1"><img
											src="images/common/g2_product.png" class="_on"
											alt="Product Info" /></a></li>
									<li><a
										href="snak/power_brand/view_cfba4b.jsp"><img
											src="images/common/g2_cf.png" class="_on" alt="CF" /></a></li>
								</ul>
							</div> <!-- // twom --></li>

						<!-- 이벤트 숨김 -->
						<li class="onem" style="display: none;"><a
							href="snak/event/current_event.html" class="oda"><img
								src="images/common/mg1_event.png" class="od" alt="EVENT" /></a> <!-- twom -->
							<div class="twom"
								style="background-image: url('images/common/two_bg2.png')">
								<ul class="tm">
									<li><a href="snak/event/current_event.html"><img
											src="images/common/g2_eventing.png" class="_on"
											alt="진행중인 이벤트" /></a></li>
									<li><a href="snak/event/past_event.html"><img
											src="images/common/g2_eventend.png" class="_on" alt="완료된 이벤트" /></a></li>
								</ul>
							</div> <!-- // twom --></li>


						<li class="onem"><a href="snak/you_n_orion/voc.jsp"
							class="oda"><img src="images/common/mg1_customer.png"
								class="od" alt="CUSTOMER" /></a> <!-- twom -->
							<div class="twom">
								<ul class="tm">
									<li><a href="snak/you_n_orion/voc.jsp"><img
											src="images/common/g2_voc01.png" class="_on" title="고객소리"
											alt="고객소리" /></a></li>
									<li><a href="snak/you_n_orion/customer.jsp"><img
											src="images/common/g2_claim.png" class="_on" title="불만접수"
											alt="불만접수" /></a></li>
									<li><a href="snak/you_n_orion/event150304.jsp"><img
											src="images/common/g2_idea.png" class="_on" title="의견접수"
											alt="의견접수" /></a></li>
									<li><a href="snak/you_n_orion/faq.jsp"><img
											src="images/common/g2_faq01.png" class="_on" alt="FAQ"
											title="FAQ" /></a></li>
									<li><a href="snak/you_n_orion/branch_net_01.jsp"><img
											src="images/common/g2_location.png" title="영업소 위치"
											class="_on" alt="영업소 위치" /></a></li>
								</ul>
							</div> <!-- // twom --></li>
						<li class="onem"><a href="snak/company/orion_intro_main.jsp"
							class="oda"><img src="images/common/mg1_company.png"
								class="od" alt="COMPANY" /></a> <!-- twom -->
							<div class="twom">
								<ul class="tm">
									<li><a href="snak/company/ceo01.jsp"><img
											src="images/common/g2_com1.png" class="_on" alt="오리온 소개" /></a></li>
									<li><a href="snak/company/orion_history_main.jsp"><img
											src="images/common/g2_com2.png" class="_on" alt="오리온 역사관" /></a></li>
									<li><a href="snak/company/orion_business_main.jsp"><img
											src="images/common/g2_com3.png" class="_on" alt="오리온 사업영역" /></a></li>
									<li><a href="snak/company/ir02.jsp"><img
											src="images/common/g2_com4.png" class="_on" alt="IR정보" /></a></li>
									<li><a href="pressViewUser.epress?curPage=1"><img
											src="images/common/g2_com5.png" class="_on" alt="PR정보" /></a></li>
									<!--li><a href="/Snak/company/bidding.asp"  title="[새창]" target="_blank"><img src="/images/common/g2_com8.png" class="_on" alt="입찰공고" /></a></li-->
									<li><a href="https://orion.recruiter.co.kr/" title="[새창]"
										target="_blank"><img src="images/common/g2_com6.png"
											class="_on" alt="채용공고" /></a></li>
									<!-- li><a href="http://recruit.orionworld.com" title="[새창]" target="_blank"><img src="/images/common/g2_com6.png" class="_on" alt="채용공고" /></a></li -->
									<li><a href="snak/company/contactsus.jsp"><img
											src="images/common/g2_com7.png" class="_on" alt="오시는 길" /></a></li>
								</ul>
							</div> <!-- // twom --></li>
					</ul>
				</div>
				<!-- // gnb_wrap -->

			</div>
		</div>
		<!-- // top_wrap -->
		<div style="clear: both;"></div>

		<hr />



		<!-- mvwrap -->
		<div class="mvwrap" id="main">

			<!-- 센터 팝업 div style=" width:320px; height:83px; margin-left:366px; position:absolute; top:600px; z-index:9999;"><img src="/images/common/banner20170420_03.jpg" alt="착한운전 부탁해" /></a></div-->

			<div class="mvo mv1">
				<a href="snak/MarketO/MarketO_intro.jsp" title="마켓오 바로가기"><img
					src="images/common/mv1_new.png"
					alt="Market O 자연이 만든 순수과자 마켓·오 Nature always gives us the very best thing All of Market O Confectioneries are made from Nature itself" /></a>
			</div>


			<div class="mvo mv2">
				<a href="snak/Dryou/sub00dryou.jsp" title="닥터유 바로가기"><img
					src="images/common/mv2.png"
					alt="Dr.You 과자로 영양을 설계하다. Dr.You Project 맛도 좋고 건강에도 좋은 과자. &quot;당신을 위한 건강 밸런스, 닥터유가 맞춰 드리겠습니다.&quot;" /></a>
			</div>

			<!-- 		<div class="mvo mv2"><a href="http://www.dr-you.co.kr/main.php" title="[새창]" target="_blank"><img src="/images/common/mv2.png" alt="Dr.You 과자로 영양을 설계하다. Dr.You Project 맛도 좋고 건강에도 좋은 과자. &quot;당신을 위한 건강 밸런스, 닥터유가 맞춰 드리겠습니다.&quot;" /></a></div> -->



			<div class="mvo mv3">
				<a href="userSnakViewNew.snak?curPage=1"><img
					src="images/common/mv3.png"
					alt="Orion Power brand / Only Orion 늘 새로운 맛과 색다른 즐거움을 추구하는 당신 곁에서, 인기 돌풍을 일으키며 한국인의 입맛을 이끌어온 오리온의 파워 브랜드!! 초신비닐수지대신 100% 천연치클로 만든 오리온 내츄럴치클" /></a>
			</div>
		</div>
		<!-- // mvwrap -->

		<hr />

		<!-- footer_w -->
		<div class="footer_w">
			<h2 class="hidden">하단메뉴</h2>
			<!-- footer_in -->
			<div class="footer_in">
				<!-- footer -->
				<div class="footer" style="width: 930px">
					<ul class="botm">
						<li><a href="snak/footer/pop_legal_notice.html"
							target="_blank" title="[팝업]" onclick="footerPop(1)"><img
								src="images/common/footer_menu01.gif" alt="법적고지" /></a></li>
						<li><a href="snak/footer/pop_user_guide.html" target="_blank"
							title="[팝업]" onclick="footerPop(2)"><img
								src="images/common/footer_menu02.gif" alt="이용안내" /></a></li>
						<li><a href="snak/members/pop_privacy.html" target="_blank"
							title="[팝업]" onclick="footerPop(3)"><img
								src="images/common/footer_menu03.gif" alt="개인정보취급방침" /></a></li>
						<li style="background: none"><a
							href="snak/footer/pop_forbid_colleting_email.html"
							target="_blank" title="[팝업]" onclick="footerPop(4)"><img
								src="images/common/footer_menu04.gif" alt="이메일주소수집거부" /></a></li>

					</ul>
					<address>
						<img src="images/common/address.gif"
							alt="서울시 용산구 백범로 90다길 13/ 전화번호 02-710-6000 / 소비자보호센터:02-716-2805 / 수신자 요금부담 :080-023-5700 / 제품 구입 문의 : 02-710-6083 ORIONMASTER@ORIONWORLD.COM" />
					</address>
					<p class="ietxt">
						<img src="images/common/footer_explorer.png"
							alt="오리온 Website는 internet Explorer 8,9 버전에 최적화 되어 있습니다." />
					</p>
					<p class="copytxt">
						<img src="images/common/copyright.gif"
							alt="COPYRIGHT ORION CORP. ALL RIGHT RESERVED" />
					</p>
					<a
						href="http://www.crosscert.com/seal/orionworld.files/slide0001.htm"
						class="flogo" target="_blank" title="[새창]CROSSCERT 인증서 발급증서 바로가기"><img
						src="images/common/injeung.gif" alt="KISIA 한국정보보호산업협회" /></a>
				</div>
				<!-- // footer -->
			</div>
			<!-- // footer_in -->
		</div>
		<!-- // footer_w -->
	</div>
	<!-- // page_wrap -->

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


	<script type="text/javascript">
	<!--
		var smartPhones = [ 'iphone', 'ipod', 'ipad', 'windows ce', 'android',
				'blackberry', 'nokia', 'webos', 'opera mini', 'sonyerricsson',
				'opera mobi', 'iemobile' ];

		for ( var i in smartPhones) {
			// 스마트폰 확인
			if (navigator.userAgent.toLowerCase().match(
					new RegExp(smartPhones[i]))) {
				$("#page_wrap").css("width", "110%");
			}
		}
	//-->
	</script>
</body>


<!-- 아래 팝업 적용시 인크루드앞에 # 추가-->

<script language="Javascript" type="text/javascript">
	function setCookie(name, value, expirehours) {
		var todayDate = new Date();
		todayDate.setHours(todayDate.getHours() + expirehours);
		document.cookie = name + "=" + escape(value) + "; path=/; expires="
				+ todayDate.toGMTString() + ";"
	}
	function closeWin() {
		if (document.getElementById("pop_today").checked) {
			setCookie("ncookie", "done", 24);
		}
		document.getElementById('layer_pop').style.display = "none";
	}

	$(function() {
		$('.close01').click(function() {
			$('.popZone').hide();
		})
		$('.close02').click(function() {
			$('.popZone2').hide();
		})
	})
</script>




<style type="text/css">
.popZone {
	position: absolute;
	left: 0px;
	top: 200px;
	z-index: 500;
}
</style>

<div class="popZone" id="layer_pop">
	<div style="width: 200px;">
		<img src="http://www.orionworld.com/DATA/popup/images/popup_20170421_03.jpg" alt="착한운전을 부탁해">
		<div
			style="text-align: right; font-size: 12px; background: #ccc; padding: 4px 0;">
			<div style="padding: 0 10px; text-align: left; position: relative;">
				<label><input type="checkbox"
					style="vertical-align: middle;" onclick="closeWin();"
					name="pop_today" id="pop_today" /><span style="margin-left: 4px;">하루동안
						창닫기</span></label>
				<div class="close01"
					style="position: absolute; right: 10px; top: 4px; cursor: pointer">닫기</div>
			</div>
		</div>
	</div>
</div>



<script language="Javascript" type="text/javascript">
	cookiedata = document.cookie;

	if (cookiedata.indexOf("ncookie=done") < 0) {
		document.getElementById('layer_pop').style.display = "inline";
	} else {
		document.getElementById('layer_pop').style.display = "none";
	}
</script>






<!-- Mirrored from www.orionworld.com/main.asp by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 May 2017 00:32:09 GMT -->
</html>

