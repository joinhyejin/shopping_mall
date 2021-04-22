<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

 <section class="mainBG">
    <div class="container">
    <div><h1 class="main_tit"><span >
    The Finest Quality group members</span>
    <br>Soldesk Project STORY</h1>
    <p >단 기간 최고의 효율을 낸 솔데스크샵을 만나보세요.
    <br> 마음에 드시는 상품을 구매해 주세요.  </p>
    </div>
    <div >&nbsp;&nbsp;
    </div>
    <div class="main_img1">
    <img src="img/노트북.jpg">
	</div>
    </div>
</section>

 
 <div class="meun">
   <h1>전체상품</h1>
   <ul class= "i">
   <!-- 첫번째 상품 -->
   <li><a href=${all[2].con }>
   <div class="meun_img">
   <img src="img/${all[2].photo }">
   
   </div>
   <div class="Nname">${all[2].name }
   
   </div>
   <div class="price">
  ${all[2].price }
   </div>
   </a>
   </li>
    <!-- 2번째 상품 -->
   <li><a href=${all[1].con }>
   <div class="meun_img">
   <img src="img/${all[1].photo }">
   </div>
   <div class="Nname">${all[1].name }
   
   </div>
   <div class="price">
   ${all[1].price }
   </div>
   </a>
   </li>
    <!-- 3번째 상품 -->
   <li><a href=${all[0].con }>
   <div class="meun_img">
   <img src="img/${all[0].photo }">
   </div>
   <div class="Nname">${all[0].name }
   
   </div>
   <div class="price">
   ${all[0].price }
   </div>
   </a>
   </li>
   
   <!-- 4번째 상품 -->
   <li><a href=${all[3].con }>
   <div class="meun_img">
   <img src="img/${all[3].photo }">
   
   </div>
   <div class="Nname">${all[3].name }
   
   </div>
   <div class="price">
   ${all[3].price }
   </div>
   </a>
   </li>
   
   </ul>
   </div>
   


</body>
</html>