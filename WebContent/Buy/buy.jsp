<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 도로명 조합형 주소 변수

				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}
				// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				if (fullRoadAddr !== '') {
					fullRoadAddr += extraRoadAddr;
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('addr1').value = fullRoadAddr;
				document.getElementById('addr2').focus();
			}
		}).open();
	}
</script>
<script type="text/javascript">
function isEmpty(input) {
	return !input.value;
}

//글자 수 체크 기능

function lessThan(input, length) {
	return input.value.length < length;
}

//한글이나 특수문자가 들어있는지 체크하는 기능
function containKR(input) {
	let ok = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM@!.0123456789";
	for (let i = 0; i < input.value.length; i++) {
		if (ok.indexOf(input.value[i]) == -1) {
			return true;
		}
	}
}

//input 두 개의 내용이 서로 다르면 오류를 띄워주는 기능

function same(a, b) {
	return a.value != b.value;
}

//input과 문자열 세트를 파라미터로 넣으면 그 글자가 포함되지 않았을 때 오류를 띄워주는 기능

function notContains(input, set) {
	for (let i = 0; i < set.length; i++) {
		if (input.value.indexOf(set[i]) != -1) {
			return false;
		}
	}
	return true;
}

//input에 숫자를 넣었는지 체크

function isNotNum(input) {
	return isNaN(input.value);
}
</script>
<script type="text/javascript">
	function check() {
		let nameinput = document.getElementById('nameinput');
		let phone1 = document.getElementById('phone1');
		let phone2 = document.getElementById('phone2');
		let phone3 = document.getElementById('phone3');
		let zipcode = document.getElementById('zip');
		let addr1 = document.getElementById('addr1');
		let addr2 = document.getElementById('addr2');

		if (isEmpty(nameinput)) {
			alert('이름을 입력해주세요.');
			nameinput.focus();
			return false;
		}
		if (isEmpty(phone1) || isEmpty(phone2) || isEmpty(phone3)) {
			alert('전화번호를 입력해주세요.');
			phone1.focus();
			return false;
		}
		if (isEmpty(zipcode) || isEmpty(addr1) || isEmpty(addr2)) {
			alert('주소를 입력해주세요.');
			addr2.focus();
			return false;
		} else {
			alert('죄송합니다 구매는 하실 수 없어요~^^');
			return false;
		}
		return false;
	}
</script>
<body>
	
            <div class ="buytable">
            
       <table style="width: 90%;" class="top" >
		<tr>
			<td><h2>
					<span >주문서 작성</span>
				</h2></td>
				
			<td align="right" id=body1><h5>주문/ 결제</h5></td>
			<td align="right" id=body2>
				<h5>> 완료</h5>
			</td>
		</tr>
	</table>
	
	
	<table style="width: 90%;" class="body2" border="0">
		<tr class="body1">
			<td colspan="2">상품정보</td>
			<td>수량</td>
			<td>가격</td>
			<td>주문금액</td>
		</tr>
		<tr>
			<td width="30%"><img src="img/${product.photo }"
				style="object-fit: contain; width: 30%;"></td>
			<td width="30%">${product.name }</td>
			<td>${product.quantity }</td>
			<td><fmt:formatNumber value="${product.price }" type="currency" /></td>
			<td><fmt:formatNumber value="${product.total }" type="currency" /></td>
		</tr>
	</table>

	<!-- 배송지 정보 -->
	<table style="width: 90%;" class="top">
		<tr>
			<td><h2>
					<span >배송지 정보</span>
				</h2></td>
		</tr>
	</table>
	<table style="width: 90%;" class="body3">
		<tr class="body1">
			
		</tr>

		<tr class="check">
			<td class="tdC">배송지 선택</td>
			<td colspan="3"><input type="checkbox" name="where"
				value="basic"> 기본배송지 <input type="checkbox" name="where"
				value="new" checked="checked"> 신규배송지</td>
		</tr>
		<tr>
			<td class="tdC">수령인</td>
			<td colspan="3"><input placeholder="50자 이내로 입력하세요"
				name="input_1" id="nameinput"></td>
		</tr>
		<tr>
			<td class="tdC">연락처</td>
			<td colspan="3"><input type="number" class="inputS" id="phone1">-<input
				type="number" class="inputS" id="phone2"> -<input
				type="number" class="inputS" id="phone3"></td>
		</tr>

		<tr>
			<td class="tdC">배송지명</td>
			<td colspan="3 "><select name="where">
					<option value='집'>집</option>
					<option value='회사'>회사</option>
					<option value='학교'>학교</option>
					<option value='친구'>친구</option>
					<option value='가족'>가족</option>

			</select></td>
		</tr>
		<tr>
			<td class="tdC">우편번호</td>
			<td colspan="3 "><input name="zipcode" id="zip" type="text"
				class="" maxlength="6" title="우편번호" value="" readonly="readonly">

				<a href="javascript:execDaumPostcode();" class="btn">우편번호</a></td>
		</tr>
		<tr>
			<td class="tdC">배송지 주소</td>
			<td colspan="3 "><input name="addr1" id="addr1" type="text"
				value=""> <input name="addr2" id="addr2" type="text"
				value=""></td>
		</tr>
		<tr>
			<td class="tdC">배송메모</td>
			<td colspan="3 "><input id="memo" placeholder="요청사항을 입력해 주세요"></td>
		</tr>
	</table>

	<table style="width: 90%;">
		<tr>
			<td colspan="5" align="center" id="tdC">
				<button id="Pcart" onclick="return check();">주문하기</button>
			</td>
		</tr>
	</table>
            
     </div>       
            
            
            
            
            
            
            
            
            
            
            
            
            <section class="footer">
<div class="inner2">
<ul class="footer_link">
<li><a href="">(주)솔데스크</a></li>

</ul>
<div class="address">
<ul>
<li>대표 팀장 서지은 </li>
<li>조원 정혜진 </li>
</ul>
<p> 1544-0714(이용시간 평일 09:00~17:30)</p>
<address>서울특별시 종로구 종로12길 15, 5층(관철동 13-13)</address>
</div>
</div>
</section>

</body>
</html>