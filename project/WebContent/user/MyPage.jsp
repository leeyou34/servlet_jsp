<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <script src="https://kit.fontawesome.com/e13e35fb00.js" crossorigin="anonymous"></script>
  <script src="../js/bootstrap.bundle.min.js"></script>
  <script src="../js/jquery-3.6.0.min.js"></script>
  <script src="../js/slick.min.js"></script>
  <link rel="stylesheet" href="../css/slick-theme.css">
  <link rel="stylesheet" href="../css/slick.css">
  <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
  <link rel="stylesheet" href="../css/movie.css">
  <script src="../js/movie.js" defer></script>
<link rel="stylesheet" href="../css/albery.css">
<script src="../js/albery.js"></script>
<link rel="stylesheet" href="../css/nav-fo.css">
<style>
  .carousel-item img {
  width: 100%;
  height: 100%;
  text-align: center;
}

  .back_img {
    background: url("https://i.ytimg.com/vi/dsmpKyTDOCY/maxresdefault.jpg") center/cover no-repeat;
    background-position: center top;
    background-size: cover;
  
  }
  .card-body {
    height: 250px;
  }
  .card-text {
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 4; /* 라인수 */
    -webkit-box-orient: vertical;
    word-wrap:break-word; 
  }
  
 
</style>

</head>
<body>

<jsp:include page="/Header.jsp"/>

	<!-- EL(Expression Language)
		 : 데이터 보관소들에 들어있는 객체나, 리스트 또는 맵 등에 접근할 수 있다.
		   actiontag를 사용하는 것보다 훨씬 간편하게 사용할 수 있어서 자주 사용됨
		   사용법1 : ${member.no} or ${member["no"]}
		   따로 scope를 지정하지 않기 때문에 jspContext -> ServletRequest -> HttpSession -> ServletContext순으로 데이터 보관소 검색
		   사용법 2 : ${requestScope.member.no} or ${requestScope.member["no"]}
		  scope 지정방식
	 -->
	<form action="/user/update.do" method="post">
<!-- 배경 상단 백그라운드 이미지  -->
  <div class="back_img" ></div>




  <!-- 영화  포스터 및 정보 섹션 -->
<section id="movie">
  
    <div class="poster" style="border-radius: 50%; width: 300px; height: 300px; overflow: hidden;" >
      <img style="border-radius: 50%; width: 300px; height: 300px;" src="https://post-phinf.pstatic.net/MjAxOTExMjdfMjM0/MDAxNTc0ODQzOTAyODQ2.60SGvZ1KEbn_wQcBxW7IrUSeT1Olz4tsWzSjxyWq03Qg.5Yw8mzDGDTkMPlz5Gg8BLK6B9Os_THYr4wndt8xn7mMg.JPEG/Comeback_poster_01-re.jpg?type=w1200">

    </div>

    <div class="about_movie">
    	<input type="hidden" name="userNo" id="userNo" value="${User.userNo }">
      <h4><strong> ${User.name } 님</strong></h4><br>
      	<strong>이 름 : </strong><input type="text" name="name" value="${User.name }"><br><br>
		<strong>이 메 일 : </strong><input type="text" name="email" value="${User.email }"><br><br>
		<strong>비밀번호 : </strong><input type="text" name="pwd" value="${User.pwd }"><br><br>
		<input type="submit" value="저장">
		<input type="button" value="삭제" onclick="location.href='/user/delete.do?userNo=${User.userNo }';">
		<input type="button" value="취소" onclick="location.href='../main.do';">
     

        
    </div>
  </section>



 <!--첫 번째 섹션-->
 





 <div class="back_color">
  <section class="movie_content">

        <div class="d-none d-md-block">
          <div class="container">
              <div class="row">
                  <div class="col-md-10 text-black">
                      <h5><strong>내가 남긴 리뷰</strong></h5>
            </div>
          </div>
      </div>
    </div>
</section>

<!--다섯 번째 섹션-->

<section class="movie_content">

<div class="box-padding grey-bg">
  <div class="container">
      <div class="row">
       
      </div>
      
        <div id="carouselThreeColumn" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
          <li data-target="#carouselThreeColumn" data-slide-to="0" class="active"></li>
          <li data-target="#carouselThreeColumn" data-slide-to="1"></li>
          <li data-target="#carouselThreeColumn" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="row">
              <div class="col-xl-4 p-1">				
              <div class="card">
                <img src="../image1/11/5-1.jpg" class="w-100" >
                <div class="card-body">
                <h5 class="card-title">행복한 하루 그리고 한용원</h5>
                <p class="card-text">평점 ★5.0/5.0</p>
                <p class="card-text">한용원님이 추천하신 여행지 너무 좋았어요 가족들과 행복한 시간 보냈어요</p>
                </div>
              </div>
              </div>	
              <div class="col-xl-4 p-1">				
                <div class="card">
                  <img src="../image1/11/5-2.jpg" class="w-100">
                  <div class="card-body">
                  <h5 class="card-title">한용원 그는 누구인가</h5>
                  <p class="card-text">평점 ★5.0/5.0</p>
                  <p class="card-text">킹갓제네럴엠페러충무공마제스티하이퍼울트라판타스틱익스트림지니어스화룡정점마스터한용원</p>
                  </div>
                </div>
                </div>	
                <div class="col-xl-4 p-1">				
                  <div class="card">
                    <img src="../image1/11/5-3.jpg" class="w-100">
                    <div class="card-body">
                    <h5 class="card-title">사랑하는 한용원</h5>
                    <p class="card-text">평점 ★5.0/5.0</p>
                    <p class="card-text">사랑하는 한용원님과 좋은 여행지 다녀왔습니다. 이렇게 좋은 날씨에 한용원님과 이곳저곳
                                        다니면서 맛있는 맛집들도 돌아다녔습니다. 사랑하는 연인과 같이 여행하기 좋은곳입니다.
                    </p>
                    </div>
                  </div>
                  </div>	
            </div>
          </div>
          <div class="carousel-item">
          <div class="row">
            <div class="col-xl-4 p-1">				
              <div class="card">
                <img src="../image1/11/5-3.jpg" class="w-100">
                <div class="card-body">
                  <h5 class="card-title">사랑하는 한용원</h5>
                  <p class="card-text">평점 ★5.0/5.0</p>
                  <p class="card-text">사랑하는 한용원님과 좋은 여행지 다녀왔습니다. 이렇게 좋은 날씨에 한용원님과 이곳저곳
                                      다니면서 맛있는 맛집들도 돌아다녔습니다. 사랑하는 연인과 같이 여행하기 좋은곳입니다.
                  </p>
                  </div>
              </div>
              </div>	
              <div class="col-xl-4 p-1">				
                <div class="card">
                  <img src="../image1/11/5-2.jpg" class="w-100">
                  <div class="card-body">
                    <h5 class="card-title">한용원 그는 누구인가</h5>
                    <p class="card-text">평점 ★5.0/5.0</p>
                    <p class="card-text">킹갓제네럴엠페러충무공마제스티하이퍼울트라판타스틱익스트림지니어스화룡정점마스터한용원</p>
                    </div>
                </div>
                </div>	
                <div class="col-xl-4 p-1">				
                  <div class="card">
                    <img src="../image1/11/5-1.jpg" class="w-100">
                    <div class="card-body">
                      <h5 class="card-title">행복한 하루 그리고 한용원</h5>
                      <p class="card-text">평점 ★5.0/5.0</p>
                      <p class="card-text">한용원님이 추천하신 여행지 너무 좋았어요 가족들과 행복한 시간 보냈어요</p>
                    </div>
                    </div>
                  </div>	
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselThreeColumn" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only"></span>
          </a>
          <a class="carousel-control-next" href="#carouselThreeColumn" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only"></span>
          </a>
        </div>
        </div>
      </div>
  </div>

</section>
	</form>
	<jsp:include page="/Tail.jsp"/> 
</body> 
</html>