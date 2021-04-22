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
								<img src="img/${all[3].photo }"><input type="hidden"
									value="${all[3].photo }" name="photo" id="photo">
							</div>
						</li>

						<!-- 상품가격 -->
						<li>
							<div class="show_img2">
								<h5>(주)솔데스크샵</h5>
								<h2>
									<input id="name" name="name" type="hidden"
										value="${all[3].name }">"${all[3].name }"
								</h2>
								<span class="show_limte">베스트상품</span>



								<div class="show_price">
									<h2>
										<input type="hidden" value="${all[3].price }" id="price"
											name="price">
										<fmt:formatNumber type="currency">${all[3].price }</fmt:formatNumber>
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
										<li class="bseq_ea">9</li>
										<li class="text_street">
											<button type="button"
												onclick="fnCalCount('p',this); count();">+</button> <input
											type="text" id="quantity" name="quantity" value="0"
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

	<div class="main_text1">
		<h2>상품정보</h2>
		<div class="contents1"></div>
		<div class="service">
			<div class="photo">
				<img src="${pageContext.request.contextPath}\img/${all[3].info}">
			</div>
			<div class="contents2"></div>
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