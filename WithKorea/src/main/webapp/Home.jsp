<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Home</title>
<link  rel="stylesheet" href= "css/styles.css">

</head>
<body>
<img id="logo" src="image/logo.png" width="165" height = "100">


<div id = "menu">
<a id="home" onclick="clickHome();">Home</a>
<a id="seoul"onclick="clickSeoul();">Seoul</a>
<a id="busan"onclick="clickBusan();">Busan</a>
<a id="jeonju"onclick="clickJeonju();">Jeonju</a>
</div>

<img id="photo" src="image/home1.jpg" width="50%" height="50%"
	onmouseenter="mouseEnterPhoto();" onmouseleave="mouseLeavePhoto();">

<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
  
<script>
function clickHome(){
	$('#photo').attr('src','image/home1.jpg')
	
	$('#home').css('font-weight','bold');	
	$('#seoul').css('font-weight','normal');
	$('#busan').css('font-weight','normal');
	$('#jeonju').css('font-weight','normal');
}
function clickSeoul(){
	$('#photo').attr('src','image/seoul1.jpg')
	
	$('#home').css('font-weight','normal');	
	$('#seoul').css('font-weight','bold');
	$('#busan').css('font-weight','normal');
	$('#jeonju').css('font-weight','narmal');

}
function clickBusan(){
	$('#photo').attr('src','image/busan1.jpg')
	
	$('#home').css('font-weight','normal');	
	$('#seoul').css('font-weight','normal');
	$('#busan').css('font-weight','bold');
	$('#jeonju').css('font-weight','normal');
}
function clickJeonju(){
	$('#photo').attr('src','image/jeonju1.jpg')
	
	$('#home').css('font-weight','normal');	
	$('#seoul').css('font-weight','normal');
	$('#busan').css('font-weight','normal');
	$('#jeonju').css('font-weight','bold');
}

//그림자 삽입
function mouseEnterPhoto() {
	$('#photo').css('box-shadow','10px 20px')
}
function mouseLeavePhoto() {
	$('#photo').css('box-shadow','none')
}
</script>
</body>
</html>