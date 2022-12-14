package Models;
// Generated Jul 30, 2022 12:38:56 AM by Hibernate Tools 4.3.1


import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

/**
 * Books generated by hbm2java
 */
public class Books  implements java.io.Serializable {


     private Integer id;
     private String name;
     private String author;
     private String isbn;
     private String publisherName;
     private Date pubDate;
     private String imageFront;
     private String imageBack;
     private Integer availableQty;
     private Integer borrowQty;
     private Date createdAt;
     private byte status;

    public Books() {
    }

    public Books(String name, String author, String isbn, String publisherName, Date pubDate, String imageFront, String imageBack, Integer availableQty, Integer borrowQty, Date createdAt, byte status) {
       this.name = name;
       this.author = author;
       this.isbn = isbn;
       this.publisherName = publisherName;
       this.pubDate = pubDate;
       this.imageFront = imageFront;
       this.imageBack = imageBack;
       this.availableQty = availableQty;
       this.borrowQty = borrowQty;
       this.createdAt = createdAt;
       this.status = status;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getAuthor() {
        return this.author;
    }
    
    public void setAuthor(String author) {
        this.author = author;
    }
    public String getIsbn() {
        return this.isbn;
    }
    
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public String getPublisherName() {
        return this.publisherName;
    }
    
    public void setPublisherName(String publisherName) {
        this.publisherName = publisherName;
    }
    public Date getPubDate() {
        return this.pubDate;
    }
    
    public void setPubDate(Date pubDate) {
        this.pubDate = pubDate;
    }

    public String getImageFront() {
        return imageFront;
    }

    public void setImageFront(String imageFront) {
        this.imageFront = imageFront;
    }

    public String getImageBack() {
        return imageBack;
    }

    public void setImageBack(String imageBack) {
        this.imageBack = imageBack;
    }

    public Integer getAvailableQty() {
        return availableQty;
    }

    public void setAvailableQty(Integer availableQty) {
        this.availableQty = availableQty;
    }

    public Integer getBorrowQty() {
        return borrowQty;
    }

    public void setBorrowQty(Integer borrowQty) {
        this.borrowQty = borrowQty;
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


    public static Serializable save(Books book){  
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Serializable status;
        try {
            status = session.save(book);
            transaction.commit();
            session.close();
        } catch (Exception e) {
            status = null;
        }
        return status;
    }
    
    public static List<Books> view_all () {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(Books.class);
        
        List<Books> books = cr.list();
        
        transaction.commit();
        session.close();
        
        return books;
    }
    
    public static Books find (int book_id) {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(Books.class);
        cr.add(Restrictions.eq("id", book_id));
        List result = cr.list();
        
        Books book;
        if (!result.isEmpty()) {
            book = (Books) result.get(0);
        } else {
            book = null;
        }
        
        transaction.commit();
        session.close();
        
        return book;
    }
    
    public static int update (Books book) {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        
        session.update(book);
        transaction.commit();
        session.close();
        
        return 1;
    }
    
    public static long count () {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(Books.class);
        
        cr.setProjection(Projections.rowCount());
        List rowCount = cr.list();
        
        long count = (long) rowCount.get(0);
        System.out.println(count);
        transaction.commit();
        session.close();
        
        return count;
    }

}


