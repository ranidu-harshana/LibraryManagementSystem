package Models;
// Generated Jul 30, 2022 12:38:56 AM by Hibernate Tools 4.3.1


import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

/**
 * BookUsers generated by hbm2java
 */
public class BookUsers  implements java.io.Serializable {


     private Integer id;
     private int bookId;
     private int userId;
     private Date returnedDate;
     private Date createdAt;
     private byte status;
     
    public BookUsers() {
    }

    public BookUsers(int bookId, int userId, byte status, Date returnedDate, Date createdAt) {
       this.bookId = bookId;
       this.userId = userId;
       this.returnedDate = returnedDate;
       this.createdAt = createdAt;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public int getBookId() {
        return this.bookId;
    }
    
    public void setBookId(int bookId) {
        this.bookId = bookId;
    }
    public int getUserId() {
        return this.userId;
    }
    
    public void setUserId(int userId) {
        this.userId = userId;
    }
    
    public byte getStatus() {
        return this.status;
    }

    public void setStatus(byte status) {
        this.status = status;
    }

    public Date getReturnedDate() {
        return returnedDate;
    }

    public void setReturnedDate(Date returnedDate) {
        this.returnedDate = returnedDate;
    }
    
    public Date getCreatedAt() {
        return this.createdAt;
    }
    
    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }


    public static Serializable save(BookUsers book_user){  
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Serializable status;
        try {
            status = session.save(book_user);
            transaction.commit();
            session.close();
        } catch (Exception e) {
            status = null;
        }
        return status;
    }

    public static List<Books> all_borrowed_books (int user_id) {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(BookUsers.class);
        cr.add(Restrictions.eq("userId", user_id));
        cr.add(Restrictions.eq("status", (byte)1));
        
        List<BookUsers> book_users = cr.list();
        List<Books> books = new ArrayList<Books>();
        
        for (BookUsers book_user : book_users) {
            Criteria cr2 = session.createCriteria(Books.class);
            cr2.add(Restrictions.eq("id", book_user.getBookId()));
            List result = cr2.list();
            books.add((Books) result.get(0));
        }
        
        transaction.commit();
        session.close();
        
        return books;
    }

    public static List admin_issued_books () {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(BookUsers.class);
        cr.add(Restrictions.eq("status", (byte)1));
        
        List<BookUsers> book_users = cr.list();
        List<Books> books = new ArrayList<Books>();
        List<Users> users = new ArrayList<Users>();
        
        for (BookUsers book_user : book_users) {
            Criteria bookCriteria = session.createCriteria(Books.class);
            bookCriteria.add(Restrictions.eq("id", book_user.getBookId()));
            List book_result = bookCriteria.list();
            books.add((Books) book_result.get(0));
            
            Criteria userCriteria = session.createCriteria(Users.class);
            userCriteria.add(Restrictions.eq("id", book_user.getUserId()));
            List user_result = userCriteria.list();
            users.add((Users) user_result.get(0));
        }
        
        transaction.commit();
        session.close();
        
        List books_users = new ArrayList();
        books_users.add(books);
        books_users.add(users);
        
        return books_users;
    }
    
    public static List<Books> all_books (int user_id) {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(BookUsers.class);
        cr.add(Restrictions.eq("userId", user_id));
        cr.add(Restrictions.eq("status", (byte)0));
        
        List<BookUsers> book_users = cr.list();
        List<Books> books = new ArrayList<Books>();
        
        for (BookUsers book_user : book_users) {
            Criteria cr2 = session.createCriteria(Books.class);
            cr2.add(Restrictions.eq("id", book_user.getBookId()));
            List result = cr2.list();
            books.add((Books) result.get(0));
        }
        
        transaction.commit();
        session.close();
        
        return books;
    }
    
    public static BookUsers get_book_users_details_issue (int user_id, int book_id){
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(BookUsers.class);
        
        cr.add(Restrictions.eq("userId", user_id));
        cr.add(Restrictions.eq("bookId", book_id));
        cr.add(Restrictions.eq("status", (byte)1));
        List result = cr.list();
        
        return (BookUsers) result.get(0);
    }
    
    public static BookUsers get_book_users_details_history (int user_id, int book_id){
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(BookUsers.class);
        
        cr.add(Restrictions.eq("userId", user_id));
        cr.add(Restrictions.eq("bookId", book_id));
        cr.add(Restrictions.eq("status", (byte)0));
        List result = cr.list();
        
        return (BookUsers) result.get(0);
    }
    
    
    public static List admin_books_history () {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(BookUsers.class);
        cr.add(Restrictions.eq("status", (byte)0));
        
        List<BookUsers> book_users = cr.list();
        List<Books> books = new ArrayList<Books>();
        List<Users> users = new ArrayList<Users>();
        
        for (BookUsers book_user : book_users) {
            Criteria bookCriteria = session.createCriteria(Books.class);
            bookCriteria.add(Restrictions.eq("id", book_user.getBookId()));
            List book_result = bookCriteria.list();
            books.add((Books) book_result.get(0));
            
            Criteria userCriteria = session.createCriteria(Users.class);
            userCriteria.add(Restrictions.eq("id", book_user.getUserId()));
            List user_result = userCriteria.list();
            users.add((Users) user_result.get(0));
        }
        
        transaction.commit();
        session.close();
        
        List books_users = new ArrayList();
        books_users.add(books);
        books_users.add(users);
        
        return books_users;
    }
    
    public static long issued_book_count () {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(BookUsers.class);
        cr.add(Restrictions.eq("status", (byte)1));
        
        cr.setProjection(Projections.rowCount());
        List rowCount = cr.list();
        
        long count = (long) rowCount.get(0);
        System.out.println(count);
        transaction.commit();
        session.close();
        
        return count;
    }
    
    public static BookUsers find (int bookuser_id) {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Criteria cr = session.createCriteria(BookUsers.class);
        cr.add(Restrictions.eq("id", bookuser_id));
        List result = cr.list();
        
        BookUsers book_user;
        if (!result.isEmpty()) {
            book_user = (BookUsers) result.get(0);
        } else {
            book_user = null;
        }
        
        transaction.commit();
        session.close();
        
        return book_user;
    }
    
    public static int update (BookUsers book_user) {
        Session session = util.HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        
        session.update(book_user);
        transaction.commit();
        session.close();
        
        return 1;
    }
}


