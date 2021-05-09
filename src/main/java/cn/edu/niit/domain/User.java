package cn.edu.niit.domain;

/**
 * @ClassName User
 * @Description TODO
 * @Author zhangcong
 * @Date 2021/5/2
 **/
public class User {
    private String username;
    private String password;
    private String reader;

    public User() {
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getReader() {
        return reader;
    }

    public User(String username , String password, String reader) {
        this.username = username;
        this.password = password;
        this.reader = reader;


    }
}

