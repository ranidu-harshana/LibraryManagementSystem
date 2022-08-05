/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Helpers;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.http.Part;

/**
 *
 * @author ranid
 */
public class uploadFile {
    public static String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
    
    public static boolean upload (InputStream is, String fileName, Part filePart) throws IOException {
        OutputStream ous = null;
        boolean status = false;
        try {
            final String path = "E:\\WORKS\\Projects\\JSP\\LibraryManagementSystem\\web\\Admin\\book_img";
            ous = new FileOutputStream(new File(path + File.separator
                    + fileName));
            is = filePart.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[1024];

            while ((read = is.read(bytes)) != -1) {
                ous.write(bytes, 0, read);
            }
            System.out.println("uploaded");
            status = true;
        } catch (FileNotFoundException fne) {

            System.out.println("Problems during file upload");
        } finally {
            if (ous != null) {
                ous.close();
            }
            if (is != null) {
                is.close();
            }
            
        }
        return status;
    }
}
