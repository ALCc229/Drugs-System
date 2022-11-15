<%--
  Created by IntelliJ IDEA.
  User: 23536
  Date: 2022/11/15
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加药品界面</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>添加药品</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/drug/addDrug" method="post">
        <div class="form-group">
            <label >药品名称：</label>
            <input type="text" name="DrugName" class="form-control" required>

        </div>
        <div class="form-group">
            <label >药品状态：</label>
            <input type="text" name="DrugState" class="form-control"  required>
        </div>
        <div class="form-group">
            <label >药品类别：</label>
            <input type="text" name="DrugClass" class="form-control"  required>
        </div>
        <div class="form-group">
            <label >药品描述：</label>
            <input type="text" name="DrugDetail" class="form-control"  required>
        </div>
        <div class="form-group">
            <label >药品单价：</label>
            <input type="text" name="DrugPrice" class="form-control"  required>
        </div>
        <div class="form-group">
            <label >药品数量：</label>
            <input type="text" name="DrugNum" class="form-control"  required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加" >
        </div>
    </form>

</div>

</body>
</html>
