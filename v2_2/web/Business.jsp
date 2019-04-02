<%--
  Created by IntelliJ IDEA.
  User: lan
  Date: 2019/3/29
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Business</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="CSS/business.css"/>

</head>
<body>
<div class="form-control" id="operation">
    <label class="col-sm-8" id="car_num">卡号:${sessionScope.card.cardId}</label>
    <label id="car_name">持卡人:${sessionScope.account.phone}</label>
    <div class="form-group" id="choice">
        <span id="node">请选择业务操作</span>
    </div>
    <form id="right" class="form-horizontal">
        <div class="form-group">
            <div class="col-sm-6">
                <button class="col-sm-6" value="余额">
							<span class="glyphicon glyphicon-triangle-left">
								<a href="Balance.jsp">余额</a>
							</span>
                </button>
            </div>
            <div class="col-sm-6">
                <button class="col-sm-6" value="取款">
							<span class="glyphicon glyphicon-triangle-left">
								<a href="GetMoney.jsp">取款</a>
							</span>
                </button>
            </div>
        </div>

        <div class="form-group ">
            <div class="col-sm-6">
                <button class="col-sm-6" value="存款">
							<span class="glyphicon glyphicon-triangle-left">
								<a href="SaveMoney.jsp">存款</a>
							</span>
                </button>
            </div>

            <div class="col-sm-6">
                <button class="col-sm-6" value="挂失">
							<span class="glyphicon glyphicon-triangle-left">
								<a>挂失</a>
							</span>
                </button>
            </div>
        </div>

        <div class="form-group ">
            <div class="col-sm-6">
                <button class="col-sm-6" value="解冻">
							<span class="glyphicon glyphicon-triangle-left">
								<a>解冻</a>
							</span>

                </button>
            </div>
            <div class="col-sm-6">
                <button class="col-sm-6" value="交易记录">
							<span class="glyphicon glyphicon-triangle-left">
								<a href="Transcation_record.jsp">交易记录</a>
							</span>
                </button>
            </div>
        </div>

        <div class="form-group ">
            <div class="col-sm-6">
                <button class="col-sm-6" value="转账">
							<span class="glyphicon glyphicon-triangle-left">
								<a href="Transfer.jsp">转账</a>
							</span>

                </button>
            </div>
            <div class="col-sm-6">
                <button class="col-sm-6" value="交易记录">
							<span class="glyphicon glyphicon-triangle-left">
								<a id="exit">退出</a>
							</span>
                </button>
            </div>
        </div>
    </form>
</div>
</body>
</body>
</html>
