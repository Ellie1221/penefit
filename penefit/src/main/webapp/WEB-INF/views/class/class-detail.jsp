<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
.class_detail img {
   width: 400px;
   height: 400px;
   margin-right: 20px;
}

.class_detail {
   margin-top: 30px;
   width: 800px;
   display: flex;
   margin: 0 auto;
}

#class_detail_img {
   display: inline-block;
}

#class_subject {
   font-weight: bold;
   font-size: 26px;
   margin-top: 30px;
}

#class_price {
   margin-bottom: 20px;
}

#kakao, #heart img {
   border-radius: 45%;
   width: 30px;
   height: 30px;
}

#heart, #kakao {
   display: inline;
}

#kakao {
   position: relative;
   left: -15px;
}

#heart img:hover {
   cursor: pointer;
}

.detail_box {
   position: absolute;
   display: none;
   width: 800px;
   margin: 0 quto;
}

#detail_box1 {
   display: block;
}

#class_memlit, #class_memcnt {
   display: inline;
}

#addCart, #expired {
   width: 350px;
   height: 40px;
   color: white;
   background-color: #75BD43;
   border: none;
   border-radius: 7px;
   line-height: 40px;
   box-shadow: 2px 2px 2px 2px #DBD5CB;
   display: inline;
   position: absolute;
   top: 350px;
}

#expired {
   background-color: gray;
   cursor: default;
}

#detailMenu {
   margin: 0 auto;
   width: 800px;
   height: 40px;
   position: absolute;
   margin-top: 20px;
   top: 450px;
}

#detailMenu ul {
   margin: 0 auto;
   margin-left: 12px;
}

#detailMenu li {
   width: 190px;
   height: 30px;
   line-height: 32px;
   list-style-type: none;
   display: inline-block;
   float: left;
   text-align: center;
   border: 1px #BBB09F solid;
   border-collapse: collapse;
}

#detailMenu li:hover {
   border: none;
   background-color: #BBB09F;
   line-height: 32px;
   color: white;
   width: 192px;
   height: 32px;
}

#detail_box1 {
   position: absolute;
   margin-top: 20px;
   top: 500px;
}

#detailview {
   width: 800px;
   height: 100%;
   margin-bottom: 200px;
}

.oneDetail {
   width: 200px;
   border: 1px solid red;
   height: 200px;
   display: flex;
   flex-wrap: wrap;
   margin: 10px 5px;
   margin-right: 10px;
   align-items: flex-start;
}

#class_detail_img {
   margin: 0 auto;
}

#detail_box2 {
   display: none;
   position: absolute;
   top: 520px;
   overflow: hidden;
   left: 220px;
}

#detail_box4 {
   display: none;
   position: absolute;
   top: 520px;
   overflow: hidden;
   left: 220px;
   padding: 55px;
}

#class_detail_info {
   width: 400px;
}

.oneDetail div {
   font-size: 15px;
}

.oneDetail span:nth-of-type(3) {
   font-size: 15px;
}

.oneDetail span:nth-of-type(4) {
   font-size: 15px;
}

.oneDetail span:nth-of-type(5) {
   font-size: 15px;
}

#detail_box2 .arrow {
   width: 30px;
   height: 35px;
   position: relative;
   top: 60px;
}

/*swiper*/
#detail_box2 {
   width: 800px;
   height: 350px;
   background-color: white;
   margin: 0 auto;
   margin-left: 30px;
}

.swiper-slide {
   text-align: center;
   font-size: 18px;
   background: #fff;
   /* Center slide text vertically */
   display: -webkit-box;
   display: -ms-flexbox;
   display: -webkit-flex;
   display: flex;
   -webkit-box-pack: center;
   -ms-flex-pack: center;
   -webkit-justify-content: center;
   justify-content: center;
   -webkit-box-align: center;
   -ms-flex-align: center;
   -webkit-align-items: center;
   align-items: center;
}

#detail_box2-vertical>.swiper-pagination-bullets {
   top: unset !important;
   bottom: 10px;
   left: 0;
   width: 100%;
}

#detail_box2-vertical>.swiper-pagination-bullets .swiper-pagination-bullet
   {
   display: inline-block !important;
   margin: 6px 2px !important;
}

#review_container {
   position: relative;
   box-shadow: 5px 5px 5px rgb(0, 0, 0, 0.2);
   border-radius: 14px;
   padding: 10px;
}

#rev_img {
   width: 170px;
   height: 170px;
   margin: 0 auto;
}

#modal {
   display: none;
   position: fixed;
   z-index: 1;
   left: 0;
   top: 0;
   width: 100%;
   height: 100%;
   background-color: rgba(0, 0, 0, 0.5);
   text-align: center;
}

#modal button {
   display: inline-block;
   width: 30px;
   height: 30px;
   border: none;
   background-color: transparent;
   font-size: 1.2rem;
   color: #fff;
   cursor: pointer;
   position: absolute;
   top: 10px;
   right: 10px;
}

.modal_content {
   background-color: #fff;
   margin: auto;
   padding: 20px;
   border: 1px solid #888;
   width: 80%;
   max-width: 400px;
   height: 550px;
   position: absolute;
   left: 50%;
   top: 50%;
   transform: translate(-50%, -50%);
   border-radius: 12px;
   overflow-y: auto;
}

#modal .modal_layer {
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   background-color: rgba(0, 0, 0, 0.5);
   z-index: -1;
}

#tbody tr {
   border-bottom: 1px solid #ccc;
}

#tbody td {
   padding: 10px;
   border-bottom: 1px solid lightgray;
}

#tbody td:first-child {
   font-weight: bold;
}

#btn_x:hover {
   color: #ff5f5f;
}

#refund{
   font-size:30px;
}

mark{
   background-color:#ffe9e0;
}
#star {
	position: absolute;
	left: 160px;
	color: #ddd;
	margin: 0;
	padding: 0;
}
#redStar {
	position: absolute;
	left: 160px;
	color: red;
	overflow: hidden;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>
   <%@ include file="../header.jsp"%>
   <c:set var="class_code" scope="page" value="${cvo.class_code }" />
   <div class="box">
      <section>
         <div class="class_detail">
            <div id="class_detail_img">
               <img src="../images/${fn:split(cvo.suggest_photo,'-')[0]}">
            </div>
            <div id="class_detail_info">
               <div id="class_subject">${cvo.class_subject }</div>
               <div id="class_teacher">${cvo.class_teacher }</div>
               <br>
               <hr>
               <br>
               <div id="class_day">일 자 : ${cvo.class_date }</div>
               <br>
               <div id="class_memcnt">인 원 : ${cvo.class_memcnt } /</div>
               <div id="class_memlit">${cvo.class_memlit }</div>
               <div id="class_price">가 격 : ${cvo.class_price }원</div>
               <div id="heart">
                  <img src="../images/blankHeart.png" class="heart_img">
               </div>
               <div style="display: inline;">
                  <a id="kakaotalk-sharing-btn" href="javascript:;"><img
                     id="kakao"
                     src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
                     alt="카카오톡 공유 보내기 버튼" /> </a>
               </div>
               <div>
                  <c:if
                     test="${cvo.class_memlit<=cvo.class_memcnt || status =='마감'}">
                     <button type="button" id="expired">마감된 클래스입니다</button>
                  </c:if>
                  <c:if
                     test="${cvo.class_memlit>cvo.class_memcnt  && status =='진행'}">
                     <button type="button" id="addCart">장바구니에 담기</button>
                  </c:if>
               </div>
            </div>


            <div id="detailMenu">
               <ul>
                  <li id="detail_box1_btn"><label for="detail_box1_btn">상세설명</label></li>
                  <li id="detail_box2_btn"><label for="detail_box2_btn">클래스후기</label></li>
                  <li id="detail_box3_btn"><label for="detail_box3_btn">위치설명</label></li>
                  <li id="detail_box4_btn"><label for="detail_box4_btn">취소약관</label></li>
               </ul>
            </div>
            <div class="detail_box" id="detail_box1">
               <img src="../images/${fn:split(cvo.suggest_photo,'-')[1]}"
                  style="width: 800px; height: 5000px;"> <img
                  src="../images/${fn:split(cvo.suggest_photo,'-')[2]}"
                  style="width: 800px; height: 5000px;">
            </div>
            <div class="swiper detail_box" id="detail_box2">
               <div class="swiper-wrapper">
                  <c:forEach var="r" items="${rvo }">
                     <div class="swiper-slide">
                        <div class="container" id="review_container">
                           <div class="item" id="rev_img">
                              <c:if test="${r.review_photo != ''}">
                                 <img src="../images/${r.review_photo }" class="review_img"
                                    style="width: 150px; height: 150px;">
                              </c:if>

                              <c:if test="${r.review_photo == ''}">
                                 <img src="../images/logo.png" class="review_img"
                                    style="width: 150px; height: 150px;">
                              </c:if>
                           </div>
                           <input type="hidden" id="review_num" value="${r.review_num }">

                           <div class="item" id="rev_content">
                              <c:choose>
                                 <c:when test="${fn:length(r.review_content) gt 28 }">
                                    <c:out value="${fn:substring(r.review_content,0,27)}" />...
                                 </c:when>
                                 <c:otherwise>
                                    <c:out value="${r.review_content }" />
                                 </c:otherwise>
                              </c:choose>
                           </div>
                           <div class="item" id="rev_writer">
                              <strong>${r.member_id }</strong>
                           </div>
                           <div class="item" id="rev_regdate">${r.review_regdate }</div>
                           <%-- <div class="item" id="rev_score">${r.score }</div> --%>
                        </div>
                     </div>

                  </c:forEach>
               </div>

               <div class="swiper-pagination"></div>
               <strong>
                  <div class="swiper-button-prev" style="color: lightgray"></div>
               </strong> <strong>
                  <div class="swiper-button-next" style="color: lightgray"></div>
               </strong>

            </div>

            <div class="detail_box" id="detail_box3"></div>


            <div class="detail_box" id="detail_box4">
               <div id="refund"><mark> 환불정책 </mark> </div><br>
               <div id="refunt_content">
               <p>상품의 환불은 '시간' 이 아닌 <mark>'일자'</mark>를 기준으로 합니다.</p>
               <br>
               <br>
               <p>
               <p>1) 클래스 6일 이전 취소 시 <strong><span style="color:red;">100%</span></strong>환불</p><br>
               <p>2) 클래스 5일 이전 취소 시 결제 금액의 <strong><span style="color:red;">5% </span></strong>배상 후 환불</p><br>
               <p>3) 클래스 4일 이전 취소 시 결제 금액의 <strong><span style="color:red;">10%</span></strong> 배상 후 환불</p><br>
               <p>4) 클래스 3일 이전 취소 시 결제 금액의 <strong><span style="color:red;">20%</span></strong> 배상 후 환불</p><br>
               <p>5) 클래스 2일 이전 취소 시 결제 금액의 <strong><span style="color:red;">30%</span></strong> 배상 후 환불</p><br>
               <p>6) 클래스 1일전, 당일 취소 불가 환불 불가 (단, 결제 후 1시간 이내 취소 시, 밤12시 이전 100% &nbsp;&nbsp;&nbsp;&nbsp;환불) </p><br>
               <br>
               <br>
               
               <p>
                  * 모든 환불 건은 클래스 일정을 기준으로 환불처리<br>
                  <br>
                  * 환불 정책이외 구매자 및 작가 개인사정으로 환불이 필요할 경우 구매자와 작가 직접 협의<br>
                  <br>
                  * 환불 정책이외 환불이 필요할 경우 구매자와 작가 직접 협의. 페네핏은 통신판매중개자이며, 
                  &nbsp;&nbsp;&nbsp;통신판매의 당사자가 아닙니다. 상품, 상품정보, 거래에 관한 의무와 책임은 판매자에 있습니다.
               </p>
               </div>               
            </div>
         </div>
      </section>


      <!--리뷰 modal -->
      <div id="modal">
         <div class="modal_content">
            <button id="btn_x" style="width: 30px; float: right; color: black;">X</button>
            <table style="margin: 0 auto;">
               <thead>
               </thead>
               <tbody id="tbody">

               </tbody>
            </table>

         </div>

         <div class="modal_layer"></div>
      </div>
   </div>

   <!-- Swiper JS -->
   <script
      src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>





   <%-- <%@ include file="../footer.jsp"%> --%>





   <script>
      //세션에서 로그인 아이디 받아오기
      let member_id = "${member_id}";
      let class_code = "${class_code}";

      //로그인된 아이디가 았으면 위시리스트를 받아온다.
      if (member_id != "") {
         wishlist();
         $(".heart_img").click(function() {
            if ($(".heart_img").attr("src") == "../images/blankHeart.png") {
               $(".heart_img").attr("src", "../images/pinkHeart.png");
               addWishlist();
            } else {
               $(".heart_img").attr("src", "../images/blankHeart.png");
               deleteWishlist();
            }

         });
      } else {

         $(".heart_img").click(function() {
            alert("이용하기 위해서는 로그인이 필요합니다.");
            location.href = "/member/login";
         });

      }

      //위시리스트 받아오기 ajax
      function wishlist() {
         const xhttp = new XMLHttpRequest();
         xhttp.onload = function() {
            let data = this.responseText;
            if (data == 1) {
               $(".heart_img").attr("src", "../images/pinkHeart.png");
            } else {
               $(".heart_img").attr("src", "../images/blankHeart.png");
            }
         }
         xhttp.open("GET", "/checkWishlist?class_code=" + class_code
               + "&member_id=" + member_id, true);
         xhttp.send();
      }

      //위시리스트 추가 ajax
      function addWishlist() {

         const xhttp = new XMLHttpRequest();
         const obj_wish = {
            class_code : class_code,
            member_id : member_id
         }
         const json_wish = JSON.stringify(obj_wish);

         xhttp.onload = function() {
            let data = this.responseText;
            alert("위시리스트에 추가 되었습니다.");
         }
         xhttp.open("POST", "/addWishlist", true);
         xhttp.setRequestHeader("Content-type", "application/json");
         xhttp.send(json_wish);
      }

      //위시리스트 제거 ajax
      function deleteWishlist() {
         alert(class_code);
         const xhttp = new XMLHttpRequest();
         xhttp.onload = function() {
            let data = this.responseText;
            alert("위시리스트에서 삭제 되었습니다.");
         }
         xhttp.open("DELETE", "/deleteWishlist/class-code/" + class_code,
               true);
         xhttp.send();
      }

      //장바구니에 담기
      $("#addCart").click(function() {
         if ("${member_id}" == "") {

            alert("회원만 이용할 수 있습니다.");
            location.href = "/member/login";
         } else {
            //alert("장바구니 버튼 클릭!");
           	alert("장바구니에 담겼습니다.");
            location.href = "shoppingcart?class_code=" + class_code;
         }
      });

      $("#detail_box1_btn").click(function() {
         $(".detail_box:not(#detail_box1)").css("display", "none");
         $("#detail_box1").css("display", "block");
      });
      $("#detail_box2_btn").click(function() {
         $(".detail_box:not(#detail_box2)").css("display", "none");
         $("#detail_box2").css("display", "flex");

      });
      $("#detail_box3_btn").click(function() {
         $(".detail_box:not(#detail_box3)").css("display", "none");
         $("#detail_box3").css("display", "block");
      });

      $("#detail_box4_btn").click(function() {
         $(".detail_box:not(#detail_box4)").css("display", "none");
         $("#detail_box4").css("display", "block");
      });

      const swiper = new Swiper('#detail_box2', {
         //기본 셋팅
         //방향 셋팅 vertical 수직, horizontal 수평 설정이 없으면 수평
         direction : 'horizontal',
         //한번에 보여지는 페이지 숫자
         slidesPerView : 3,
         //페이지와 페이지 사이의 간격
         spaceBetween : 30,
         //드레그 기능 true 사용가능 false 사용불가
         debugger : true,
         //마우스 휠기능 true 사용가능 false 사용불가
         mousewheel : true,
         //반복 기능 true 사용가능 false 사용불가
         loop : true,
         //선택된 슬라이드를 중심으로 true 사용가능 false 사용불가 djqt
         centeredSlides : true,
         // 페이지 전환효과 slidesPerView효과와 같이 사용 불가
         // effect: 'fade',

         //페이징
         pagination : {
            //페이지 기능
            el : '.swiper-pagination',
            //클릭 가능여부
            clickable : true,
         },

         //방향표
         navigation : {
            //다음페이지 설정
            nextEl : '.swiper-button-next',
            //이전페이지 설정
            prevEl : '.swiper-button-prev',
         },
      });

      $(document)
            .on(
                  "click",
                  ".review_img",
                  function(evt) {

                     $("#modal").css("display", "block");
                     let review_num = evt.target.parentElement.nextElementSibling.value;
                     const xhttp = new XMLHttpRequest();
                     xhttp.onload = function() {
                        let result = this.responseText;
                        let reviewlist = JSON.parse(result);

                        let imgurl = reviewlist.review_photo;
                        if (imgurl == "") {
                           imgurl = "logo.png";
                        }

                        $("#tbody").empty();
                        $("#tbody")
                              .append(
                                    "<tr><td colspan='2'><img src='../images/"+ imgurl +"' width='200px; '></td></tr>"
                                          + "<tr><td>"
                                          + reviewlist.review_content
                                          + "</td></tr>"
                                          + "<tr><td>"
                                          + reviewlist.member_id
                                          + "</td></tr>"
                                          + "<tr><td>"
                                          + reviewlist.review_regdate
                                          + "</td></tr>"
                                          + "<tr><td id = 'star'>"
                                          + "★★★★★"
                                          + "</td><td id='redStar'>★★★★★</td></tr>"
                              );
						if(reviewlist.score == 0){
	                        $("#redStar").css("display", "none");							
						}else if(reviewlist.score == 0.5){
							$("#redStar").css("width", "0px");	
						}else if(reviewlist.score == 1){
							$("#redStar").css("width", "6px");	
						}else if(reviewlist.score == 1.5){
							$("#redStar").css("width", "18px");	
						}else if(reviewlist.score == 2){
							$("#redStar").css("width", "24px");	
						}else if(reviewlist.score == 2.5){
							$("#redStar").css("width", "36px");	
						}else if(reviewlist.score == 3){
							$("#redStar").css("width", "42px");	
						}else if(reviewlist.score == 3.5){
							$("#redStar").css("width", "54px");	
						}else if(reviewlist.score == 4){
							$("#redStar").css("width", "60px");	
						}else if(reviewlist.score == 4.5){
							$("#redStar").css("width", "72px");	
						}else{
							$("#redStar").css("width", "78px");	
						}

                     }
                     xhttp.open("GET", "modalReview?review_num="
                           + review_num, true);
                     xhttp.send();
                  })

      /* $(document).on("mouseleave", ".review_img", function(){
         $("#modal").css("display", "none");
      })
       */
      $("#btn_x").on("click", function() {
         $("#modal").css("display", "none");
      })
   </script>
</body>
</html>