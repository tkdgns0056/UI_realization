<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>BIT KURLY</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
<style>
    *{
        font-family: sans-serif;
    }  
    .com-sm-3{
        width: 500px;
    }
        .btn_insert {
    width:80px;
    height:45px;
    color:#fff;
    border-radius: 5px;
    border:none;
    
}
   
    
</style>
  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="../assets/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="../assets/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="../assets/css/bootstrap.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="../assets/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="../assets/css/index.css">
	<link rel="stylesheet" href="../assets/css/style.css">
	<link rel="stylesheet" href="../assets/css/custom.css">
	<link rel="stylesheet" href="../assets/css/mypage.css">
	
<!--	<link rel="stylesheet" href="css/bootstrap.css">-->


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
<body>

  <div id="header">
      <div id="userMenu">
         <!-- <div></div> 샛별배송 없애는 대신 div태그 가능-->
         <div class="sub_tit" style="font-size: 13px;">샛별배송</div>
         <ul class="list_menu">
            <li class="menu none_sub menu_admin"><a href="admin/productList.jsp" class="link_menu">관리자</a></li> 
            <span class="bar"></span>
            <li class="menu none_sub menu_join"><a href="join/signUp.jsp" class="link_menu">회원가입</a></li> 
            <span class="bar"></span>
            <li class="menu none_sub menu_login"><a href="join/logIn.jsp" class="link_menu">로그인</a></li>
            <span class="bar"></span>
            <li class="menu lst dropdown"><a href="#" class="link_menu"><button class="dropbtn">고객센터 ▼</button></a>
               <div class="dropdown-content">
                  <a href="noticeboard/boardList.jsp">공지사항</a>
                  <a href="qnaboard/qnaBoard.jsp">1:1문의</a>
                  
                  
                  
               </div> 
            </li>
         </ul>
      </div>
   </div>

   <header style="padding-bottom: 3px">
      <div class="container text-center">
         <div class="fh5co-navbar-brand">
            <a class="fh5co-logo" href="index.jsp"><img src="assets/images/logo.png" style="height: 110px"></a>
         </div>
         
         <nav id="fh5co-main-nav" role="navigation" style="font-family: sans-serif">
            <ul class="list_menu">
               <li class="menu lst dropdown"><a href="#" class="active link_menu"><button class="dropbtn">전체 카테고리</button></a>
                  <div class="dropdown-content">
                     <a href="category/meat_product.jsp">육류</a>
                     <a href="category/veg_product.jsp">채소</a>
                     <a href="category/fruit_product.jsp">과일</a>
                     <a href="category/pet_product.jsp">애견</a>                     
                  </div> 
               </li>

               <li><a href="#new">신상품</a></li>
               <li><a href="#best">베스트</a></li>
               <li><a href="#sale">알뜰쇼핑</a></li>
               <li><a href="mypage/orderList.jsp">마이페이지</a></li>

            </ul>
         </nav>
   </header>
   
	<div id="container">
  		<div id = "content">
  		
  			<!-- 마이페이지 top -->
  			<div id ="myPageTop" class="page_aticle mypage_top">
  			  <div class="mypagetop_user">	
  				<div  class="inner_mypagetop">
  					<div class="user">
  						<div class="userpro">
  							<div class="pro_wrap">
  								
  								<strong class="profil">비트컬리프로필</strong>
  							</div>
  					
  							<div class="name">
  								박상훈님
  							</div>
  						</div>
  					</div> <!-- user프로필 끝 -->
  					
  					<div class="list_mypage">
  						<div class="list">
  							<a href="#" class="link_wrap">
  								<div class="link_title">
  									적립금
  								<img src="https://res.kurly.com/kurly/ico/2021/arrow_right_gray_56_56.png"
  								          alt class="arrow_right">
  								</div>
  								<div class="spacer"></div>
  								<p class="info">
  									0원
  								</p>
  							</a>
  							
  							<a href ="#" class="link_wrap">
  								<div class="link_title">
  									배송지
  								<img src="https://res.kurly.com/kurly/ico/2021/arrow_right_gray_56_56.png"
  								         alt class="arrow_right">
  								</div>
  								<div class="spacer"></div>
  								<p class="info">
  								성남시
  								</p>
  							</a>
  						</div><!-- list -->
  					</div><!-- list_mypage -->
  				  </div><!-- inner_mypagetop -->
  				</div><!-- mypagetop_user -->
  			
  			
  			</div><!--mypage top 끝  -->
  							
			<!-- 사이드 바-->
  			<div class="page_aticle aticle_type2">
  				<div id="snb" class="snb_my">
  					<h2 class="tit_snb">마이컬리</h2>
  					<div class="inner_snb">
  						<ul class="list_sidemenu">
  							<li class="on">
  								<a href="orderList.jsp">주문 내역</a>
  							</li>
  							<li>
  								<a href="../board/reviewBoard.jsp">상품 후기</a>
  							</li>
  							<li>
  								<a href="privacyUpdate.jsp">개인 정보 수정</a>
  							</li>
  						</ul>
  					</div> <!--inner snb 끝  -->
  						<a href="../board/qnaBoard.jsp" class="link_inquire">
  							<span class="emph">도움이 필요하신가요 ?<br></span>
  							"1:1 문의하기"
  						</a>	
  				</div> <!-- 사이드바 끝 -->
  				
  				<!-- 개인정보 수정 란 -->
  				<div class="page_section section_myinfo">
  					<div class="head_aticle">
  						<h2 class="tit">개인 정보 수정</h2>
  					</div>
  					<div class="type_form member_join member_mod">
  					 	<form id="form" name="frmMember" method="post">
  						<!-- 정보수정 레이아웃 -->  
  						<table class="tb1_comm">
  							<tbody>
  								<tr class="fst">
  								<th>아이디
  								<span class="ico">
  									*
  									<span class="screen_out">필수항목</span>
  								</span>
  								</th>
  								
  								<td>
  									<input type="text" value="id" readonly class="inp_read">
  								</td>
  								</tr>
  								<!-- 비밀번호 -->
  								<tr>
  									<th>현재 비밀번호</th>
  								<td>
  									<input type="password" name="originalPassword" id="originalPassword">
  									<input type="hidden" name="originalPasswordCheck" value="1">
  									<p class="txt_guide square">
  										<span class="txt txt_case4 bad">현재 비밀번호를 확인해주세요</span>
  									</p>
  								</td>
  								</tr>
  								
  								<tr class="member_pwd">
  									<th>새 비밀번호</th>
  									<td>
  										<input type="password" name="newPassword" id="newPassword"
  										       label="새 비밀번호" option="regPass" maxlength="16" class="reg_pw">
  										<input type="hidden" name="newPasswordCheck" value="0">
  										<p class="txt_guide square">
  											<span class="txt txt_case4">현재 비밀번호와 다르게 입력</span>
  											<span class="txt txt_case1">10자 이상 입력</span>
  											<span class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span>
  											<span class="txt txt_case3">동일한 숫자 3개 이상 연속 사용 불사</span>
  										</p>
  									</td>  
  								</tr>     			
  								
  								<tr class="member_pwd">
  									<th>새 비밀번호 확인</th>
  									<td>
  										<input type="password" name="confirmPassword" id="confirmPassword" label="새 비밀번호"
  											   option="regPass" maxlength="16" class="confirm_pw">
  									<p class="txt_guide square">
  										<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
  									</p>
  									</td>
  								</tr>
  								
  								<tr>
  									<th>이름
  									<span class="ico">
  										*
  										<span class="screen_out">필수항목</span>
  									</span>
  									</th>
  									<td>
  										<input type="text" name="name" value="이름" placeholder="이름을 입력해주세요">
  									</td>
  								</tr>
  								
  								<tr class="adress">
  									<th>
  									주소
  									<span class="ico">
  										*
  										<span class="screen_out">필수항목</span>
  									</span>
  									</th>
  									<td>
  										<input type="text" name="adress" value="주소">
  									</td>
  								</tr>
  								
  								<tr class="field_phone">
  									<th>
  									휴대폰
  									<span class="ico">
  										*
  										<span class="screen_out">필수항목</span>
  									</span>
  									</th>
  									<td>
  										<div class="phone_num">
  											<input type="text" value="01054990556"
  											pattern="[0-9]*" name="mobileInp"
  											placeholder="숫자만 입력해주세요" class="inp" readonly="readonly">
  											
  										</div>
  									</td>
  								</tr>	
  							</tbody>
  						</table>
  						
  						<div id="formSubmit" class="form_footer">
  							<a href="#" class="btn default">탈퇴하기</a>
  							<button type="submit" class="btn active">회원정보수정</button>
  						</div>
  					  </form>
  					
  					</div>
  				</div>
  		</div>
  	</div>
</div> 
</body>
</html>