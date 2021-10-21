<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cinemaWay</title>
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
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
   
    <!--위로가기 버튼 구현-->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <!--하기는 이영호가 사용한 css 스타일-->
    <style>
        .containerAlignCenter{
          display: flex;
          justify-content: center;
          align-items: auto;
          margin-top: 10px;
          margin-bottom: 10px;
        }
        .containerAlignCenter h2{
          display: flex;
          justify-content: center;
          align-items: auto;
          margin-top: 10px;
          margin-bottom: 10px;
        }
        .row{
          display: flex;
          justify-content: center;
          align-items: auto;
          margin-top: 10px;
          margin-bottom: 10px;
          text-align: center;
        }
        .table-responsive{
          display: flex;
          justify-content: center;
          align-items: auto;
          margin-top: 10px;
          margin-bottom: 10px;
          text-align: center;
        }
        .col-sm-2 {
            margin: 20px;
            border: 1px solid #333741;
            vertical-align: middle;
            line-height: 80px;
           }

        .col-sm-2:hover {
            animation-play-state: paused;
            background: #333741;
            color:white;
        }

        .search-full input[type="search"] {
            border: 1px solid #fff;
        }
        
        .search input[type="search"] {
            border-radius: 30px;
            box-sizing: border-box;
            color: #666;
            height: 40px;
            padding-left: 40px;
            padding-right: 20px;
            -webkit-appearance: none;
            width: 50%;
        }
        a { 
            text-decoration: none; 
        }
        /*하기는 category.loginAccountManagement에 사용된 css style...*/
        #accountPasswordChange h2{
            text-align:left;
            margin-top: 37px;
            margin-bottom: 37px;
        }
        .accordion-body{
            text-align:left;
        }
        #accountPasswordLost h2{
            text-align:left;
            margin-top: 37px;
            margin-bottom: 37px;
        }
                /*
        맨 위로 가기 버튼
         */
         #wrapBackToTop{
            margin:0 auto;
            width:300px;
            }
        #back-to-top {
            display: inline-block;
            background-color: #FF9800;
            width: 50px;
            height: 50px;
            text-align: center;
            border-radius: 4px;
            position: fixed;
            bottom: 30px;
            right: 30px;
            transition: background-color .3s, 
                opacity .5s, visibility .5s;
            opacity: 0;
            visibility: hidden;
            z-index: 1000;
            }
        #back-to-top::after {
            content: "\f0d8";
            font-family: FontAwesome;
            font-weight: normal;
            font-style: normal;
            font-size: 2em;
            line-height: 50px;
            color: #fff;
            }
        #back-to-top:hover {
            cursor: pointer;
            background-color: #333;
            }
        #back-to-top:active {
            background-color: #555;
            }
        #back-to-top.show {
            opacity: 1;
            visibility: visible;
            }
            /*
            뒤로 가기 버튼 
            */
        #wrapBackToBackPage{
            margin:0 auto;
            width:300px;
            }
        #back-to-backpage {
            display: inline-block;
            background-color: #FF9800;
            width: 50px;
            height: 50px;
            text-align: center;
            border-radius: 4px;
            position: fixed;
            bottom: 30px;
            right: 100px;
            transition: background-color .3s, 
                opacity .5s, visibility .5s;
            opacity: 0;
            visibility: hidden;
            z-index: 1000;
            }
        #back-to-backpage::after {
            content: "\f0d9";
            font-family: FontAwesome;
            font-weight: normal;
            font-style: normal;
            font-size: 2em;
            line-height: 50px;
            color: #fff;
            }
        #back-to-backpage:hover {
            cursor: pointer;
            background-color: #333;
            }
        #back-to-backpage:active {
            background-color: #555;
            }
        #back-to-backpage.show {
            opacity: 1;
            visibility: visible;
            }
      </style>
      <script>
        /* 맨 위로 가기 버튼의 스크립트.*/
        $(function(){
          $('#back-to-top').on('click',function(e){
              e.preventDefault();
              $('html,body').animate({scrollTop:0},100);
          });
          
          $(window).scroll(function() {
            if ($(document).scrollTop() > 100) {
              $('#back-to-top').addClass('show');
            } else {
              $('#back-to-top').removeClass('show');
            }
          });
        });
        /* 뒤로 가기 버튼의 스크립트.*/
        /*back-to-backpage */
        $(function(){
        //   상기 코드 중 일부 숨김...
        //   $('#back-to-backpage').on('click',function(e){
        //       e.preventDefault();
        //       $('html,body').animate({scrollTop:0},100);
        //   });
          $(window).scroll(function() {
            if ($(document).scrollTop() > 100) {
              $('#back-to-backpage').addClass('show');
            } else {
              $('#back-to-backpage').removeClass('show');
            }
          });
        });
        /*뒤로가기 자바스크립트 기능... */
        /* 뒤로가기 버튼 javacript... 그러나 기능 구현이 아니 되어 주석 처리함..
        function goBack(){
            window.history.back();
        }      
        */
      </script>
</head>
<body>
	<jsp:include page="/Header.jsp"/>

        <!-- 이영호 작업본. 2.customerservice.category.loginAccountmanagement
            body 부분은 곧 div이며 div 안에 3개의 ID를 선언하여 구분 하였음. 하기는 div id를 풀의함.
 
        -->

     <div class="row">
        <div id="emptySpaceForHeadSection" style="height:82px;">   
            <!--헤더 섹션이 없어서 emptySpace를 div으로 선언함...-->            
        </div>
        <div id="bodyOfCustomerService"> 
            <!--질문 검색창-->
            
                <div id="searchtool" class="searchtool">
                    <div id="main-content" style="height:190px; max-width: 100%; background-color: #333741">
                        <div class="hero-inner" style="height:190px;">
                            <br>
                                <h1 style="color: white; height: 80px;">Cinemaway</h1>
                                <br>
                                <h4 style="color: white; font-weight: normal;">직접 문의 게시판</h4>
                        </div>
                    </div>
                </div>
            
        </div> 
        <!-- 문의 등록 게시판
        한용원의 게시판 코드에서 추출하여 사용함.
        -->
        <div class="m-5"><img src="images/자리차지용.jpg" alt=""></div>
            <div class="container">
                <div class="row">
                    <div class="col">
                    궁금하시거나 문의하고 싶은 내역들을 하기에 적어서 제출 주시면 빠른 시일내에 답변 드리겠습니다.
                    </div>
                    <div class="col-3">
                        <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                            <option selected>문의 분야</option>
                            <option value="1">로그인/계정관리</option>
                            <option value="2">탈퇴</option>
                            <option value="3">사용 문의</option>
                            <option value="4">컨텐츠</option>
                            <option value="5">사용 오류</option>
                            <option value="6">문의 등록</option>
                        </select>
                    </div>
                </div>
            </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <form action="qna3.do" method="post">
                        
                        


                        <input type="text" name="title" class="form-control mt-4 mb-2"
                            placeholder="제목을 입력해주세요." required
                        >
                        <div class="form-group">
                            <textarea class="form-control" rows="10" name="qna_content"
                                placeholder="내용을 입력해주세요" required
                            ></textarea>
                        </div>

                        <!-- <button type="submit" class="btn btn-secondary mb-3">제출하기</button> -->
                        <div class="d-grid gap-2 col-6 mx-auto m-5">
                            <input class="btn btn-secondary" type="submit" value="글 올리기">
                        </div>
                    </form>
                </div>
            </div>
        </div>        
    </div>
 <!-- 푸터 영역-->
<jsp:include page="/Tail.jsp"/>
<!-- 푸터 끗-->

        <!-- 맨 위로 가기 버튼의 스크립트.-->
        <div id="wrapBackToBackPage">
            <a id="back-to-backpage" onclick="location.href='index_test.yhthomaslee.customerservice.main.html'"><!--해당 코드는 뒤로가기 기능을 적용했으나 작동하지 않아 url로 대처함.--></a>
        </div>
        <div id="wrapBackToTop">
            <a id="back-to-top"></a>
        </div>
    </body>
    </html>

    
    <!-- <form action="writerAction" method="post">
                        <h2></h2>
                        
                        
                        
                        <input type="text" name="bdTitle" class="form-control mt-4 mb-2"
                            placeholder="제목을 입력해주세요." required
                        >
                        <div class="form-group">
                            <textarea class="form-control" rows="10" name="bdContent"
                                placeholder="내용을 입력해주세요" required
                            ></textarea>
                        </div>

                        <!-- <button type="submit" class="btn btn-secondary mb-3">제출하기</button> -->
                       <!--  <div class="d-grid gap-2 col-6 mx-auto m-5">
                            <button class="btn btn-secondary" type="button" onclick="location.href='Cinemaway_review.html'">글올리기</button>
                        </div>
                    </form> -->