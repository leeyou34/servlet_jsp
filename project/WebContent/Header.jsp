<%@ page import="spms.vo.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	//HttpSession 데이터 보관소에 저장된 member 객체 꺼내서 사용
	//Member member = (Member)session.getAttribute("Member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>

   <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/cinema_style.css">
    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="/js/jquery-3.6.0.min.js"></script>
  
    <!-- 검색창 스크립트 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

    <!-- 용원씨가 준 그뭐야 영화 가로 정렬 스크립트 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

    <!-- 폰트 스크립트 -->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet"></head>

    <!-- 배껴온거 (해독필요) -->
    <!-- Mobile specific meta -->
   <meta name=viewport content="width=device-width, initial-scale=1">
   <meta name="format-detection" content="telephone-no">

    
<body>

    <nav id="navbar" class="navbar navbar-expand-lg fixed-top navbar-light" aria-label="Main navigation">
        <div class="container">
    
    
            <!-- 가로 작아질때 메뉴 왼쪽에 三으로 보이게, 게시판 목록과 연결하기 -->
            <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- 三 끝 -->
    
    
    
            <!-- 로고부분 (나중에 경로수정하기) -->
            <a href="/main.do" class="navbar-brand logo-image">
                <img src="/images/cinemaway_logo.png" alt="logo"></a> 
    
            
    
            <!-- 게시판 목록 -->
            <div class="collapse navbar-collapse" id="navbarSideCollapse">
              <ul class="navbar-nav mr-auto">
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">영화추천</a>
                      <ul class="dropdown-menu" aria-labelledby="dropdown01">
                          <li><a class="dropdown-item" href="../page/BudapestHotel.do">추천영화</a></li>
                          <li><div class="dropdown-divider"></div></li>
                          <li><a class="dropdown-item" href="../page/LittelForest.do">계절별영화</a></li>
                          <li><div class="dropdown-divider"></div></li>
                          <li><a class="dropdown-item" href="../page/TheWailng.do">분위기별영화</a></li>
                      </ul>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">장소추천</a>
                      <ul class="dropdown-menu" aria-labelledby="dropdown01">
                          <li><a class="dropdown-item" href="#">국내/해외</a></li>
                          <li><div class="dropdown-divider"></div></li>
                          <li><a class="dropdown-item" href="#">계절별영화</a></li>
                          <li><div class="dropdown-divider"></div></li>
                          <li><a class="dropdown-item" href="#">분위기별영화</a></li>
                      </ul>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">게시판</a>
                      <ul class="dropdown-menu" aria-labelledby="dropdown01">
                          <li><a class="dropdown-item" href="Cinemaway_review.html">리뷰게시판</a></li>
                          <li><div class="dropdown-divider"></div></li>
                          <li><a class="dropdown-item" href="Cinemaway_pre.html">자유게시판</a></li>
                          <li><div class="dropdown-divider"></div></li>
                          <li><a class="dropdown-item" href="<%=request.getContextPath() %>customerservice/qna1.do">고객센터</a></li>
                      </ul>
                  </li>
              </ul>
          </div>
                <!-- 게시판 목록 끝 -->
  
    
            <!-- 검색창 -->
            <!-- d-inline-flex : 부모영역의 테두리가 자식의 크기에 맞게 줄어듬 자신또한 in-line처럼 배치가능 -->
                <div class="d-inline-flex justify-content-right">
                    <!-- <div class="col-md-5"> -->
                        <div class="form">
                          <!-- 검색 폰트 위치 수정 -->
                           <i class="fa fa-search" style="transform: translate(-6px,-8px);"></i>
                           <input type="text" class="form-control form-input" placeholder="작품 또는 장소를 검색해보세요.">
                           <span class="right-pan"></span>
                        </div>
                    <!-- </div> -->
                <!-- </div> -->
    
                <!-- 검색창 끝 -->

      
      
      
            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <div style="">
                <c:if test="${empty User or empty User.email }">
                <ul class="navbar-nav ms-auto navbar-nav-scroll">
                    <li class="nav-item p-3" style="cursor: pointer;" onclick="location.href='/auth/LoginForm.jsp'">로그인
                        <!-- <a class="nav-link active" aria-current="page" href="Cinemaway_login.html">로그인</a> -->
                    </li>

                </ul>
                </c:if>
                <c:if test="${!empty User and !empty User.email }">
				<div style="margin-right:20px; margin-left:20px;"><a class="btn-outline-sm" onclick="location.href='/user/MyPage.jsp'"> ${User.name } 님</a></div>
				
					
				</c:if>
				</div>
				
				<div>
				 <c:if test="${empty User or empty User.email }">
                <ul class="navbar-nav ms-auto navbar-nav-scroll">

                 <span class="nav-item">
                    <a class="btn-outline-sm" onclick="location.href='/user/UserForm.jsp'">회원가입</a>
                </span>
                </ul>
                </c:if>
                <c:if test="${!empty User and !empty User.email }">
				<a  class="btn-outline-sm" style="cursor: painter;" href="<%=request.getContextPath() %>/auth/logout.do">로그아웃</a>	
				</c:if>
				</div>
				
				
             
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
      </nav> <!-- end of navbar -->
      <!-- 네비게이션 끝 -->
</body>
</html>