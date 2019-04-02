<%--
  Created by IntelliJ IDEA.
  User: lan
  Date: 2019/3/31
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Transaction records</title>
    <!--交易记录业务-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <style>

        table{
            margin-top: 2%;
            margin-left: 20%;
            margin-right: 10%;
        }
        .table-hover{
            width: 60%;
        }
        #operation{
            margin-top: 5%;
            margin-left: 70%;
            margin-right: 10%;
        }

        #delete{
            margin-left: 10%;
        }

        #previous{
            margin-right: 50%;
            margin-top: 2%;
        }

    </style>
    <script>
        $(function(){
            $("#all").click(function(){
                //判断当前全选按钮是否选中
                if($(this).is(":checked")){
                    $("input[name='choice']").prop("checked",true);

                }else{
                    $("input[name='choice']").prop("checked",false);
                }
            });
            //删除
            $("#delete").click(function(){
                //遍历选中的复选框
                $("input[name='choice']:checked").each(function(){
                    var n=$(this).parents("tr").index();
                    $("table").find("tr:eq("+n+")").remove();
                });
                $("#all").prop("checked",false);
            });
        })
    </script>
</head>
<body>
<div id="operation">

    <button class="btn btn-warning" id="delete" value="删除">删除</button>
</div>

<table class="table table-hover">
    <tr>
        <th>
            <input type="checkbox" value="全选" id="all" />全选
        </th>
        <th>操作</th>
        <th>交易时间</th>
    </tr>
    <tr>
        <td>
            <input type="checkbox" name="choice"/>
        </td>
        <td>存款100元</td>
        <td>2019-3-30 11:59</td>
    </tr>
    <tr>
        <td>
            <input type="checkbox" name="choice"/>
        </td>
        <td>取款100元</td>
        <td>2019-3-30 11:59</td>
    </tr>
    <tr>
        <td>
            <input type="checkbox" name="choice"/>
        </td>
        <td>向....转账100元</td>
        <td>2019-3-30 11:59</td>
    </tr>
    <tr>
        <td>
            <input type="checkbox" name="choice"/>
        </td>
        <td>向....转账100元</td>
        <td>2019-3-30 11:59</td>
    </tr>
    <tr>
        <td>
            <input type="checkbox" name="choice"/>
        </td>
        <td>向....转账100元</td>
        <td>2019-3-30 11:59</td>
    </tr>
    <tr>
        <td>
            <input type="checkbox" name="choice"/>
        </td>
        <td>向....转账100元</td>
        <td>2019-3-30 11:59</td>
    </tr>
    <tr>
        <td>
            <input type="checkbox" name="choice"/>
        </td>
        <td>向....转账100元</td>
        <td>2019-3-30 11:59</td>
    </tr>
    <tr>
        <td>
            <input type="checkbox" name="choice"/>
        </td>
        <td>向....转账100元</td>
        <td>2019-3-30 11:59</td>
    </tr>
    <tr>
        <td>
            <input type="checkbox" name="choice"/>
        </td>
        <td>向....转账100元</td>
        <td>2019-3-30 11:59</td>
    </tr>
    <tr>
        <td>
            <input type="checkbox" name="choice"/>
        </td>
        <td>向....转账100元</td>
        <td>2019-3-30 11:59</td>
    </tr>
</table>
<nav>
    <ul class="pager">
        <li><a href="#" id="previous">上一页</a></li>
        <li><a href="#">下一页</a></li>
    </ul>
</nav>
</body>
</html>
