<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <title>项目详情</title>
    <style type="text/css">
        td{border: 1px solid #00F7DE;}
    </style>
</head>
<body>
    <table style="text-align: center;margin: 20px;border: 1px solid #00F7DE;">
        <tr>
            <td width="150px">项目编号</td>
            <td width="100px">${project.ps_id}</td>
            <td width="150px">用户ID</td>
            <td width="100px"></td>
        </tr>
        <tr>
            <td>客服姓名</td>
            <td>${project.ps_id}</td>
            <td>客服电话</td>
            <td>${project.ps_id}</td>
        </tr>
        <tr>
            <td>客服地址</td>
            <td>${project.ps_id}</td>
            <td>项目类型ID</td>
            <td>${project.ps_id}</td>
        </tr>
        <tr>
            <td>文件名称</td>
            <td>${project.ps_id}</td>
            <td>项目标题</td>
            <td>${project.ps_id}</td>
        </tr>
        <tr>
            <td>筹款目的</td>
            <td>${project.ps_id}</td>
            <td>项目地址</td>
            <td>${project.ps_id}</td>
        </tr>
        <tr>
            <td>筹资金额</td>
            <td>${project.ps_id}</td>
            <td>筹资天数</td>
            <td>${project.ps_id}</td>
        </tr>
        <tr>
            <td>宣传视频地址</td>
            <td>${project.ps_id}</td>
            <td>项目故事</td>
            <td>${project.ps_id}</td>
        </tr>
        <tr>
            <td>更多支持</td>
            <td>${project.ps_id}</td>
            <td>提供回报简述</td>
            <td>${project.ps_id}</td>
        </tr>
        <tr>
            <td>关于自己</td>
            <td>${project.ps_id}</td>
            <td>项目状态</td>
            <td>${project.ps_id}</td>
        </tr>
        <tr>
            <td>项目开始的时间</td>
            <td>${project.ps_id}</td>
            <td>项目结束的时间</td>
            <td>${project.ps_id}</td>
        </tr>
        <tr>
            <td>项目已筹资金额</td>
            <td>${project.ps_id}</td>
            <td>项目支持人数</td>
            <td>${project.ps_id}</td>
        </tr>
    </table>
</body>
</html>
