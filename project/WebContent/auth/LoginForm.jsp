<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

    <link rel="stylesheet" href="../css/bootstrap.min.css">
  <script src="https://kit.fontawesome.com/e13e35fb00.js" crossorigin="anonymous"></script>
  <script src="../js/bootstrap.bundle.min.js"></script>
  <script src="../js/jquery-3.6.0.min.js"></script>
  <script src="../js/slick.min.js"></script>
  <link rel="stylesheet" href="../css/slick-theme.css">
  <link rel="stylesheet" href="../css/slick.css">
  <link rel="stylesheet" href='../http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600'>
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

.css-1lsq3kr {
    display: block;
    position: relative;
    color: rgba(255, 255, 255, 0.5);
    font-size: 12px;
    font-weight: 400;
    line-height: 18px;
    text-align: left;
    padding: 0px 0px 0px 21px;
    cursor: pointer;
}

.css-11a3zmg {
    background-color: #F82F62;
    color: #FFFFFF;
    font-size: 15px;
    font-weight: 700;
    -webkit-letter-spacing: -0.1px;
    -moz-letter-spacing: -0.1px;
    -ms-letter-spacing: -0.1px;
    letter-spacing: -0.1px;
    line-height: 51px;
    text-align: center;
    width: 100%;
    height: 52px;
    border-radius: 40px;
    font-size: 16px;
    line-height: 47px;
    height: 48px;
}

div {
    display: block;
    overflow: hidden;
}

  .css-1oylls0::before {
    content: "";
    position: fixed;
    top: 0px;
    left: 0px;
    z-index: 0;
    background: url(https://an2-img.amz.wtchn.net/image/v2/baf4c8c01ccc8cfe2ed52b4de6179d22.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSndZWFJvSWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk1qYzBOVGs0Tmprek5UYzJNelF4TURRaWZRLkU0YmFBczlhUjFCejF5WWhkS1NBZVF6czhtZTFKQjN4SUxxSm4tN3hvWlU) center center / cover no-repeat;
    width: 100%;
    height: 100%;
    opacity: 1;
    transition: opacity 500ms ease 0s;
}

.css-1oylls0::after {
    content: "";
    position: fixed;
    top: 0px;
    left: 0px;
    z-index: 0;
    background: rgb(18, 18, 24);
    width: 100%;
    height: 100%;
    opacity: 0.8;
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


input.css-17gk82d[type="text"] {
    font-size: 16px;
    -webkit-letter-spacing: -0.5px;
    -moz-letter-spacing: -0.5px;
    -ms-letter-spacing: -0.5px;
    letter-spacing: -0.5px;
    line-height: normal;
    border-color: rgba(154,151,161,0.2);
}


input.css-17gr1jg[type="email"] {
    font-size: 16px;
    -webkit-letter-spacing: -0.5px;
    -moz-letter-spacing: -0.5px;
    -ms-letter-spacing: -0.5px;
    letter-spacing: -0.5px;
    line-height: normal;
    border-color: rgba(154,151,161,0.2);
}
input.css-13dydb2[type="password"] {
    font-size: 16px;
    -webkit-letter-spacing: -0.5px;
    -moz-letter-spacing: -0.5px;
    -ms-letter-spacing: -0.5px;
    letter-spacing: -0.5px;
    line-height: normal;
    border-color: rgba(154,151,161,0.2);
}
.css-17gr1jg {
    width: 100%;
    padding: 10px 10px 10px 14px;
    border-radius: 4px;
 
}
.css-13dydb2 {
    width: 100%;
    padding: 10px 10px 10px 14px;
    border-radius: 4px;
 
}

.css-17gk82d {
    width: 100%;
    padding: 10px 10px 10px 14px;
    border-radius: 4px;
 
}

.css-m4m9j2 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
    width: 330px;
}

.css-1rpe30y {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    position: relative;
    z-index: 1;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-box-pack: center;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    height: 100%;
    overflow: hidden;
}



input.css-17gk82d[type="email"], input.css-17gk82d[type="number"], input.css-17gk82d[type="password"], input.css-17gk82d[type="search"], input.css-17gk82d[type="tel"], input.css-17gk82d[type="text"] {
    color: rgb(51, 51, 51);
    font-size: 14px;
    font-weight: 400;
    line-height: 1;
    border-width: 1px 1px 0px;
    border-style: solid;
    border-color: rgb(212, 212, 212);
    border-image: initial;
}
.movie_content {
    padding-left: 550px;
    padding-right: 550px;
    padding-top: 200px;
    padding-bottom: 200px;
}

html, body {
    font-weight: 400;
    background: rgb(20, 21, 23);
    color: white;
    height: 100%;
    padding: 0px;
    margin: 0px;
}
.css-1u34opi {
    position: absolute;
    right: 0;
    bottom: 1.3888888888888888vw;
    left: 0;
    z-index: 100;
    color: rgba(255,255,255,0.3);
    font-size: 0.8333333333333334vw;
    font-weight: 400;
    -webkit-letter-spacing: -0.034722222222222224vw;
    -moz-letter-spacing: -0.034722222222222224vw;
    -ms-letter-spacing: -0.034722222222222224vw;
    letter-spacing: -0.034722222222222224vw;
    text-align: center;
    padding: 0 3.4722222222222223vw;
}
.css-sp1qhw {
    display: inline-block;
    position: relative;
    vertical-align: top;
}
form {
    display: block;
    margin-top: 0em;
}
#root {
    width: 100%;
    height: 100%;
}

.sign div{
    display: block;
    margin-top: 4%;

}
.css-nmz2w {
    color: rgb(255, 255, 255);
    font-size: 18px;
    font-weight: 700;
    letter-spacing: -1px;
    margin: 0px 0px 14px;
}

.nav-item {
    color: gray;
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
	<form action="login.do" method="post">
		      <div class="sign">
      <main class="css-1ht4m4x-Main e19xg79h1">
          <div src="https://an2-img.amz.wtchn.net/image/v2/baf4c8c01ccc8cfe2ed52b4de6179d22.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSndZWFJvSWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk1qYzBOVGs0Tmprek5UYzJNelF4TURRaWZRLkU0YmFBczlhUjFCejF5WWhkS1NBZVF6czhtZTFKQjN4SUxxSm4tN3hvWlU" class="css-1oylls0">
              <main class="css-1rpe30y">
                  <div class="css-m4m9j2">
                  <div class="css-nmz2w">로그인</div>
                      <div class="css-k5snl0"><input name="email" class="css-17gr1jg" placeholder="이메일 (example@gmail.com)" autocomplete="off" data-valid="false" type="email" >
                      </div>
                      <div class="css-k5snl0"><input name="pwd" class="css-13dydb2" placeholder="영문, 숫자, 특문 중 2개 조합 10자 이상" autocomplete="off" data-valid="false" type="password" >
                      </div>
                      <div class="signup_checker_container css-1btp4cx"><div class="css-ddiry1">
                       
                  </div>
                 
                      <br>
                  </div>
                  <div class="css-1ai28bz-&quot;SubmitButtonBlock&quot;"><input type="submit" class="css-11a3zmg" value="로그인">
                  </div>
                  
              </div>
      </div>
      </div>
	</form> 
</body> 
</html>