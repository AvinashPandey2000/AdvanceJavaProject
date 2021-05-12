/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.helper;

import java.sql.*;

public class Connectionprovider {

    private static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null) {

//          driver load 
                Class.forName("com.mysql.jdbc.Driver");
//        creat connection
                con = DriverManager.
                        getConnection("jdbc:mysql://localhost:3306/tecblog", "root", "20pandey");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

}
