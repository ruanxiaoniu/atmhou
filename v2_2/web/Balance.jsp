<%--
  Created by IntelliJ IDEA.
  User: lan
  Date: 2019/3/29
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Balance</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/SetTime.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="CSS/balance.css" />
    <script>
        $(function(){
            settime();
            getMoney();
        });
        function getMoney() {
            $.ajax({
                url:"../show.do",
                type:"POST",
                contentType:"application/json;charset=UTF-8",
                data:JSON.stringify({"cardId":${sessionScope.card.cardId}}),
                success:function (data) {
                    $("#money").append(data);
                }
            })
        }
    </script>
</head>
<body>
<div class="form-control" id="operation">
    <label class="col-sm-8" id="car_num">
        卡号:${sessionScope.card.cardId}
    </label>
    <label id="car_name">持卡人:${sessionScope.account.phone}</label>
    <div class="form-horizontal">
        <div class="form-group col-sm-12">
            <div class="balance">你的余额为：</div>
        </div>
        <div class="form-group col-sm-12">
            <div class="balance" id="money">￥</div>
        </div>
        <div class="form-group">
					<span class="glyphicon glyphicon-arrow-left col-sm-3" id="return">
						返回
					</span>
            <span class="col-sm-9" id="time"></span>
        </div>
    </div>
</div>
</body>
</html>
