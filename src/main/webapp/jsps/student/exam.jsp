<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>考试</title>
	<link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<style>
		body{
			font-family: '微软雅黑';
			padding-top: 50px;
		}
		h2{
			margin:0;
			line-height: 49px;
		}
		.question-title{
			margin-bottom: 20px;
		}
		.option-div{
			padding-left: 20px;
		}
		.option-div .radio{
			margin-bottom: 15px;
		}
		.btn-longer{
			width: 155px;
		}
		.container.bottom-padding{
			padding-bottom: 20px;
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	  <div class="container">
	    <h2>考试倒计时 : <small id="exam-time"></small></h2>
	  </div>
	</nav>
	<div class="container bottom-padding">
		<form action="">
			<div class="question-title">
				<h4><span>1. </span>这个是一道很长很长的题目, 我就试试到底有多长</h4>
			</div>
			<div class="option-div">
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
				    这个是选项1, 第三方就是大非技术
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				    这个是选项2, 的护发素的分解落实到恢复了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项3, 复活电击萨芬忽略和无爱了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项4, 减肥快来撒会付额外人有我而为
				  </label>
				</div>
			</div>
			<hr>

			<div class="question-title">
				<h4><span>1. </span>这个是一道很长很长的题目, 我就试试到底有多长</h4>
			</div>
			<div class="option-div">
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
				    这个是选项1, 第三方就是大非技术
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				    这个是选项2, 的护发素的分解落实到恢复了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项3, 复活电击萨芬忽略和无爱了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项4, 减肥快来撒会付额外人有我而为
				  </label>
				</div>
			</div>
			<hr>

			<div class="question-title">
				<h4><span>1. </span>这个是一道很长很长的题目, 我就试试到底有多长</h4>
			</div>
			<div class="option-div">
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
				    这个是选项1, 第三方就是大非技术
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				    这个是选项2, 的护发素的分解落实到恢复了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项3, 复活电击萨芬忽略和无爱了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项4, 减肥快来撒会付额外人有我而为
				  </label>
				</div>
			</div>
			<hr>

			<div class="question-title">
				<h4><span>1. </span>这个是一道很长很长的题目, 我就试试到底有多长</h4>
			</div>
			<div class="option-div">
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
				    这个是选项1, 第三方就是大非技术
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				    这个是选项2, 的护发素的分解落实到恢复了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项3, 复活电击萨芬忽略和无爱了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项4, 减肥快来撒会付额外人有我而为
				  </label>
				</div>
			</div>
			<hr>

			<div class="question-title">
				<h4><span>1. </span>这个是一道很长很长的题目, 我就试试到底有多长</h4>
			</div>
			<div class="option-div">
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
				    这个是选项1, 第三方就是大非技术
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				    这个是选项2, 的护发素的分解落实到恢复了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项3, 复活电击萨芬忽略和无爱了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项4, 减肥快来撒会付额外人有我而为
				  </label>
				</div>
			</div>
			<hr>

			<div class="question-title">
				<h4><span>1. </span>这个是一道很长很长的题目, 我就试试到底有多长</h4>
			</div>
			<div class="option-div">
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
				    这个是选项1, 第三方就是大非技术
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				    这个是选项2, 的护发素的分解落实到恢复了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项3, 复活电击萨芬忽略和无爱了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项4, 减肥快来撒会付额外人有我而为
				  </label>
				</div>
			</div>
			<hr>

			<div class="question-title">
				<h4><span>1. </span></h4>
			</div>
			<div class="option-div">
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
				    这个是选项1, 第三方就是大非技术
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				    这个是选项2, 的护发素的分解落实到恢复了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项3, 复活电击萨芬忽略和无爱了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项4, 减肥快来撒会付额外人有我而为
				  </label>
				</div>
			</div>
			<hr>

			<div class="question-title">
				<h4><span>1. </span>这个是一道很长很长的题目, 我就试试到底有多长</h4>
			</div>
			<div class="option-div">
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
				    这个是选项1, 第三方就是大非技术
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				    这个是选项2, 的护发素的分解落实到恢复了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项3, 复活电击萨芬忽略和无爱了
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    这个是选项4, 减肥快来撒会付额外人有我而为
				  </label>
				</div>
			</div>
			<hr>

			<button class="btn btn-primary btn-lg btn-longer">交 卷</button>
		</form>
	</div>
	<script src="http://cdn.bootcss.com/jquery/1.8.3/jquery.min.js"></script>
	<script>
		var examMinutes = 30;//以分钟为单位, 这个值应该是后台算好放到页面上的.
		var seconds = 0;//初始化秒数
		var timer = setInterval(function(){
			if(seconds <= 0){
				examMinutes--;
				seconds = 60;
			}
			if(examMinutes < 0){
				clearInterval(timer);
				return;
			}
			seconds--;
			$("#exam-time").text(examMinutes+"分"+seconds+"秒");
		},1000);
	</script>
</body>
</html>

