<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 23536
  Date: 2022/11/15
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>药品信息界面</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>药品列表——————显示所有药品</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <%--toAddBook--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/drug/toAddDrug">新增药品</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/drug/allDrug">显示全部药品</a>
            </div>


            <div class="col-md-8 column">
                <%--查询书籍--%>
                <form class="form-inline" action="${pageContext.request.contextPath}/drug" method="post" style="float: right">
                    <span style="color:red;font-weight: bold" >${error}</span>
                    <input type="text" name="queryBookName" class="form-control" placeholder="请输入要查询的药品名称">
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-honer table-striped">
                <thead>
                <tr>
                    <th>药品编号</th>
                    <th>药品名称</th>
                    <th>药品状态</th>
                    <th>药品类别</th>
                    <th>药品描述</th>
                    <th>药品单价</th>
                    <th>药品数量</th>
                    <th>操作</th>
                </tr>
                </thead>
                <%--书籍从数据库中查询出来，从controller的list遍历出来：foreach--%>
                <tbody>
                <c:forEach var="drug" items="${list}">
                    <tr>
                        <td>${drug.drugId}</td>
                        <td>${drug.drugName}</td>
                        <td>${drug.drugState}</td>
                        <td>${drug.drugClass}</td>
                        <td>${drug.drugDetail}</td>
                        <td>${drug.drugPrice}</td>
                        <td>${drug.drugNum}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/drug/toUpdate?id=${drug.drugId}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/drug/deleteBook/${drug.drugId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
