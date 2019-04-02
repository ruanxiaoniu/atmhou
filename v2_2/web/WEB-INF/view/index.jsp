<%--
  Created by IntelliJ IDEA.
  User: lan
  Date: 2019/3/29
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css"/>
    <style>
        div {
            float: left;
        }
        #div1 {
            background-color: steelblue;
            height: 80px;
            color: white;
            text-align: center;
        }
        #div2 {
            width: 100%;
            height: auto;
        }
        iframe {
            width: 100%;
            height: 800px;
            border: 0;
            frameborder: no;
            padding-left: 2%;
        }
        a:hover {
            cursor: pointer;
        }
        #left {
            background-color: rgba(0, 0, 0, 0.1);
            width: 10%;
        }
        #iframe{
            width: 80%;
        }
    </style>

    <script>
        $(function() {
            //设置div3高度为网页高度
            var h1 = $("#div1").height();
            var h2 = $("#div2").height()
            var h = $("body").height();
            var h3 = h - h1 - h2;
            $("#left").css('height', h);
            $("#iframe").css('height', h);

            //根据点击不同<a>标签在本页面嵌套其他页面
            $("a").each(function(index) {
                $(this).bind("click", function() {
                    var choice = $(this).html();
                    switch (choice) {
                        case "业务办理":
                            $("#iframe").html("<iframe src='../../Business.jsp'></iframe>");
                            break;
                        case "查看个人信息":
                            $("#iframe").html("<iframe src='Search_userInfo.jsp'></iframe>");
                            break;
                        /*case "银行卡挂失":
                       $("#iframe").html("<iframe src=''></iframe>");
                       break;
                    case "银行卡解冻":
                        $("#iframe").html("<iframe src=''></iframe>");
                        break;
                    case "存款":
                        $("#iframe").html("<iframe src=''></iframe>");
                        break;
                    case "取款":
                        $("#iframe").html("<iframe src=''></iframe>");
                        break;*/
                    }
                });
            })
        })
    </script>
</head>
<body>
<div id="div1" class="form-control">
    <h1>ATM网页系统</h1>
</div>

<div id="div2" class="form-control">
    <ul class="nav nav-pills">
        <li role="presentation" class="col-sm-8">
            <a href="../view/index.jsp">
                <span class="glyphicon glyphicon-home"></span>
                首页
            </a>
        </li>
        <li role="presentation">
            <a>业务办理</a>
        </li>
        <li role="presentation" class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                银行卡账号
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
                <li>
                    <a href="../../Binding_Card.html">绑定账号</a>
                </li>
                <li class="divider"></li>
                <li>
                    <a>注销卡号</a>
                </li>
            </ul>
        </li>
        <li role="presentation" class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                个人信息管理
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
                <li>
                    <a>查看个人信息</a>
                </li>
                <li class="divider"></li>
                <li>
                    <a>修改个人信息</a>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <span class="glyphicon glyphicon-list"></span>
            </a>
            <ul class="dropdown-menu">
                <li>
                    <a href="Login.html">切换账号</a>
                </li>
                <li class="divider"></li>
                <li>
                    <a>注销账号</a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="../../Upate_passwd.html?type=0">修改登录密码</a>
                    <a href="../../Upate_passwd.html?type=0">修改支付密码</a>
                </li>
            </ul>
        </li>
        <li role="presentation" id="exit">
            <a href="login.html">
                <span class="glyphicon glyphicon-off"></span>
                退出
            </a>
        </li>
    </ul>
</div>

<div id="left">

</div>
<div id="iframe" >

</div>
</body>
</html>
