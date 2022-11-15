/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Adminstrator
 */
@MultipartConfig(
 fileSizeThreshold = 1024 * 1024 * 10,
 maxFileSize = 1024 * 1024 * 50,
 maxRequestSize = 1024 * 1024 * 100
)
@WebServlet(name = "AddPersonServlet", urlPatterns = {"/AddPersonServlet"})
public class AddPersonServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddPersonServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddPersonServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        Connection conn=null;
        HttpSession sess=request.getSession();
        UserAccount ua = (UserAccount) sess.getAttribute("acc");
        try{
            conn=MySQLConntUtils.getMySQLConnection();
            String Email=request.getParameter("Email");
            String SoDienThoai=request.getParameter("SoDienThoai");
            String Ten=request.getParameter("Ten");
            String NgayThangNamSinh=request.getParameter("NgayThangNamSinh");           
            String HinhAnh="";
            Part part=request.getPart("HinhAnh");
            String fileName=extractFileName(part);
            fileName=new File(fileName).getName();
            String path1=request.getContextPath();
            System.out.println(path1);
            part.write("D:\\ASP NET WEB\\KhoaHTTTVT\\web\\images\\"+fileName);
            HinhAnh="images/"+fileName; 

            DBUtils.insertUserPerson(conn,Email,SoDienThoai,Ten,NgayThangNamSinh,HinhAnh);
            request.setAttribute("Email",Email);
            request.setAttribute("SoDienThoai",SoDienThoai);
            request.setAttribute("Ten", Ten);
            request.getRequestDispatcher("/AddPerson.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AddPersonServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddPersonServlet.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            if(conn != null){
                try {
                    conn.close();
                } catch (SQLException ex) {
                Logger.getLogger(AddPersonServlet.class.getName()).log(Level.SEVERE, 
                null, ex);
            }
        }
 
 } 
 
doGet(request, response);
}
    private String extractFileName(Part part) {
 String contentDisp = part.getHeader("content-disposition");
 String[] items = contentDisp.split(";");
 for (String s : items) {
 if (s.trim().startsWith("filename")) {
 return s.substring(s.indexOf("=") + 2, s.length() - 1);
 }
 }
 return "";
 }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
