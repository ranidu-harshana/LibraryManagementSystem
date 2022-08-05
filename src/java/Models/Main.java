/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.List;

/**
 *
 * @author ranid
 */
public class Main {
    public static void main(String[] args) {
        List books_users = BookUsers.admin_issued_books();
        List<Books> books = (List<Books>) books_users.get(0);
        List<Users> users = (List<Users>) books_users.get(1);
        
        
    }
}
