# WithKorea

## 개요

WITH KOREA 프로젝트는 HTML과 CSS의 기본 개념을 공부하기 위한 반응형 웹 페이지 프로젝트입니다. 

반응형 웹 페이지를 구성하면서 계속적으로 UI가 추가 될 수 있는 웹 페이지가 뭐가 있을까 생각했으며, 그 중 생각한게 한국을 소개하는 웹 페이지입니다. 

범용성도 높고 추가할 수 있는 기능이 많아 시간을 들이는 만큼 계속 발전해 나갈 수 있을 것 같다고 생각하였습니다.

이러한 의미에서 지속적으로 공부할 수 있는 사이트로 WITH KOREA 선택했습니다.

## 프로젝트 상세

### 수평 정렬

메인페이지에서 부모에게 hidden 속성을 적용하고 자손에게 float 속성을 적용함으로써 수평 정렬 한다.


[소스코드] main.css
```
div.container{ overflow:hidden;
}
#container { float:middle; margin: 100px 200px 100px 200px;
}
```


### 중앙 정렬

width 속성을 1000px 로 두고 양쪽을 auto 로 둠으로써 이미지들을 중앙 정렬 한다.

[소스코드] seoul.css
```
* { margin: 0; padding: 0;
}
.a img{ display: block; width: 1000px; margin : 100px auto 100px auto; ...}
```


### One True 레이아웃을 구성

one-true 레이아웃을 이용하여 한가지 컨테이너를 구성한다. top middle bottom 으로 나눴으며 각 각 제목 이미지 내용을 담당한다.

[소스코드] seoul.css
```
#top { text-align: center; font-size: 50px; margin-bottom: 100px; margin-top: 100px;
}
#middle { margin: 0 auto 0 auto; width: 100%; height: 800px; overflow: hidden; position: relative;
}
#bottom { margin-top : 50px; margin-bottom: 30px; padding: 10px; font-size: 25px; font-family: 'Hanna', sans-serif;
}
```


### 절대 좌표를 활용

절대좌표를 사용하여 one-true 레이아웃 내에 이미지를 자유롭게 배치하였다.

[소스코드] seoul.css
```
#right_top{ right: 20px; top: 10px; height: 380px; width: 48%;
}
#right_bottom{ right: 20px; bottom: 10px; height: 380px; width: 48%;
}
#center{ width: 100%; height: 100%;
}
#right{ right: 20px; top: 10px; height: 780px; width: 48%;
}
#left_top{ left: 20px; top: 10px; height: 380px; width: 48%;
}
#left_bottom{ left: 20px; bottom: 10px; height: 380px;
 width: 48%;
}
```


### 반응형 웹 구현
@media를 이용하여 화면이 700px 이하로 줄었을 경우 네비게이션바를 새로 정렬하도록 하였다.

[소스코드] top.css
```
@media screen and (max-width: 700px) { .top_bar { background-color: rgb(255, 255, 255); flex-direction: column; align-items: flex-start; margin: 0; height: 150px; } .navbar__menu li { padding: 20px 30px; display: inline-block; font-size: 20px; }
```


### 자바스크립트, 객체, 문서객체모델(DOM), jQuery 라이브러리, jQuery 플러그인 사용
자바스크립트,객체,jQuery를 사용하여 이미지를 페이드 인 하고
로고 이미지에 애니메이션 효과를 넣었다.
*width 700px 이상
*width 700px 이하

[소스코드] main.js
```
$(document).ready(function(){
$(".a img").animate({width: 1600}, 2000,
 function(){}).animate({ height: 1000
 },2000,function(){ }).animate({ width: 1600
 })
 }) function over(obj)
 { obj.style.background="rgb(250, 250, 255)"; } function out(obj) { obj.style.background="white"; }
 $(document).ready(function() {
$(window).scroll( function(){ $('img').each( function(i){
 var bottom_of_element = $(this).offset().top + $(this).outerHeight(); var bottom_of_window = $(window).scrollTop() + $(window).height();
*fade in과 동시에 커지는 이미지
 if( bottom_of_window > bottom_of_element ){ $(this).animate({'opacity':'1'},700); } });
 });
});
```

[소스코드] main.css
```
.a img{ max-width: 100%; height: auto; display: block; width: 500px; margin : 0 auto 0 auto; animation: fadein 3s; -moz-animation: fadein 3s;
 -webkit-animation: fadein 3s; /* Safari and Chrome */
 -o-animation: fadein 3s; /* Opera */
 background-color: rgb(245, 250, 255); }
```


2.7. 효과적인 디자인 구성 적용
one ture layout 과 절대좌표로 이미지를 효과적으로 배치하고
애니메이션 효과등을 활용하여 디자인을 구성 하였다.


2.8. 오디오 및 동영상 활용 가능(option)
마지막으로 페이지 하단에 오디오 태그를 자동재생으로 넣어 사용자에게 음악재생을 제공했다.
[소스코드] index.html
```
<audio src="Upbeat Ukulele Background Music - That Positive Feeling by Alumo (1).mp3" controls autoplay></audio>
```
