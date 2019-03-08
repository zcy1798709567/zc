<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String path = request.getContextPath(); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="js/layui-v2.4.5/layui/css/layui.css">
	<link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="js/layui-v2.4.5/layui/layui.js"></script>
	<script type="text/javascript" src="js/bootstrap/js/bootstrap.min.js"></script>
<title>登录页面</title>
<style type="text/css">
*{margin: 0;padding: 0;}
</style>
</head>
<body style="background-color: #000000">
	<div style="background-color: #ffffff;width: 1200px;height: 400px;margin: 100px auto;" >
		<div class="layui-carousel" style="height: 100%"> 
		  <div class="layui-row" style="height: 100%;">
			    <div class="layui-col-xs7" style="height: 100%;">
			      	<div class="layui-carousel" id="test1" lay-filter="test1" style="height: 100%;">
					  <div carousel-item="" style="height: 100%">
					    <div><img alt="123" src="images/1.jpg" style="width: 100%;height: 100%;"/></div>
					    <div><img alt="123" src="images/2.jpg" style="width: 100%;height: 100%;"/></div>
					    <div><img alt="123" src="images/3.jpg" style="width: 100%;height: 100%;"/></div>
					    <div><img alt="123" src="images/4.jpg" style="width: 100%;height: 100%;"/></div>
					    <div><img alt="123" src="images/5.jpg" style="width: 100%;height: 100%;"/></div>
					  </div>  
			    	</div>
			    </div>
		    	<div class="layui-col-xs5" style="height: 100%;background-color: black;border: 1px solid #ffffff;">
		     		 <form class="layui-form">
		     		 	<center>
		     		 		<h1 style="margin-top: 20px;color:white; margin-bottom: 30px;">欢迎登录</h1>
		     		 		<table style="text-align: center;font-family: cursive;font-size:20px;">
		     		 			<tr>
		     		 				<td style="color: white;height: 50px;">用户名：</td>
		     		 				<td colspan="2">
		     		 					<!-- <div class="layui-input-block" > -->
							      			<input style="width: 100%;" type="text" value="admin" name="lusername" lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
							    		<!-- </div> -->
							    	</td>
		     		 			</tr>
		     		 			<tr style="padding-top: 20px;">
		     		 				<td style="color: white;height:50px;">密码：</td>
		     		 				<td colspan="2">
		     		 					<!-- <div class="layui-input-block"> -->
							      			<input type="password" value="admin" name="lpassword" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
							    		<!-- </div> -->
							    	</td>
		     		 			</tr>
		     		 			<tr>
		     		 				<td style="color: white;height: 50px;">验证码：</td>
		     		 				<td>
		     		 					<input type="text" id="yyy" value="" name="lyzm" lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">
		     		 				</td>
		     		 				<td>
		     		 					<img id="img" alt="验证码失效" title="点击换一张" src="<%=path%>/login/getYzm.do" onclick="up()">
		     		 				</td>
		     		 			</tr>
		     		 			<tr>
		     		 				<td colspan="3">
		     		 					  <div class="layui-form-item">
										    <div class="layui-input-block" style="padding-top: 10px;">
										      <input type="button" class="layui-btn"  lay-submit lay-filter="formDemo" value="登录">
										      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
										    </div>
										  </div>
		     		 				</td>
		     		 			</tr>
		     		 		</table>
		     		 	</center>
		     		 </form>
		    	</div>
		  </div>
		</div>
	</div>
</body>
<script type="text/javascript">
	setyzm();  //刚进来的时候先获取session中的验证码，以便登录的时候做对比
	
	//前台展示的只是一张图片，这里将后台装入session的yzm获取方便登录的时候与前台输入的做比较
	function setyzm(){ 
		$.ajax({
			url:"<%=path%>/login/getSessionYzm.do",
			type:"post",
			dataType:"json",
			success:function(data){
				yzm = data.yzm;
				document.getElementById("yyy").value=yzm;
			}
		});
	}
	//这个方法是点击更新验证码或者当输入的验证码与session中的验证码不匹配时重新获取验证码
	function up(){
		var date = new Date();
		$("#img").attr("src","<%=path%>/login/getYzm.do?date="+date);
		setyzm();
	}
	
	
	layui.use(['carousel', 'form'], function(){
		  var carousel = layui.carousel;
		  var form = layui.form;
		  //常规轮播
		  carousel.render({
		    elem: '#test1'
		    ,width: '100%'
		    ,height: '100%'
		  });
		  
		//登录按钮提交表单中的信息
		 form.on("submit(formDemo)",function(data){
			  if(data.field.lyzm != yzm){
				  layer.alert("验证码输入有误!,"+data.field.lyzm+";"+yzm)
				  up();
			  }else{
				  $.ajax({
					  url:'<%=path%>/login/login.do',
					  type:'post',
					  data:{"lusername":data.field.lusername,"lpassword":data.field.lpassword},
				  	  dataType:'json',
				  	  success:function(data){
				  		  if(data.success){
				  			  layer.alert(data.msg);
				  			  location.href="<%=path%>/toIndex.do";
				  		  }else{
				  			  layer.alert(data.msg);
				  		  }
				  	  }
				  });
			 }
			  return false;
		});
		  
	});
	$(function(){
		　　if(window.history && window.history.pushState){
		　　		$(window).on("popstate", function(){
			　　		window.history.pushState("forward", null, "#");
			　　		window.history.forward(1);
		　　		});
		　　}
		　　window.history.pushState("forward", null, "#"); //在IE中必须得有这两行
		　　window.history.forward(1);
		});
</script>
</html>