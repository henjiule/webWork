<%@page language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>图书馆</title>
    <link rel="stylesheet" href="./layui/css/layui.css" media="all">
    <style>
        html, body {
            width: 100%;
            height: 100%;
        }

        .login {
            position: relative;
            width: 100%;
            height: 100%;
        }

        .login-layout {
            position: absolute;
            width: 500px;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            background: rgba(0, 150, 136, 0.1);
            padding: 100px 80px 80px 50px;
        }

        .logo {
            font-size: 30px;
            width: 100%;
            text-align: center;
            margin-bottom: 10px;
        }

    </style>
</head>
<body>


<div class="login">
    <div class="login-layout">
        <form class="layui-form" method="post"
              action="/login">
            <div class="layui-form-item">
                <label class="layui-form-label logo">
                    图书馆
                </label>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"
                       style="text-align: center">用户名
                </label>
                <div class="layui-input-block">
                    <input type="text" name="username"
                           placeholder="请输入"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="text-align:
                center">密码</label>
                <div class="layui-input-block">
                    <input type="password" name="password"
                           placeholder="请输入"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">管理员登录</label>
                    <%--					<div class="layui-input-block">--%>
                    <%--						<input id="admin" type="checkbox"--%>
                    <%--							   lay-skin="switch"--%>
                    <%--							   lay-filter="admin">--%>
                    <%--					</div>--%>
                    <div class="layui-input-block">
                        <input type="radio" name="role" value="0"
                               title="管理员">
                        <input type="radio" name="role" value="1"
                               title="用户" checked>
                    </div>
                </div>
                <div class="layui-input-block" style="float: right">
                    <button class="layui-btn" lay-submit
                            lay-filter="*">登录
                    </button>
                    <a href="./register.jsp"><span
                            class="layui-btn layui-btn-primary">注册</span></a>
                </div>
            </div>

        </form>
    </div>
</div>

<script src="/layui/layui.js"></script>
<script>
    layui.use('form', function () {
        var form = layui.form;


        //各种基于事件的操作，下面会有进一步介绍
    });
</script>
</body>
</html>