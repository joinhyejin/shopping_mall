<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="main.css">
<link rel="stylesheet" href="font.css">
<link rel="stylesheet" href="NewFile.css">


</head>

<body>

<div class="slider">
    <input type="radio" name="slide" id="slide1" checked>
    <input type="radio" name="slide" id="slide2">
    <input type="radio" name="slide" id="slide3">
    <input type="radio" name="slide" id="slide4">
    <ul id="imgholder" class="imgs">
        <li><a href= ${all[3].con }><img src="img/${all[3].photo }"></a></li>
        <li><a href= ${all[2].con }><img src="img/${all[2].photo }"></a></li>
        <li><a href= ${all[0].con }><img src="img/${all[0].photo }"></a></li>
        <li><a href= ${all[1].con }><img src="img/${all[1].photo }"></a></li>
    </ul>
    <div class="bullets">
        <label for="slide1">&nbsp;</label>
        <label for="slide2">&nbsp;</label>
        <label for="slide3">&nbsp;</label>
        <label for="slide4">&nbsp;</label>
    </div>
</div>



<div class="main_section">
<!-- 1. -->
    <section class="mainBG">
    <div class="container"><a href="SellerC">
    <div><h1 class="main_tit"><span >
    The Finest Quality group members</span>
    <br>Soldesk Project STORY</h1>
    <p >단 기간 최고의 효율을 낸 솔데스크샵을 만나보세요.
    <br> 마음에 드시는 상품을 구매해 주세요.  </p>
    </div></a>
    <div >&nbsp;&nbsp;
    </div>
    <div class="main_img1">
    <img src="img/노트북.jpg">
	</div>
    </div>
</section>
	
	
	
	<section class="mainBG2">
<div class="inner">
<div class="sect_title">
<h5>2021 솔데스크샵</h5>
<h1 class="em">Best of Best </h1>
<p>역시,,애옹이가,,최고,,</p>
    </div>
    <div class ="cat"><a href=${all[0].con }>
    <img src="img/고양이.png"></a>
    </div>
    </div>
</section>
	
	
	
	
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
	
</div>

</body>
</html>