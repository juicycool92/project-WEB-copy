<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우편번호 검색</title>
<link type="text/css" rel="stylesheet" href="zipcode.css" />
<script type="text/javascript" src="zipcode.js"></script>
<script type="text/javascript">
	function setAddr(zipcode, road_address) {
		parent.$("#post_zipcode_1").val(zipcode);
		parent.$("#post_addr_1").val(road_address);
		parent.$.smartPop.close();
	}
</script>
</head>
<body onload="fnInit('road')">

	<div id="wrap_pop">
		<div style="float: left;">
			<img src="img/title_zipcode.png" alt="우편번호 검색" />
		</div>
		<div style="float: right;"></div>
		<div style="clear: both;"></div>

		<div id="popBox" class="pd-inF" style="text-align: center;">
			<!-- contents -->

			<fieldset>
				<div class="zip_srchbox" id="srch1">

					<FORM action="zipcode.jsp" method="post" name="srch_f"
						onsubmit="return fnCheckForm(this);">
						<input type="hidden" name="zip1" value="" /> <input type="hidden"
							name="zip2" value="" /> <input type="hidden" name="addr"
							value="" /> <input type="hidden" name="searchKey" /> <input
							type="hidden" name="MainNo" /> <input type="hidden" name="SubNo" />

						<legend>우편번호 상세검색</legend>
						<!-- 검색구분 선택 -->
						<dl class="dlline">
							<dt>
								<strong><label for="sido">검색 방식</label></strong>
							</dt>
							<dd>
								<select id="gubun" title="검색 방식" name="gubun"
									onchange="fnGubun(this)">
									<option value="road">도로명+건물번호</option>
									<option value="dong">동(읍/면/리)명+지번</option>
								</select>
							</dd>

							<dt>
								<strong><label for="gugun">검색어</label></strong>
							</dt>
							<dd>
								<input type="text" name="keyword" id="keyword" class="srch_btn"
									style="width: 150px; ime-mode: active;" value="팔송로45번길76" /> <input
									type="image" alt="검색" src="img/popUpBtn_sch.gif" />
							</dd>
						</dl>

					</FORM>

				</div>

				<!-- 검색안내 -->
				<div class="zip_info">
					<p id="notitab3_list">
						<span class="first">*</span> 검색방법 : 도로명(~로,~길)+건물번호<br /> ☞ 서울시
						중구 <em>소공로 70</em>일 경우<br /> 예) <em>소공로</em>(도로명)&nbsp;<em>70</em>(건물번호)
					</p>

					<p id="notitab5_list" style="display: none">
						<span class="first">*</span> 검색방법 : 도로명(~로,~길)+건물번호<br /> ☞ 서울시
						중구 <em>충무로1가 20-1</em> 일 경우<br /> 예) <em>충무로1가</em>(동명)&nbsp;<em>20-1</em>(지번)
					</p>

					<p>
						<span class="first">※</span> 도로명주소가 검색되지 않는 경우는 <strong>안전행정부
							새주소 안내시스템 (<a href="http://juso.go.kr" target="_blank"
							title="새창열림">http://juso.go.kr</a>) 에서 <br /> 확인
						</strong>하시기 바랍니다
					</p>
				</div>
				<!-- //검색안내 -->

				<!-- 검색결과 -->
				<div class="srch_result">
					<table class="zip_t" summary="우편번호, 도로명주소, 지번주소">
						<caption>우편번호 검색결과</caption>
						<colgroup>
							<col width="14%"></col>
							<col width="86%"></col>
						</colgroup>
						<thead>
							<tr>
								<th>우편번호</th>
								<th>주소</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td><strong><a href="javascript:void(0);"
										onClick="javascript:setAddr('46222', '부산광역시 금정구 팔송로45번길 76 (남산동)');">46222</a></strong></td>
								<td style="text-align: left;"><a href="javascript:void(0);"
									onClick="javascript:setAddr('46222', '부산광역시 금정구 팔송로45번길 76 (남산동)');">부산광역시
										금정구 팔송로45번길 76 (남산동)<br />(부산광역시 금정구 남산동 978-23)
								</a></td>
							</tr>

						</tbody>
					</table>
				</div>
				<!-- //검색결과 -->

			</fieldset>

			<a href="javascript:void(0);" onclick="parent.$.smartPop.close();"><img
				src="img/address_btnClose.gif" alt="닫기" /></a>


			<!-- // contents -->
		</div>
	</div>
</body>
</html>


