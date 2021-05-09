package cn.edu.niit.servlet;

import cn.edu.niit.service.Loginservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @ClassName LoginServlet
 * @Description TODO
 * @Author zhangcong
 * @Date 2021/5/7
 **/
@WebServlet(name = "LoginServlet",urlPatterns = "/login")
public class LoginServlet   extends HttpServlet {


    private Loginservice LoginService;

    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        String resulet = LoginService.login(username,password);

        if ("登录成功".equals(resulet)){
            resp.sendRedirect("./main.jsp");
        } else {
            resp.getWriter().println("<script>alert('" + resulet +
                    "') " +
                    "</script + " +
                    ">" );
        }

    }
}
