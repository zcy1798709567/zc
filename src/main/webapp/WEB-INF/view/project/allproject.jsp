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
<title>所有项目</title>
</head>
<body>
	<div style="border: 1px solid #EBEBEB;">
		<form class="layui-form" >
			<div class="layui-form-item" style="padding: 5px;margin: 0;">
				<div class="layui-inline" style="margin: 0;">
					<input type="text" name="title" lay-verify="title" placeholder="项目名称" class="layui-input">
				</div>
				<div class="layui-inline" style="margin: 0;">
					<input type="text" name="title" lay-verify="title" placeholder="项目发起人" class="layui-input">
				</div>
				<div class="layui-inline" style="margin: 0;">
					<select>
						<option value="">项目状态</option>
						<option>2</option>
						<option>3</option>
					</select>
				</div>
				<div class="layui-inline" style="margin: 0;">
					<select>
						<option value="">项目类型</option>
						<option>2</option>
						<option>3</option>
					</select>
				</div>
			    <div class="layui-inline" style="padding-top: 5px;">
			      <button class="layui-btn" lay-submit lay-filter="formDemo">查询</button>
			    </div>
			</div>
		</form>
	</div>
	<div style="background-color: #EBEBEB;font-size: 16px;margin-top: 15px;padding: 10px;">所有项目列表</div>
	<div style="border: 1px solid #EBEBEB;padding: 10px;">
		<table lay-filter="test" id="projectData"></table>
	</div>
</body>
<script type="text/javascript">
	layui.use(['form','table'], function(){
	  var form = layui.form;
	  var table = layui.table;

	  //监听提交
		table.render({
			elem: '#projectData'
			,height: 401
			,url: '<%=path%>/projectMasage/getproject.do' //数据接口
			,page: true //开启分页
			,cols: [[ //表头
				{field:'ps_id',  title: '项目ID', sort: true,align: 'center'},
				{field:'ps_name',title: '项目名称',sort: true},
				{field:'ps_goal',title: '筹款目的'},
				{field:'ps_money',title: '筹集金额'},
				{field:'ps_address',title:'项目地址'},
				{field:'ps_days',title:'筹资天数'},
				{field:'ps_starttime',title: '项目开始时间'},
				{field:'ps_endtime',title:'项目结束时间'},
				{field:'ps_getmoney',title:'项目已筹资金额'},
				{fixed:'right',title: '详情',align: 'center',toolbar:'#toolbarDemo' }
			]]
		});
		table.on('tool(test)', function(obj){
			var data = obj.data; //获得当前行数据
			var ps_id = data.ps_id;
			/*$.ajax({
				url:'/projectMasage/getProjectById.do',
				type:'post',
				data:{"ps_id":ps_id},
				dataType:'json',
				success:function(data){
					if(data.success){*/
						layer.open({
							title:'详情'
							,type:2
							,area:['800px','500px']
							,content:'<%=path%>/projectMasage/getProjectById.do?ps_id='+ps_id
						});
					/*}else{
						layer.alert("警告","系统异常！");
					}

				}
			});*/
		});

	  form.on('submit(formDemo)', function(data){
	    layer.msg(JSON.stringify(data.field),{
			title: '最终的提交信息'
		});
	  table.reload('projectData',{
		  where:data.field,
		  page:{
			  curr:1
		  }
	  });
	    return false;
	  });
	});
</script>
<script type="text/html" id="toolbarDemo">
	<a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
</script>
</html>