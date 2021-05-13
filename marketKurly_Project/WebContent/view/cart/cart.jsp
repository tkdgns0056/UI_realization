<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" >
<head>
  <meta charset="UTF-8">
  <title>Shopping Cart</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="../assets/css/cart.css">
 <link rel="stylesheet" href="../assets/css/index.css">

<style>
.checkbox-container {
    position: absolute;    
    }        
     /* 기본 체크박스 없애기 */
    
    .checkbox-container input[type="checkbox"] {
    position: absolute;    
    width: 1px;    
    height: 1px;    
    padding: 0;    
    margin: -1%;    
    overflow: hidden;    
    clip:rect(0,0,0,0);    
    border: 0    
    }   
    /* 커서에 pointer 설정 */
    
    .checkbox-container input[type="checkbox"] + label {    
    display: inline-block;    
    position: relative;    
    cursor: pointer;    
    -webkit-user-select: none;    
    -moz-user-select: none;    
    -ms-user-select: none;    
    user-select: none;    
    }       
    /* 새로운 디자인의 체크박스 만들기 */
    
    .checkbox-container input[type="checkbox"] + label:before {    
    content: ' ';    
    display: inline-block;    
    width: 18px;    
    height: 18px;    
    line-height: 18px;    
    margin: 95%;
    /* margin: 35px 0 0 75px; */
    padding: 3px;   
    text-align: center;    
    vertical-align: middle;    
    border: 1px solid #ccc;    
    border-radius: 50%;    
    /* box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05); */
    }    
    /* .checkbox-container input[type="checkbox"] + label:active:before,    
    .checkbox-container input[type="checkbox"]:checked + label:active:before {
            box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
    
    }     */
    .checkbox-container input[type="checkbox"]:checked + label:before { 
    content: '\2713';
    font-weight: bold;    
    color: #378bb3;    
    /* text-shadow: 1px 1px white;     */       
    border-color: #378bb3;    
    /* box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05); */
    }

</style>
</head>
<body>
<div id="header">
      <div id="userMenu">
         <div></div> 
         <!--   <div class="sub_tit" style="font-size: 13px;">샛별배송</div> -->
         <ul class="list_menu">
            <li class="menu none_sub menu_admin"><a href="../admin/productList.jsp" class="link_menu">관리자</a></li> 
            <span class="bar"></span>
            <li class="menu none_sub menu_join"><a href="../join/signUp.jsp" class="link_menu">회원가입</a></li> 
            <span class="bar"></span>
            <li class="menu none_sub menu_login"><a href="../join/logIn.jsp" class="link_menu">로그인</a></li>
            <span class="bar"></span>
            <li class="menu lst dropdown"><a href="#" class="link_menu"><button class="dropbtn">고객센터 ▼</button></a>
               <div class="dropdown-content">
                  <a href="../noticeboard/boardList.jsp">공지사항</a>
                  <a href="../qnaboard/qnaBoard.jsp">1:1문의</a>
                  
                  
                  
               </div> 
            </li>
         </ul>
      </div>
   </div>

   <header style="padding-bottom: 3px">
      <div class="container text-center">
         <div class="fh5co-navbar-brand">
            <a class="fh5co-logo" href="../index.jsp" >
                  <img  style ="display : block; margin : auto; padding-top:50px; height:110px" src="../assets/images/logo.png;" href="../index.jsp">
                  

                    
            </a>
         </div>
         
         <nav id="fh5co-main-nav" role="navigation" style="font-family: sans-serif">
            <!--  <ul class="list_menu">
               <li class="menu lst dropdown"><a href="#" class="active link_menu"><button class="dropbtn">전체 카테고리</button></a>
                  <div class="dropdown-content">
                     <a href="../category/meat_product.jsp">육류</a>
                     <a href="../category/veg_product.jsp">채소</a>
                     <a href="../category/fruit_product.jsp">과일</a>
                     <a href="../category/pet_product.jsp">애견</a>                     
                  </div> 
               </li>

               <li><a href="#new">신상품</a></li>
               <li><a href="#best">베스트</a></li>
               <li><a href="#sale">알뜰쇼핑</a></li>
               <li><a href="../mypage/privacyUpdate.jsp">마이페이지</a></li>

            </ul>-->
         </nav>
   </header>

<!-- partial:index.partial.html -->
<h1 style="font-size:30px;">장바구니</h1>
<div class="shopping-cart">
  <div class="column-labels">
    <label class="product-image">
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp전체선택&nbsp&nbsp|&nbsp&nbsp선택삭제
    </label>
    <label class="product-details">상품명</label>
    <label class="product-price">가격</label>
    <label class="product-quantity">수량</label>
    <label class="product-removal">삭제</label>
    <label class="product-line-price">총 금액</label>
  </div>

  <div class="product">
    <div class="product-image">
      <div class="checkbox-container">
        <input type="checkbox" id="is-subscription" checked>        
        <label for="is-subscription"></label>        
      </div>
      <img src="https://s.cdpn.io/3/dingo-dog-bones.jpg">
    </div>

    <div class="product-details">
      <div class="product-title" style="font-weight: bold;">딩고 강아지 간식</div>
      <p class="product-description">맛 좋은 뼈다귀!</p>
    </div>
    <div class="product-price"> 20000</div>
    <div class="product-quantity">
      <input type="number" value="2" min="1">
    </div>
    <div class="product-removal">
      <button class="remove-product">
        삭제
      </button>
    </div>
    <div class="product-line-price"> 40000</div>
  </div>

  <div class="product">
    <div class="product-image">
      <div class="checkbox-container">
        <input type="checkbox" id="is-subscription2" checked>            
        <label for="is-subscription2"></label> 
    </div>
      <img src="https://s.cdpn.io/3/large-NutroNaturalChoiceAdultLambMealandRiceDryDogFood.png">
    </div>
    <div class="product-details">
      <div class="product-title" style="font-weight: bold;">뉴트로 강아지 간식</div>
      <p class="product-description">맛 좋은 사료~!</p>
    </div>
    <div class="product-price"> 46000</div>
    <div class="product-quantity">
      <input type="number" value="1" min="1">
    </div>
    <div class="product-removal">
      <button class="remove-product">
        삭제
      </button>
    </div>
    <div class="product-line-price"> 46000</div>
  </div>

  <div class="totals">
    <div class="totals-item">
      <label>상품금액</label>
      <div class="totals-value" id="cart-subtotal"> 86000</div>
    </div>
    <!-- <div class="totals-item">
      <label>Tax (5%)</label>
      <div class="totals-value" id="cart-tax">3.60</div>
    </div> -->
    <div class="totals-item">
      <label>배송비</label>
      <div class="totals-value" id="cart-shipping"> 2000</div>
    </div>
    <div class="totals-item totals-item-total">
      <label>결제 예상 금액</label>
      <div class="totals-value" id="cart-total"> 88000</div>
    </div>
  </div>
      
      <button class="checkout">결제하기</button>

</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="../assets/js/script.js"></script>

</body>
</html>