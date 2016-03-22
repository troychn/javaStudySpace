package com.troylc.java.generic.exer;

import java.util.HashMap;

/**
 * Created by Administrator on 2015/3/5.
 */
public class TestDAO {
    public static void main(String[] args) {
        DAO<User> dao = new DAO<User>();
        dao.map = new HashMap<String, User>();

        dao.save("1001",new User(1,32,"dddd"));
        dao.save("1002",new User(1,32,"deeed"));
        dao.save("1003",new User(1,32,"99dd"));

        User u = dao.get("1002");
        System.out.println(u);
    }
}
