package Models;
// Generated Jul 30, 2022 12:38:56 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 * Users generated by hbm2java
 */
public class Users  implements java.io.Serializable {


     private Integer id;
     private String fname;
     private String lname;
     private String address;
     private byte gender;
     private Date dob;
     private String nic;
     private String email;
     private String mobno;
     private String password;
     private byte roleId;
     private Date createdAt;
     private byte status;

    public Users() {
    }

    public Users(String fname, String lname, String address, byte gender, Date dob, String nic, String email, String mobno, String password, byte roleId, Date createdAt, byte status) {
       this.fname = fname;
       this.lname = lname;
       this.address = address;
       this.gender = gender;
       this.dob = dob;
       this.nic = nic;
       this.email = email;
       this.mobno = mobno;
       this.password = password;
       this.roleId = roleId;
       this.createdAt = createdAt;
       this.status = status;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getFname() {
        return this.fname;
    }
    
    public void setFname(String fname) {
        this.fname = fname;
    }
    public String getLname() {
        return this.lname;
    }
    
    public void setLname(String lname) {
        this.lname = lname;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    public byte getGender() {
        return this.gender;
    }
    
    public void setGender(byte gender) {
        this.gender = gender;
    }
    public Date getDob() {
        return this.dob;
    }
    
    public void setDob(Date dob) {
        this.dob = dob;
    }
    public String getNic() {
        return this.nic;
    }
    
    public void setNic(String nic) {
        this.nic = nic;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getMobno() {
        return this.mobno;
    }
    
    public void setMobno(String mobno) {
        this.mobno = mobno;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public byte getRoleId() {
        return this.roleId;
    }
    
    public void setRoleId(byte roleId) {
        this.roleId = roleId;
    }
    public Date getCreatedAt() {
        return this.createdAt;
    }
    
    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
    public byte getStatus() {
        return this.status;
    }
    
    public void setStatus(byte status) {
        this.status = status;
    }


    public static Users findByEmail (String email) {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(Users.class);
        cr.add(Restrictions.eq("email", email));
        List result = cr.list();
        
        Users user;
        if (!result.isEmpty()) {
            user = (Users) result.get(0);
        } else {
            user = null;
        }
        
        transaction.commit();
        session.close();
        
        return user;
    }
    
    public static Users find (int user_id) {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(Users.class);
        cr.add(Restrictions.eq("id", user_id));
        List result = cr.list();
        
        Users user;
        if (!result.isEmpty()) {
            user = (Users) result.get(0);
        } else {
            user = null;
        }
        
        transaction.commit();
        session.close();
        
        return user;
    }
    
    public static int update (Users user) {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        
        session.update(user);
        transaction.commit();
        session.close();
        
        return 1;
    }

}


