<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
	function fnCalCount(type, ths) {
		var $input = $(ths).parents("li").find("input[name='quantity']");
		var tCount = Number($input.val());
		var tEqCount = Number($(ths).parents("div").find("li.bseq_ea").html());

		if (type == 'p') {
			if (tCount < tEqCount)
				$input.val(Number(tCount) + 1);
		} else {
			if (tCount > 0)
				$input.val(Number(tCount) - 1);
		}
	}
	function count() {
		let quantity = document.getElementById('quantity').value;
		let price = document.getElementById('price').value;

		let coupon = document.getElementById('coupon');

		if (coupon.checked) {
			price = 0.9 * price;
		}

		let total = quantity * price;
		document.getElementById('total').value = total;
	}
	function notZero() {
		let quantity = document.getElementById('quantity').value;
		if (quantity == 0) {
			return false;
		}		
		return true;
	}
</script>
<body>
	<form action="BuyC">

		<!-- 상품이미지 -->
		<div class="show_Wrap">
			<div class="show_inner1">
				<div>
					<ul class="show_intro">
						<li>
							<div class="show_img">
								<img src="img/${all[0].photo }"><input type="hidden"
									value="${all[0].photo}"
									name="photo" id="photo">
							</div>
						</li>

						<!-- 상품가격 -->
						<li>
							<div class="show_img2">
								<h5>(주)솔데스크샵</h5>
								<h2>
									<input id="name" name="name" type="hidden"
										value="${all[0].name }">"${all[0].name }"
								</h2>
								<span class="show_limte">한정판매!!</span>



								<div class="show_price">
									<h2>
										<input type="hidden" value="${all[0].price }" id="price"
											name="price">
										<fmt:formatNumber type="currency">${all[0].price }</fmt:formatNumber>
									</h2>
								</div>

								<div class="coupon">
									<ul>
										<li class="coupon_Ch">쿠폰적용여부 <input type="checkbox"
											name="coupon" id="coupon" value="coupon" onclick="count();">
										</li>
									</ul>
								</div>


								<div class="Ship">
									<ul class="Ship2">
										<li>배송정보:</li>
										<li class="text_street">지역에 따라 배송비 추가</li>
									</ul>
								</div>

								<div class="Ship">
									<ul class="Ship2">
										<li>수량:</li>
										<li class="bseq_ea">3</li>
										<li class="text_street">
											<button type="button"
												onclick="fnCalCount('p',this); count();">+</button> 
												<input type="text" id="quantity" name="quantity" value="0"
											readonly="readonly" style="text-align: center;" />
											<button type="button"
												onclick="fnCalCount('m', this); count();">-</button>
										</li>
									</ul>
								</div>

								<div class="all_Price">
									<ul class="Ship2">
										<li class="all_Price2">총 금액</li>
										<li class="text_street2">
											<h2>
												<input type="number" readonly="readonly" name="total"
													id="total" class="total" value="0"> 원
											</h2>
										</li>
									</ul>
								</div>

								<div class="Sbutton_head">
									<div class="Sbutton">
										<ul class="Sbutton_in">
											<li><button id="Pbuy" onclick="return notZero();"><i
													class="fas fa-credit-card"></i>구매하기</button></li>
											<li><a onclick="return call();" id="Pcart"> <i
													class="fas fa-cart-arrow-down"></i> 장바구니
											</a></li>
										</ul>
									</div>
								</div>

							</div>
						</li>
					</ul>

				</div>
			</div>
		</div>
	</form>

	<!-- 상품정보테이블 -->
	<div class="main_text1">
		<h2>상품정보</h2>
		<div class="contents1"></div>
		<div class="service">
			<div class="photo">
				<img src="${pageContext.request.contextPath}\img/${all[0].info}">
			</div>
			<div class="contents2">
				<h2>인형인가, 고양이인가?</h2>
				이것이 인형인지 고양인지 헷갈리시는 분들도 있을거에요. <br> 왜냐면 이것은 그냥 Naver에서 인형 이라고
				검색했더니 나온 이미지인데 <br> 고양이 사진이 검색 이미지로 나와서 그런거 같아요. <br>
				<br> 고양이는, 너무 귀여워서 한시라도 눈을 뗄 수 없답니다. <br> 어떠한 굴욕적인 각도에서
				바라보아도 사랑스럽죠. <br> 불과 약 5년전만 해도 고양이는 고양이라고 불렸지만, 지금은 애옹이, 치즈냥,
				턱시도냥,, 등 불리는 이름이 다양해졌답니다?<br> 언제 고양이님을 만날지 모르니 매일 츄르를 가지고 다녀야
				하는 시대가 온 것이죠..!<br>
				<br> 고양이는요, 여름에는 벌레를 잡아주고 겨울에는 난로가 되어준답니다.<br> 봄과 여름에는 그냥
				보는것 만으로도 힐링을 받으실 수 있습니다. <br> 꾹꾹이를 받고 싶은 당신,, <br> 고양이의
				집사님이 되고싶지만,, 고양이는 제꺼랍니다?<br>
			</div>
		</div>
	</div>


	<section class="footer">
		<div class="inner2">
			<ul class="footer_link">
				<li><a href="">(주)솔데스크</a></li>

			</ul>
			<div class="address">
				<ul>
					<li>대표 팀장 서지은</li>
					<li>조원 정혜진</li>
				</ul>
				<p>1544-0714(이용시간 평일 09:00~17:30)</p>
				<address>서울특별시 종로구 종로12길 15, 5층(관철동 13-13)</address>
			</div>
		</div>
	</section>




</body>
</html>