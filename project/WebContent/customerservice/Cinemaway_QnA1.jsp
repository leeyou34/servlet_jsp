<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CinemaWay_QnA</title>
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
        a { text-decoration: none; }
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
            visibility: visible;
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
            visibility: visible;
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
        $(window).scroll(function() {
            if ($(document).scrollTop() > 100) {
            $('#back-to-backpage').addClass('show');
            } else {
            $('#back-to-backpage').removeClass('show');
            }
        });
        });
        /* 뒤로가기 버튼 javacript... 그러나 기능 구현이 아니 되어 주석 처리함..
        function goBack(){
            window.history.back();
        }      
        */
        </script>
    </head>
<body>
    <jsp:include page="/Header.jsp"/>
    <!-- 네비게이션 끝 -->

        <!-- 이영호 작업본. 1.customerservice.main page...
            body 부분은 곧 div이며 div 안에 3개의 ID를 선언하여 구분 하였음. 하기는 div id를 풀의함.
            1. div id="emptySapceForHeadSection" : 헤더 섹션이 없어서 그냥 div으로 헤더 공간 만듬...
            ---------
            2. div id="searchtool" : 질문 부분 검색창
            3. div id="categoriesForCustomer" : 고객센터 질문 카테고리
            4. div id="FrequentQuestion" : 자주 묻는 질문
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
                                    <div class="form">
                                        <form role="search" class="search search-full" data-search="" data-instant="true" autocomplete="off" action="#" accept-charset="UTF-8" method="get">
                                            <input name="utf8" type="hidden" value="✓">
                                            <!--user가 검색할 시, FAQ에만 한정되어서 검색 자료가 도출되겠금 구현이 필요함.-->
                                            <input type="search" name="query" id="query" placeholder="검색" autocomplete="off" aria-label="검색">
                                            <span class="right-pan"></span></form>
                                    </div>
                        </div>
                    </div>
                </div>
            <a style="color:white;" href="<%=request.getContextPath() %>/auth/logout.do">로그아웃</a>	
        </div>    
            <!-- 카테고리 부분-->
            <div id="categoriesForCustomerService">
            <div class="containerAlignCenter">
                <h2><strong>카테고리</strong></h2>
                </div>
                <div class="row"><!--호버 기능이 구현 되었음-->
                    <div class="col-sm-2" type="button" onclick="location.href='Cinemaway_QnA2.html'">[로그인/계정관리]</div>
                    <div class="col-sm-2" type="button" onclick="location.href='' ">[탈퇴]</div>
                </div>
                <div class="row">
                    <div class="col-sm-2" type="button" onclick="location.href='' ">[사용 문의]</div>
                    <div class="col-sm-2" type="button" onclick="location.href='' ">[컨텐츠]</div>
                </div>
                <div class="row">
                    <div class="col-sm-2" type="button" onclick="location.href='' ">[사용 오류]</div>
                    <div class="col-sm-2" type="button" onclick="location.href='<%=request.getContextPath() %>qna3.do'">[문의 등록]</div>
                </div>
            </div>
                <!--자주 묻는 질문-->
                <div id="FrequentQuestion" sytle="text-align: center;">
                            <div class="table-responsive" style="margin: 20px;">
                                <!--table : 표 생성-->
                                <h2><strong>[자주 묻는 질문]</strong></h2>
                            </div>
                            <div>
                                <table class="table" style="width:700px; text-align:center; margin:auto;">
                                    <tr>
                                        <th>1.</th><!--모달창의 내용들을 바꾸고자 하면. data-bs-target="#..."와 modal fade의 id=".."를 동일하게 써서 바꿔줘야 함.-->
                                        <td style="width:700px;"data-bs-toggle="modal" data-bs-target="#emailproblem"><a href="#">이메일 주소/비밀번호가 기억나지 않아요.</a></td>
                                        <div class="modal fade" id="emailproblem" role="dialog" aria-labelledby="introheader" aria-hidden="true" tabindex="-1">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">이메일 주소/비밀번호가 기억나지 않아요</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <h3>이메일 주소 문제</h3>
                                                        <p>이메일 주소가 기억이 나지 않으실시, 저희에게 직접문의로 연락 부탁드립니다.<br><br>
                                                            <a href="index_test.yhthomaslee.customerservice.category.inquiry.html">[문의 등록]</a>
                                                        </p>
                                                        <br>
                                                        <h3>비밀번호 문제</h3>
                                                        <p>로그인창에 가셔서 다시 비밀번호 찾기 기능을 통해 비밀번호를 재발급 부탁드립니다.</p>
                                                        <br>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-defaulut" data-bs-dismiss="modal">
                                                            닫기
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    
                                    </tr>
                                    <tr>
                                        <th>2.</th><!--모달창의 내용들을 바꾸고자 하면. data-bs-target="#..."와 modal fade의 id=".."를 동일하게 써서 바꿔줘야 함.-->
                                        <td style="width:700px;"data-bs-toggle="modal" data-bs-target="#deleteaccount"><a href="#">탈퇴하고 싶어요.</a></td>
                                        <div class="modal fade" id="deleteaccount" role="dialog" aria-labelledby="introheader" aria-hidden="true" tabindex="-1">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">탈퇴하고 싶어요</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <h3>탈퇴 문의</h3>
                                                        <p> 저희 정책상 탈퇴에 관해서는 문의 등록를 통해 진행 중에 있습니다.<br><br>
                                                            <a href="index_test.yhthomaslee.customerservice.category.inquiry.html">[직접 문의]</a>
                                                        </p>
                                                     </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-defaulut" data-bs-dismiss="modal">
                                                            닫기
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </tr>
                                    <tr>
                                        <th>3.</th><!--모달창의 내용들을 바꾸고자 하면. data-bs-target="#..."와 modal fade의 id=".."를 동일하게 써서 바꿔줘야 함.-->
                                        <td style="width:700px;"data-bs-toggle="modal" data-bs-target="#directinquiry"><a href="#">직접 문의드리고 싶어요.</a></td>
                                        <div class="modal fade" id="directinquiry" role="dialog" aria-labelledby="introheader" aria-hidden="true" tabindex="-1">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">직접 문의 드리고 싶어요.</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <h3>직접 문의</h3>
                                                        <p>직접문의에 관해서는 상기 카테고리 항목에 있는 <a href="index_test.yhthomaslee.customerservice.category.inquiry.html">[직접 문의]</a> 링크 참고 부탁드립니다.<br>
                                                        </p>
                                                     </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-defaulut" data-bs-dismiss="modal">
                                                            닫기
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </tr>
                                </table>
                            </div>
                </div>
                
            </div>
	<jsp:include page="/Tail.jsp"/>
</body>
<div id="wrapBackToBackPage">
    <a id="back-to-backpage" onclick="location.href='#'"><!--해당 코드는 뒤로가기 기능을 적용했으나 작동하지 않아 url로 대처함.--></a>
</div>
<div id="wrapBackToTop">
    <a id="back-to-top"></a>
</div>
</html>