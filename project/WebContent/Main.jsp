<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CinemaWay_main</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/cinema_style.css">
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
  
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

<jsp:include page="/Header.jsp"/>

<!-- 캐러셀 부분 -->
<div class="top-slide">
    <div class="carousel slide" data-bs-ride="carousel" id="jejuphoto">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#jejuphoto" data-bs-slide-to="0" class="active" aria-current="true"></button>
            <button type="button" data-bs-target="#jejuphoto" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#jejuphoto" data-bs-slide-to="2"></button>
        </div>
        <div class="carousel-inner">
            <!-- 처음에 표출될거를 active로 붙여줌 -->
            <div class="carousel-item active">
                <img src="/images/uploads/01.jpg">
                <div class="carousel-caption">
                    <!-- <h4>문구문구</h4>
                    <p>문구</p> -->
                </div>
            </div>
            <div class="carousel-item">
                <img src="/images/uploads/02.jpg">
                <div class="carousel-caption">
                    <!-- <h4>문구문구문구</h4>
                    <p>용원씨의 영화이야기~</p> -->
                </div>
            </div>
            <div class="carousel-item">
                <img src="/images/uploads/03.jpg">
                <div class="carousel-caption">
                    <!-- <h4>어쩌구저쩌구</h4>
                    <p>어쩌구저쩌구어쩌구저쩌구</p> -->
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#jejuphoto" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#jejuphoto" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
    </div>
    </div>

<!-- 캐러셀 끝 -->


<!-- 영화목록같은거 -->
<div class="movies">
    <h3 class="category_name">'영잘알' 용원씨가 추천하는 영화</h3>
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
            <img src="/image1/11/Little_Forest_(리틀_포레스트).jpg" alt="#" onclick="location.href='LittelForest.html'">
            <i class="fa fa-star" aria-hidden="true"></i><span>4.3</span><a class="txt"> /5</a> 
            <p class="movietext1">리틀 포레스트 (2018)</p>
        </div>
        <div class="swiper-slide"><img src="/images/mid.jpg.crdownload" alt="#"">
            <i class="fa fa-star" aria-hidden="true"></i><span>4.5</span><a class="txt"> /5</a> 
            <p class="movietext1">Midnight in Paris (2011)</p>
        </div>
            <div class="swiper-slide"><img src="/images/grand_buda.jpg" alt="#" onclick="location.href='../page/BudapestHotel.do'">
                <i class="fa fa-star" aria-hidden="true"></i><span>4.5</span><a class="txt"> /5</a> 
                <p class="movietext1">The Grand Budapest Hotel (2014)</p>
            </div>
                <div class="swiper-slide"><img src="/images/1/es.png" alt="#" onclick="location.href='EternalSunshine.html'">
                    <i class="fa fa-star" aria-hidden="true"></i><span>4.2</span><a class="txt"> /5</a> 
                    <p class="movietext1">Eternal Sunshine of the Spotless Mind (2004)</p>
                </div>
                    <div class="swiper-slide"><img src="/images/befosun.jpg" alt="#">
                        <i class="fa fa-star" aria-hidden="true"></i><span>4.0</span><a class="txt"> /5</a> 
                        <p class="movietext1">Before Sunrise (1995)</p>
                    </div>
                        <div class="swiper-slide"><img src="/images/mamma.jpg" alt="#">
                            <i class="fa fa-star" aria-hidden="true"></i><span>3.9</span><a class="txt"> /5</a> 
                            <p class="movietext1">Mamma Mia! (2008)</p>
                        </div>
                            <div class="swiper-slide"><img src="/images/wilter.jpg.crdownload" alt="#">
                                <i class="fa fa-star" aria-hidden="true"></i><span>4.1</span><a class="txt"> /5</a> 
                                <p class="movietext1">The Secret Life of Walter Mitty (2013)</p>
                            </div>
                                <div class="swiper-slide"><img src="/images/letitgo.jpg" alt="#">
                                    <i class="fa fa-star" aria-hidden="true"></i><span>3.2</span><a class="txt"> /5</a> 
                                    <p class="movietext1">Frozen (2013)</p>
                                </div>
                                    <div class="swiper-slide"><img src="/images/pycho.jpg" alt="#">
                                        <i class="fa fa-star" aria-hidden="true"></i><span>4.1</span><a class="txt"> /5</a> 
                                        <p class="movietext1">Psyco (1960)</p>
                                    </div>
                                        <div class="swiper-slide"><img src="/images/gotfater.jpg" alt="#">
                                            <i class="fa fa-star" aria-hidden="true"></i><span>3.6</span><a class="txt"> /5</a> 
                                            <p class="movietext1">The Godfather (1972)</p>
                                        </div>
                                            <div class="swiper-slide"><img src="/images/noway.jpg.crdownload" alt="#">
                                                <i class="fa fa-star" aria-hidden="true"></i><span>3.3</span><a class="txt"> /5</a> 
                                                <p class="movietext1">Bonnie and Clyde (1967)</p>
                                            </div>
                                                <div class="swiper-slide"><img src="/images/shaws.jpg" alt="#">
                                                    <i class="fa fa-star" aria-hidden="true"></i><span>3.8</span><a class="txt"> /5</a> 
                                                    <p class="movietext1">The Shawshank Redemption (1994)</p>
                                                </div>
                                                    <div class="swiper-slide"><img src="/images/badluck.jpg" alt="#">
                                                        <i class="fa fa-star" aria-hidden="true"></i><span>4.0</span><a class="txt"> /5</a> 
                                                        <p class="movietext1">Bad Luck Banging (2021)</p>
                                                    </div>
                                                        <div class="swiper-slide"><img src="/images/fire.jpg.crdownload" alt="#">
                                                            <i class="fa fa-star" aria-hidden="true"></i><span>3.7</span><a class="txt"> /5</a> 
                                                            <p class="movietext1">Fire at Sea (2016)</p>
                                                        </div>
      </div>
        <div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
        <div class="swiper-button-prev"></div><!-- 이전 버튼 -->
    </div>
  </div>
<!--첫번째 영화 리스트 끝-->


  <div class="movies">
    <h3 class="category_name">비트캠프님의 위치에서 가까운 영화 명소</h3>
    <div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="/images/gangnam.jpg" alt="#">
            <i class="fa fa-star" aria-hidden="true"></i><span>2.9</span><a class="txt"> /5</a> 
            <p class="movietext1">Gangnam Blues (2015)</p></div>
        <div class="swiper-slide"><img src="/images/samgin.jpg" alt="#">
            <i class="fa fa-star" aria-hidden="true"></i><span>3.0</span><a class="txt"> /5</a> 
            <p class="movietext1">Samjin Company English Class (2020)</p></div>
            <div class="swiper-slide"><img src="/images/aven.jpg" alt="#">
                <i class="fa fa-star" aria-hidden="true"></i><span>4.2</span><a class="txt"> /5</a> 
                <p class="movietext1">Avengers: Age of Ultron (2015)</p></div>
                <div class="swiper-slide"><img src="/images/thete.jpg" alt="#">
                    <i class="fa fa-star" aria-hidden="true"></i><span>4.1</span><a class="txt"> /5</a>  
                    <p class="movietext1">The Terror Live (2013)</p></div>
                    <div class="swiper-slide"><img src="/images/host.jpg" alt="#">
                        <i class="fa fa-star" aria-hidden="true"></i><span>3.6</span><a class="txt"> /5</a> 
                        <p class="movietext1">The Host (2006)</p></div>
                        <div class="swiper-slide"><img src="/images/eyes.jpg" alt="#">
                            <i class="fa fa-star" aria-hidden="true"></i><span>3.9</span><a class="txt"> /5</a> 
                            <p class="movietext1">Cold Eyes (2013)</p></div>
                            <div class="swiper-slide"><img src="/images/odeto.jpg" alt="#">
                                <i class="fa fa-star" aria-hidden="true"></i><span>4.0</span><a class="txt"> /5</a> 
                                <p class="movietext1">Ode to My Father (2014)</p></div>
    </div>
    <div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
</div>
</div>




  <div class="movies">
    <h3 class="category_name">신작 영화부터 체크!</h3>
    <div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="/image1/12/The_Wailing_(film).png" alt="#" onclick="location.href='TheWailing.html'">
            <a><i class="fa fa-star" aria-hidden="true"></i><span>4.3</span><a class="txt"> /5</a> 
            <p class="movietext1">INTRUSION (2021)</p></a></div>
        <div class="swiper-slide"><img src="/images/Into_the_Wild.jpg" alt="#">
            <i class="fa fa-star" aria-hidden="true"></i><span>3.9</span><a class="txt"> /5</a> 
            <p class="movietext1">No Time to Die (2021)</p></div>
            <div class="swiper-slide"><img src="/images/f20.jpg" alt="#">
                <i class="fa fa-star" aria-hidden="true"></i><span>3.6</span><a class="txt"> /5</a> 
                <p class="movietext1">F20 (2021)</p></div>
                <div class="swiper-slide"><img src="/images/sang.jpg" alt="#">
                    <i class="fa fa-star" aria-hidden="true"></i><span>4.1</span><a class="txt"> /5</a> 
                    <p class="movietext1">Shang-Chi and the Legend of the Ten Rings (2021)</p></div>
                    <div class="swiper-slide"><img src="/images/candy.jpg" alt="#">
                        <i class="fa fa-star" aria-hidden="true"></i><span>4.4</span><a class="txt"> /5</a> 
                        <p class="movietext1">Candyman (2021)</p></div>
                        <div class="swiper-slide"><img src="/images/mogadi.jpg" alt="#">
                            <i class="fa fa-star" aria-hidden="true"></i><span>3.4</span><a class="txt"> /5</a> 
                            <p class="movietext1">Escape from Mogadishu (2021)</p></div>
                            <div class="swiper-slide"><img src="/images/die.jpg" alt="#">
                                <i class="fa fa-star" aria-hidden="true"></i><span>3.9</span><a class="txt"> /5</a> 
                                <p class="movietext1">Till Death (2021)</p></div>
    </div>
    <div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
</div>
</div>

  <!-- 영화목록 같은거 끝 -->



<!-- 블로그모양 리뷰부분-->
<div class="movies">
<h3 class="category_name">엄선하고 엄선한 9월의 베스트 리뷰</h3>
<div class="page-single">
   <div class="container">
      <!-- <div class="row">
         <div class="col-md-9 col-sm-12 col-xs-12"> -->
            <div class="row">
               <div class="col-md-4 col-sm-12 col-xs-12">
                  <div class="blog-item-style-2">
                     <a href="#"><img src="/images/uploads/blogv21.jpg" alt=""></a>
                     <div class="blog-it-infor">
                        <h3><a href="#">다니엘 크레이그의 본드는 스카이폴에서 완벽하게 끝났어야했다</a></h3>
                        <span class="time">27 Mar 2021</span>
                        <p>어중간한 본드, 어중간한 본드걸, 어중간한 악역, 어중간한 스토리. 007이 아니라 그냥 어중간한 스파이물. Q만귀여움.</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-12 col-xs-12">
                  <div class="blog-item-style-2">
                     <a href="#"><img src="/images/uploads/blogv22.jpg" alt=""></a>
                     <div class="blog-it-infor">
                        <h3><a href="#">이걸 어떻게 해</a></h3>
                        <span class="time">27 Mar 2021</span>
                        <p>아무나 붙잡고 가장 좋아하는 첩보영화가 뭐냐고 여쭙는다면 답은 아마 셋 중 하나이다. 오리지널 스파이임과 동시에 최고의 ...</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-12 col-xs-12">
                  <div class="blog-item-style-2">
                     <a href="#"><img src="/images/uploads/blogv23.jpg" alt=""></a>
                     <div class="blog-it-infor">
                        <h3><a href="#">가끔 손가락으로 긋기만 하면 코딩이 다 되는 상상을 해</a></h3>
                        <span class="time">27 Mar 2017</span>
                        <p>한 번쯤은 나도 토니스타크처럼, 마이너리티 리포트에 나오는 그 처럼 손뼉만 치면 모든 코딩이 해결되는 삶을 꿈꾼다. 개발자라는 소재를 토대로 만들어진 이 호러틱한 영화는 ...</p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-4 col-sm-12 col-xs-12">
                  <div class="blog-item-style-2">
                     <a href="#"><img src="/images/uploads/blogv24.jpg" alt=""></a>
                     <div class="blog-it-infor">
                        <h3><a href="#">나 다시 돌아갈래</a></h3>
                        <span class="time">27 Mar 2021</span>
                        <p>코딩을 몰랐을때로 돌아간다면... 구관이 명관인법, 돌아가고 싶은 마음을 담아 다시 틀어본 한국영화의 명작 박하사탕. ...</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-12 col-xs-12">
                  <div class="blog-item-style-2">
                     <a href="#"><img src="/images/uploads/blogv25.jpg" alt=""></a>
                     <div class="blog-it-infor">
                        <h3><a href="#">절름발이 그놈</a></h3>
                        <span class="time">27 Mar 2021</span>
                        <p>카이저소제 소냐도르~. 지금도 안봤다면 평생 안 볼 그 영화. 절름발이 그놈, 유주얼 서스펙트 되시겠다. 지금도 ...</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-12 col-xs-12">
                  <div class="blog-item-style-2">
                     <a href="#"><img src="/images/uploads/blogv26.jpg.crdownload" alt=""></a>
                     <div class="blog-it-infor">
                        <h3><a href="#">21세기 최고의 영화</a></h3>
                        <span class="time">27 Mar 2021</span>
                        <p>그 봉준호 감독이 꼽은 베스트 영화 Top 10에 들어간다는 바로 그 영화! 살인의 추억이랑 비슷하다는 이야기도 있었지만 ... </p>
                     </div>
                  </div>
               </div>
                </div>
            </div>
        </div>
    </div>

<!--블로그모양 리뷰부분 끝-->










  <!-- 리뷰같은것들 부분 -->

  <div class="container mt-5 mb-5">
    <div class="row g-2">
        <div class="col-md-4">
            <div class="card p-3 text-center px-4">
                <div class="user-image"> <img src="https://i.imgur.com/PKHvlRS.jpg" class="rounded-circle" width="80"> </div>
                <div class="user-content">
                    <h5 class="mb-0">한용원</h5> <span>브레인</span>
                    <p>팀의어쩌구</p>
                </div>
                <div class="ratings"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card p-3 text-center px-4">
                <div class="user-image"> <img src="https://i.imgur.com/w2CKRB9.jpg" class="rounded-circle" width="80"> </div>
                <div class="user-content">
                    <h5 class="mb-0">오석</h5> <span>헛소리 원천차단</span>
                    <p>코딩도 재밌었습니다^^</p>
                </div>
                <div class="ratings"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card p-3 text-center px-4">
                <div class="user-image"> <img src="https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-176213403491/media/magazine_img/magazine_286/84-%EC%8D%B8%EB%84%A4%EC%9D%BC.jpg" class="rounded-circle" width="80"> </div>
                <div class="user-content">
                    <h5 class="mb-0">지은혜</h5> <span>새발자</span>
                    <p>개발새발 어떻게든 되었습니다</p>
                </div>
                <div class="ratings"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card p-3 text-center px-4">
                <div class="user-image"> <img src="https://i.imgur.com/w2CKRB9.jpg" class="rounded-circle" width="80"> </div>
                <div class="user-content">
                    <h5 class="mb-0">강다현</h5> <span></span>
                    <p>코딩도 재밌었습니다^^</p>
                </div>
                <div class="ratings"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
            </div>
        </div>
            <div class="col-md-6">
                <div class="card p-3 text-center px-4">
                    <div class="user-image"> <img src="https://ww.namu.la/s/08329c5b43ac83ed26f873c693f6c05e1561cc8c4eedcc082fdb62bb4be1607787a2c5b5331aa90885ac9a6d43a6636dae5339850179392028ce8efc31ab9395aadb2da75bb2904a9e30e8e91220c7a06fbe5112ff6eb24ededc0eb94674f87d" class="rounded-circle" width="80"> </div>
                    <div class="user-content">
                        <h5 class="mb-0">이영호</h5> <span>211기 최강 오지랖퍼</span>
                        <p>코딩이 어려울땐 외주인력 쓰면 장땡.</p>
                    </div>
                    <div class="ratings"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
            </div>
        </div>
    </div>
</div>


<!-- 리뷰같은것들 부분 끝 -->




<jsp:include page="/Tail.jsp"/>
</body>
</html>
    
    
    
    
    
    
    <!-- 용원씨가 준 js 파일 -->
    
    <script>
        // categories
        new Swiper('.swiper-container', {
            
        slidesPerView : 6, // 동시에 보여줄 슬라이드 갯수
        spaceBetween : 2, // 슬라이드간 간격
        slidesPerGroup : 6, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
        
        // 그룹수가 맞지 않을 경우 빈칸으로 메우기
        // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
        loopFillGroupWithBlank : true,
        
        loop : true, // 무한 반복
        
        breakpoints : true, // 반응형 슬라이드
        
        navigation : { // 네비게이션
        nextEl : '.swiper-button-next', // 다음 버튼 클래스명
        prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
    },
});
</script>

<!-- js파일 끝 -->