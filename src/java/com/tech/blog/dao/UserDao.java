/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;
import com.tech.blog.entity.User;
import  java .sql.*;

public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    //methos to inster user data into databases
    public boolean saveUser(User user){
        boolean f=false;
        try {
            // user -> databases
            String quary="insert into user(name,email,password,sex)values(?,?,?,?)";
           PreparedStatement pst= this.con.prepareStatement(quary);
           pst.setString(1, user.getName());
           pst.setString(2, user.getEmail());
           pst.setString(3, user.getPassword());
           pst.setString(4, user.getSex());           
           
           pst.executeUpdate();
            f=true;
            
            System.out.println(f);
            System.out.println("error  :"+pst);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    // get useremail and password 
    public User getemailandpassword(String email, String password){
        User user=null;
        try {
            String query="select * from user where email=? and password=?";
            PreparedStatement pstmt= con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet rs=pstmt.executeQuery();
              
            if(rs.next()){
                user=new User();
                //get value from the databases and set into user entity
          user.setId(rs.getInt("id"));
          user.setName(rs.getString("name"));
          user.setEmail(rs.getString("email"));      
          user.setPassword(rs.getString("password"));      
          user.setSex(rs.getString("sex")); 
          user.setDatetime(rs.getTimestamp("rdate"));      
          user.setProfile(rs.getString("profile"));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return  user;
    } 
}