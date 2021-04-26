<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: zhangcong
  Date: 2021/4/26
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //从请求中获取用户输入的用户名和密码
    String username = request.getParameter("username");
    String passward = request.getParameter("passward");
    //加载驱动
    Class.forName("com.mysql.cj.jdbc.Driver");
    //获取连接
    try (Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3036/library?serverTimezone=UTC&characterEncoding=utf-8",
            "root", "root")) {
        //获得PreparedStatement
        String sql = "select * from borrow_card where username = ?";
        try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
            //替换占位符
            preparedStatement.setString(1, username);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    if (passward.equals(resultSet.getString("password"))) {
                        response.sendRedirect("./main.jsp");
                    } else {
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
                    }
                }

            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }


%>

</body>
</html>
