/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import static Helpers.passwordHash.encrypt;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ranid
 */
public class User {
    private int id;
    private String fname;
    private String lname;
    private String address;
    private int gender;
    private String dob;
    private String nic;
    private String email;
    private String mobno;
    private String password;
    private int role_id;

    public User() {
        
    }

    public User(int id, String fname, String lname, String address, int gender, String dob, String nic, String email, String mobno, String password, int role_id) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.address = address;
        this.gender = gender;
        this.dob = dob;
        this.nic = nic;
        this.email = email;
        this.mobno = mobno;
        this.password = password;
        this.role_id = role_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobno() {
        return mobno;
    }

    public void setMobno(String mobno) {
        this.mobno = mobno;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }
    
    public static User findById (int id) {
        User user = new User();
        try {
            DBConnection c = new DBConnection();
            Connection con = c.dbConnection();
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM users WHERE id=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                user.setId(Integer.parseInt(rs.getString("id")));
                user.setFname(rs.getString("fname"));
                user.setLname(rs.getString("lname"));
                user.setAddress(rs.getString("address"));
                user.setGender(Integer.parseInt(rs.getString("gender")));
                user.setDob(rs.getString("dob"));
                user.setNic(rs.getString("nic"));
                user.setEmail(rs.getString("email"));
                user.setMobno(rs.getString("mobno"));
                user.setPassword(rs.getString("password"));
                user.setRole_id(Integer.parseInt(rs.getString("role_id")));
            }
        } catch (Exception e) {
        }
        
        return user;
    }
    
    public static User findByEmail (String email) {
        User user = new User();
        
        try {
            DBConnection c = new DBConnection();
            Connection con = c.dbConnection();
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM users WHERE email=?");
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                user.setId(Integer.parseInt(rs.getString("id")));
                user.setFname(rs.getString("fname"));
                user.setLname(rs.getString("lname"));
                user.setAddress(rs.getString("address"));
                user.setGender(Integer.parseInt(rs.getString("gender")));
                user.setDob(rs.getString("dob"));
                user.setNic(rs.getString("nic"));
                user.setEmail(rs.getString("email"));
                user.setMobno(rs.getString("mobno"));
                user.setPassword(rs.getString("password"));
                user.setRole_id(Integer.parseInt(rs.getString("role_id")));
            }
        } catch (Exception e) {
        }
        
        return user;
    }
    
    public static int save (User user) {
        int status = 0;
        
        try{  
            DBConnection c = new DBConnection();
            Connection con = c.dbConnection();
            PreparedStatement stmt = con.prepareStatement("INSERT INTO users (fname, lname, address, gender, dob, nic, email, mobno, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");  
            stmt.setString(1, user.getFname());
            stmt.setString(2, user.getLname());
            stmt.setString(3, user.getAddress());
            stmt.setInt(4, user.getGender());
            stmt.setString(5, user.getDob());
            stmt.setString(6, user.getNic());
            stmt.setString(7, user.getEmail());
            stmt.setString(8, user.getMobno());
            stmt.setString(9, encrypt("abcd12ABCD"));
            
            status = stmt.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
        
        return status;
    }
    
    public static int count () {
        int count = 0;
        try {
            DBConnection c = new DBConnection();
            Connection con = c.dbConnection();
            PreparedStatement stmt = con.prepareStatement("SELECT COUNT(*) AS count FROM users WHERE role_id = 2");
            
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                count = Integer.parseInt(rs.getString("count"));
            }
        } catch (Exception e) {
        }
        return count;
    }
    
    public static List<User> view_all () {
        List<User> users = new ArrayList<User>();
        try{  
            DBConnection c = new DBConnection();
            Connection con = c.dbConnection();
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM users WHERE role_id=2");  
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(Integer.parseInt(rs.getString("id")));
                user.setFname(rs.getString("fname"));
                user.setLname(rs.getString("lname"));
                user.setAddress(rs.getString("address"));
                user.setGender(Integer.parseInt(rs.getString("gender")));
                user.setDob(rs.getString("dob"));
                user.setNic(rs.getString("nic"));
                user.setEmail(rs.getString("email"));
                user.setMobno(rs.getString("mobno"));
                user.setPassword(rs.getString("password"));
                user.setRole_id(Integer.parseInt(rs.getString("role_id")));
                
                users.add(user);
            }
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();} 
        
        return users;
    }
}
