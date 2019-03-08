<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String path = request.getContextPath(); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<%=path %>/js/layui-v2.4.5/layui/css/layui.css">
	<link rel="stylesheet" href="<%=path %>/js/bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="<%=path %>/js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/layui-v2.4.5/layui/layui.js"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap/js/bootstrap.min.js"></script>
<title>首页</title>
</head>
<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
		  <div class="layui-header">
		    <div class="layui-logo">智游众筹 后台系统管理</div>
		    <!-- 头部区域（可配合layui已有的水平导航） -->
		   <!--  <ul class="layui-nav layui-layout-left">
		      <li class="layui-nav-item"><a href="">控制台</a></li>
		      <li class="layui-nav-item"><a href="">商品管理</a></li>
		      <li class="layui-nav-item"><a href="">用户</a></li>
		      <li class="layui-nav-item">
		        <a href="javascript:;">其它系统</a>
		        <dl class="layui-nav-child">
		          <dd><a href="">邮件管理</a></dd>
		          <dd><a href="">消息管理</a></dd>
		          <dd><a href="">授权管理</a></dd>
		        </dl>
		      </li>
		    </ul> -->
		    <ul class="layui-nav layui-layout-right"> 
		      <li class="layui-nav-item">
		        <a href="javascript:;">
		          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
		          <span>用户名:${user.lusername}</span>
		        </a>
		        <dl class="layui-nav-child">
		          <dd><a href="">基本资料</a></dd>
		          <dd><a href="">安全设置</a></dd>
		        </dl>
		      </li>
		      <li class="layui-nav-item">
		      	<a  href="javascript:;" onclick="logout()">安全退出</a>
		      </li>
		    </ul>
		  </div>
		  
		  
		  <div class="layui-side layui-bg-black">
		    <div class="layui-side-scroll">
		      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
		      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
		        <li class="layui-nav-item layui-nav-itemed">
		          <a class="" href="javascript:;">项目管理</a>
		          <dl class="layui-nav-child">
		            <dd><a  href="#" class="menu" url="<%=path%>/toProject.do" title="所有项目">所有项目</a></dd>
		            <dd><a href="#">项目审核</a></dd>
		            <dd><a href="#">项目跟踪</a></dd>
		            <dd><a href="#">项目评论</a></dd>
		            <dd><a href="#">项目分类</a></dd>
		            <dd><a href="#">项目推荐</a></dd>
		          </dl>
		        </li>
		        <li class="layui-nav-item">
		          <a href="javascript:;">注册用户管理</a>
		          <dl class="layui-nav-child">
		            <dd><a href="javascript:;">注册用户</a></dd>
		            <dd><a href="javascript:;">用户日志</a></dd>
		            <dd><a href="javascript:;">实名审核</a></dd>
		          </dl>
		        </li>
		        <li class="layui-nav-item">
		        	<a href="javascript:;">系统管理</a>
		        	<dl class="layui-nav-child">
		            <dd><a href="javascript:;">新闻管理</a></dd>
		            <dd><a href="javascript:;">问题管理</a></dd>
		            <dd><a href="javascript:;">管理用户</a></dd>
		            <dd><a href="javascript:;">管理日志</a></dd>
		          </dl>
		        </li>
		      </ul>
		    </div>
		  </div>
			     
		  
		  <div class="layui-body" style="height: 100%;">
		    <!-- 内容主体区域 -->
		    <div style="height: 100%;margin: 0;" class="layui-tab layui-tab-brief" lay-filter="demo" lay-allowclose="true">
			  <ul class="layui-tab-title">
			    <li class="layui-this" lay-id="11">今日众筹</li>
			  </ul>
			  <div class="layui-tab-content">
				    <div class="layui-tab-item layui-show">
				    	<div class="jumbotron" style="margin: 10px;padding: 20px;">
						  <p style="font-size: 22px;">今日新增众筹资金:<font color="blue">454646￥</font></p>
						  <p style="font-size: 14px;">昨日总众筹总资金:<font color="red">152488￥</font></p>
						  <p style="font-size: 22px;">今日新增众筹项:<font color="blue">10</font></p>
						  <p style="font-size: 14px;">昨日新增众筹项目:<font color="red">15584528￥</font></p>
						  <p><a class="btn btn-primary btn-lg" href="#" role="button">查看详情</a></p>
						</div>
						<div  style="margin: 20px;">
							<p style="font-size: 22px;"><u>实时数据</u><font size="2">(每5s自动刷新一次)</font></p>
							<table class="table table-striped">
								<tr>
									<th>时间</th>
									<th>类型</th>
									<th>记录</th>
									<th>操作</th>
								</tr>
								<tr>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td style="color: blue;">查看项目</td>
								</tr>
								<tr>
									<td>2</td>
									<td>2</td>
									<td>2</td>
									<td style="color: blue;">查看项目</td>
								</tr>
								<tr>
									<td>3</td>
									<td>3</td>
									<td>3</td>
									<td style="color: blue;">查看项目</td>
								</tr>
								<tr>
									<td>4</td>
									<td>4</td>
									<td>4</td>
									<td style="color: blue;">查看项目</td>
								</tr>
								<tr>
									<td>5</td>
									<td>5</td>
									<td>5</td>
									<td style="color: blue;">查看项目</td>
								</tr>
							</table>
						</div>
				    </div>
			  </div>
			</div>
		  </div>
		  
		  <div class="layui-footer" style="text-align: center;color:red; font-family: monospace;">
		    <!-- 底部固定区域 -->
		    版权所有，违者必究
		  </div>
		</div>
<script type="text/javascript">
	//JavaScript代码区域
	layui.use('element', function(){
	  var element = layui.element;
	  var active = {
	  		tabAdd:function(url,id,name){
	  			element.tabAdd('demo',{
	  				title:name,
	  				id:id,
	  				content:'<iframe data-frameid="' + id + '" src="' + url + '" frameborder="0" width="100%" height="560px" scrolling="auto"></iframe>'
	  			});	
	  		},
	  		tabChange:function(id){
	  			element.tabChange('demo', id);
	  		},
	  		tabDelete: function (id) {
                element.tabDelete("demo", id);
            }
	  };
	  $(".menu").on("click",function(){
	    	var url = $(this).attr("url");
	    	var title = $(this).attr("title");
	    	//判断标签页是否已经打开
	    	if($(".layui-tab-title [lay-id='"+title+"']").length>0){
	    		active.tabChange(title);
	    	}else{
	    		active.tabAdd(url,title,title);
		    	active.tabChange(title);
	    	}
	    	
	    });
	});
	
	//退出系统的方法
	function logout(){
		location.href="<%=path%>/logout.do";
	}
</script>
</body>
</html>