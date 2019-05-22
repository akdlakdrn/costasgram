<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.big {
	display: grid;
	/* background-color: aquamarine;  */
	justify-content: center;
	border-bottom: 1px solid #999;
}

.small {
	display: grid;
	grid-template-columns: auto 1fr 1fr;
	/* background-color: beige; */
	height: 60px;
	grid-gap: 215px;
	margin-top: 28px;
}

.a1 {
	margin-top: 5px;
}

.a2 {
	width: 200px;
	height: 30px;
}

.small1 {
	display: grid;
	grid-template-columns: auto auto auto;
}

.line {
	background-color: black;
	height: 25px;
	margin-top: 7px;
	width: 1px;
	margin-left: 15px;
	margin-right: 10px;
	/* margin: -35px 43px;  */
}

.small3 {
	display: grid;
	grid-template-columns: auto auto auto;
	margin-left: 55px;
	margin-top: 5px;
}

.a3 {
	margin-top: 10px;
}

.a5 {
	margin-left: 10px;
}

.big1 {
	display: grid;
	/* background-color: aquamarine; */
	justify-content: center;
	grid-template-columns: auto auto;
	margin-right: 300px;
	margin-top: 50px;
	/* background-color: beige; */
}

.image-list {
	display: grid;
}

.small1-1 {
	display: grid;
	grid-template-columns: auto 1fr auto;
	padding: 15px 0;
	/* background-color: beige; */
}

.small1-2 {
	display: grid;
	grid-template-columns: auto auto;
	border: 1px solid #999;
	width: 602px;
	height: 800px;
	background-color: white;
}

.small1-3 {
	grid-column: 1/3 span;
}

.b1 {
	margin-left: 15px;
	margin-top: 10px;
}

.b2 {
	margin-top: 20px;
}

.b3 {
	margin-top: 10px;
	margin-left: -60px;
}

.b4 {
	text-decoration: none;
	margin-left: -520px;
	color: black;
	font-weight: bold;
}

.c {
	grid-column: 1/3 span;
}

.small1-4 {
	display: grid;
	grid-template-columns: auto auto auto auto auto;
	margin-top: 6px;
	justify-content: space-between;
	grid-column: 1/3 span;
}

.small1-5 {
	display: grid;
	grid-template-columns: auto auto auto;
	grid-gap: 15px;
	margin-left: 15px;
}

.c__4 {
	margin-left: 150px;
}

.c__5 {
	margin-left: 220px;
}

.d {
	margin-left: 10px;
	margin-top: 5px;
	font-size: 15px;
	font-weight: bold;
	grid-column: 1/3 span;
}

.e {
	margin-left: 10px;
	margin-top: 5px;
	grid-column: 1/3 span;
}

.g {
	width: 602px;
	height: 40px;
	position: relative;
}

.f {
	display: grid;
	grid-template-columns: auto auto;
}

.h {
	position: absolute;
	margin-left: 560px;
	margin-top: 10px;
	color: skyblue;
	text-decoration: none;
}

input:focus {
	outline: none;
}

.small2-1 {
	display: grid;
	grid-template-columns: auto auto;
	grid-template-rows: auto auto auto auto;
	margin-left: 50px;
	position: fixed;
	justify-content: space-between;
}

.ax {
	margin-top: 20px;
	font-weight: bold;
	margin-right: 150px;
}

.ax1 {
	margin-top: 7px;
	padding-right: 90px;
	margin-left: 10px;
}

.small2-2 {
	display: grid;
	grid-template-columns: auto auto;
	grid-template-rows: auto auto auto auto;
	border: 1px solid black;
	grid-column: 1/2 span;
	margin-top: 10px;
	overflow-y: scroll;
	height: 200px;
}

.ax2 {
	margin-left: 65px;
	margin-top: 10px;
	font-weight: bold;
	font-size: 13px;
}

.ax3 {
	text-decoration: none;
}

.ax4 {
	margin-left: 10px;
}

.bx1 {
	margin-left: -80px;
}

.ax5 {
	margin-top: 13px;
	font-weight: bold;
	font-size: 15px;
}

.bx2 {
	text-decoration: none;
	color: black;
}

.ax11 {
	margin-top: 10px;
	margin-left: 5px;
}

.ax12 {
	margin-top: 15px;
	grid-column: 1/2 span;
	font-size: 12px;
}

.ax13 {
	color: #999;
	text-decoration: none;
}
</style>
</head>

<body>
	<div class="big">
		<div class="small">
			<div class="small1">
				<div class="a0">
					<a href="#"><img src="/image/images/40.png" width="30px"
						height="35px"></a>
				</div>
				<div class="line"></div>
				<div class="a1">
					<a href="#"><img src="/image/images/logo.png" width="100px"
						height="30px"></a>
				</div>
			</div>
			<div class="small2">
				<div class="a3">
					<input class="a2" type="text"
						placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;검색">
				</div>
			</div>

			<div class="small3">
				<a href="#"><img src="/image/images/41.png" height="30px"></a>
				<div class="a5">
					<a href="#"><img src="/image/images/42.png" height="30px"></a>
				</div>
				<div class="a5">
					<a href="#"><img src="/image/images/43.png" height="30px"></a>
				</div>
			</div>
		</div>

	</div>


	<div class="big1">
		<div class="image-list">


			<c:forEach var = "image" items="${imageList }">
			<!--  start item1  -->
			<div class="small1-1">
				<div class="small1-2">
					<div class="b1">
						<a href="#"><img src="/image/images/44.jpg"></a>
					</div>
					<div class="b2">
						<a class="b4" href="#">${image.user.username }</a>
					</div>
					<div class="b3">
						<a href="#"><img src="/image/images/46.png" width="50px"></a>
					</div>
					<div class="small1-3">
						<img src="${image.filePath }" width="600px" height="600px">
					</div>
					<div class="small1-4">
						<div class="small1-5">
							<div class="c__1">
								<a href="#"><img src="/image/images/49.png" height="30px"></a>
							</div>
							<div class="c__2">
								<a href="#"><img src="/image/images/48.png" height="30px"></a>
							</div>
							<div class="c__3">
								<a href="#"><img src="/image/images/50.png" height="30px"></a>
							</div>
						</div>
						<div class="c__4">
							<a href="#"><img src="/image/images/52.png" height="30px"></a>
						</div>
						<div class="c__5">
							<a href="#"><img src="/image/images/51.png" height="30px"></a>
						</div>
					</div>
					<div class="d">조회 1,911,147회</div>
					<div class="e">댓글들...</div>
					<div class="f">
						<input class="g" type="text" placeholder="댓글 달기" /><a class="h"
							href="#">게시</a>
					</div>

				</div>

			</div>
			<!--  end of item1 -->
			</c:forEach>



		</div>
		<!-- end of image-list -->


		<!--  START side BAR -->
		<div>
			<div class="small2-1">

				<div>
					<a href="#"><img src="/image/images/61.png" alt="x" /></a>
				</div>
				<div class="ax">
					<a class="bx2" href="#">${user.username}</a>
				</div>


				<div class="small2-2">
					<div class="ax1">스토리</div>
					<div class="ax2">
						<a class="ax3" href="#">모두 보기</a>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

				</div>

				<div class="small2-2">
					<div class="ax11">회원님을 위한 추천</div>
					<div class="ax2">
						<a class="ax3" href="#">모두 보기</a>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

					<div class="ax4">
						<a href="#"><img src="/image/images/61.png" alt="x"
							width="50px" height="50px" /></a>
					</div>

					<div class="ax5">
						<span class="bx1"><a class="bx2" href="#">sung-ju</a></span>
					</div>

				</div>
				<div class="ax12">
					<a class="ax13" href="#">instagram 정보.지원.홍보 센터.API,채용정보<br />
						개인정보처리방침.약관.디렉터리.프로필.해시태그.<br /> 언어
					</a>
				</div>
				<div class="ax12">
					<div class="ax13">© 2019 INSTAGRAM</div>
				</div>
			</div>

		</div>
		<!--  END OF side BAR -->



	</div>
</body>

</html>