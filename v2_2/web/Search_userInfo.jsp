<%--
  Created by IntelliJ IDEA.
  User: lan
  Date: 2019/3/31
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search user information</title>
    <!--查看个人信息业务-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <style>
        form{
            margin-left: 30%;
            margin-top: 10%;
            width: 60%;
        }
        label{
            font-weight: bold;
            font-size: 18px;
        }
        legend{
            color: skyblue;
        }
    </style>
</head>
<body>
<form class="form-horizontal">
    <legend>账户信息</legend>
    <div class="form-group">
        <label class="col-sm-2">账号名</label>
        <div class="col-sm-4">
            <input type="text" class="form-control col-sm-4" name="account" id="account"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2">身份证号</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="Idcard" id="Idcard"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2">姓名</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="username" id="username"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2">手机号</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="phone" name="phone"/>
        </div>
    </div>

    <!--是否返回银行卡当前状态，冻结，挂失？？？-->

    <div class="form-group">
        <label class="col-sm-2">绑定卡号</label>
        <div class="col-sm-4">
            <select class="form-control" name="cardId" id="cardId">

            </select>
        </div>
    </div>
</form>
</body>
</html>
