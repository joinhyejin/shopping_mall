<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="font.css">
<link rel="stylesheet" href="main.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script type="text/javascript">
	function call() {
		alert('장바구니는 구현을 못했습니다ㅠㅠ');
		return false;
	}
	function zzim() {
		alert('진짜 네이버가 아니라서 찜은 못해용^^');
		return false;
	}
</script>
<body>
<div class="wrap">
         
         <div class="header">
           <div class = "header_top">
           <ul class= "header_L">
           <li><a href ="https://www.naver.com">naver</a></li>
             <li><a href ="https://shopping.naver.com/">네이버쇼핑</a></li>
           </ul>
           </div>
           <div class ="logo">
           <a href="HC">
            <span class="sol"><h1>솔데스크샵</h1></span>
            </a>
            </div>
            <ul class = "header_R">
              <li><a href ="https://shopping.naver.com/my/keep-stores">찜한 스토어</a></li>
               <li><a onclick="return call();">장바구니</a></li>
               </ul>
               </div>
               
               <!-- 메뉴바 -->
            <div class="menu-1">
            <!-- menu-1실제 텍스트는 없음 => inline-block;으로 글자화함  -->
            <ul >
            <li>
            <a href="AllC">전체상품</a>
            </li>
             <li>
             <a href="PersonC">인신매매</a>
             <ul class="nav_b">
              <li><a href="HjC">정혜진</a></li>
            </ul>
            </li>
            <li>
             <a href="LifeC">생활 소도구</a>
             <ul class="nav_b">
              <li><a href="VaccineC">밀-수입 코로나19</a></li>
            </ul>
            </li>
            <li>
             <a href="EtcC">기타상품</a>
             <ul class="nav_b">
              <li><a href="CatC">매우-귀여운 고양이</a></li>
               <li><a href="ShoesC">커플 슈-즈</a></li>
            </ul>
            </li>
            <li>
            <a href="SellerC">솔데스크샵</a>
            <ul class="nav_b">
            <li ><a href="SellerC">프로젝트 소개</a></li>
            <li ><a href="SellerC">히스토리</a></li>
             </ul>
             </li> 
            </ul>
            </div>
           
    


     
</div>

	<jsp:include page="${contentPage }"></jsp:include>
</body>

</html>