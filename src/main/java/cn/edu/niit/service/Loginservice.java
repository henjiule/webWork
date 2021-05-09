package cn.edu.niit.service;

import cn.edu.niit.dao.LoginDao;
import cn.edu.niit.filter.User;

/**
 * @ClassName Loginservice
 * @Description TODO
 * @Author zhangcong
 * @Date 2021/5/2
 **/
public class Loginservice {


    private LoginDao loginDao = new LoginDao();

    public String login(String Username , String password) {
        User user = loginDao.selectOne(Username);
        if (user == null){
            return "用户不存在";
        }else {
            if (password.equals(user.getPassword())) {
                return "登入成功";
            }else {
                return "密码错误";
            }
        }


    }
}
