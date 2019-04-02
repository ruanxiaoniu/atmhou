<%--
  Created by IntelliJ IDEA.
  User: lan
  Date: 2019/3/29
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get Money</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/SetTime.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <style>
        #operation {
            border: 10px solid ghostwhite;
            position: absolute;
            width: 50%;
            top: 10%;
            height: auto;
            margin-left: 25%;
            border-style: groove;
            /*padding-bottom: 15%;*/
        }
        .form-horizontal {
            margin-top: 15%;
        }
        #title{
            font-weight: bold;
            font-size: 18px;
        }
        .col-sm-12 {
            text-align: center;
        }
        input{
            margin-left: 180%;
        }
        .col-sm-9{
            text-align: right;
        }
        #bottom{
            margin-top: 12%;
            margin-bottom: 8%;
        }
        #return{
            cursor: pointer;
        }
    </style>
    <script>
        $(function(){
            settime();
            $("#get").click(function () {
                //验证取款金额是否合理
                var num=parseInt($("#subtract").val().trim());
                if (num>5000){
                    $("#alert").append("取款金额不可大于5000元")
                }else {
                    setMoney();
                }
            });
        });
        function setMoney() {
            $.ajax({
                url:"../update.do",
                type:"POST",
                contentType:"application/json;charset=UTF-8",
                data:JSON.stringify({"a":{"cardId":${sessionScope.card.cardId}},"to":{"type":1,"change":$('#subtract').val().trim()},"b":{}}),
                success:function (data) {
                    $("#subtract").val("");
                    alert(data+"取款成功！");
                }
            }) ;
                
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
            <div class="col-sm-12" id="title">请输入金额</div>
        </div>
        <div class="form-group">
            <div class="col-sm-3">
                <input class="form-control " type="text" id="subtract"/>
            </div>

        </div>
        <div class="form-group col-sm-12">
            <span id="alert" style="color: red"></span>
        </div>
        <div class="form-group col-sm-12">
            <button value="确认" class="btn btn-default" id="get">确认</button>
        </div>
        <div class="form-group col-sm-12" id="bottom">
					<span class="glyphicon glyphicon-arrow-left col-sm-3" id="return">
						返回
					</span>
            <span class="col-sm-9" id="time"></span>
        </div>
    </div>
</div>
</body>
</html>
