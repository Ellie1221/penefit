<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/style.css">
<style>
section {
}

.list_img {
	width: 100px;
	height: 100px;
}

table {
	text-align:center;
	width: 1200px;
}
th{
	background-color: #DBD5CB; 
}

</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<c:set var="class_code" scope="page" value="${cvo.class_code }" />

	<div class="box">
		<section>
			<h2>위시리스트</h2>
			<table>
				<thead>
					<tr>
						<th colspan="2">번호</th>
						<th colspan="2">클래스</th>
						<th>강사명</th>
						<th>강의시간</th>
						<th>장바구니</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody id="tbody">
				</tbody>
			</table>
		</section>
	</div>
	<%@ include file="footer.jsp"%>

	<script>
	 $("#blackloupe_img2").click(()=> {
   	  if ($("#divsearch").css("display") == "none") { 
   	        $("#divsearch").css("display", "block");//display :none 일떄
   	    } else {
   	    	 $("#divsearch").css("display", "none"); //display :block 일떄
   	    } 
   });
     $(".title").click(function(){
   	//  alert("click");
   	  if ($(".subtitle").css("display") == "none"){
   		  $(".subtitle").css("display", "block");
   	  }else{
   		  $(".subtitle").css("display", "none");
   	  }
     });
 
		//장바구니에 담기
		$(document).on("click",".addCart", function(evt) {
							let class_code = evt.target.parentElement.parentElement.children[1].innerText;
							location.href = "class/shoppingcart?class_code="
									+ class_code;
						});
		//위시리스트에서 삭제
		$(document).on("click",".deleteClass", function(evt) {
							let wishNum = evt.target.parentElement.parentElement.children[0].innerText;
							deleteWish(wishNum);
						});
		//위시리스트페이지에서 삭제기능
		function deleteWish(wishNum) {
			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				let data = this.responseText;
				getWishList();
			}
			xhttp.open("DELETE", "/wishlist2?wishNum=" + wishNum, true);
			xhttp.send();
		}
		getWishList();
		//위시리스트 목록
		function getWishList() {
			$("#tbody").empty();
			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				let data = this.responseText;
				let list= JSON.parse(data);
				for(let i = 0; i<list.length;i++){
					let suggest_photo = list[i].suggest_photo.split('-',1);
					$("#tbody").append("<tr><td>"
							+ list[i].wishlist_num +"</td><td><input type='hidden' value='"
							+ list[i].class_code +"'></td><td>"
							+ "<a href='class/class-detail?class_code=" + list[i].class_code + "'><img class='list_img' src='images/"+suggest_photo+"'></a></td><td>"
							+ "<a href='class/class-detail?class_code=" + list[i].class_code + "' style='text-align : left;'>" +list[i].class_subject+"</td><td>"
							+ "<a href='class/classList-search?keyword=" + list[i].class_teacher + "'>" + list[i].class_teacher+"</td><td>"
							+ list[i].class_date +"</td><td>"
							+ "<button type='button' class='addCart'>장바구니</button></td><td>"
							+ "<button type='button' class='deleteClass'>&nbsp;&nbsp;X&nbsp;&nbsp;</button></td><td>"
					);
					$("tr").css("borderBottom","1px solid #BBB09F");
					
				}
			}
			xhttp.open("GET", "/wishlist3", true);
			xhttp.send();
		}
		
	</script>
	<script type="text/javascript" src="js/javascript.js"></script>
</body>
</html>