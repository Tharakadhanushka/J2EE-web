/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tharaka
 */
public class userdetailservlet extends HttpServlet {

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
            out.println("<title>Servlet userdetailservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet userdetailservlet at " + request.getContextPath() + "</h1>");
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
       
        String fn=request.getParameter("fname");
        String ln=request.getParameter("lname");
        String un=request.getParameter("uname");
        String ps=request.getParameter("password");
        String em=request.getParameter("email");
        String reg=request.getParameter("region");
        String ph=request.getParameter("phone");
       
         
         try
         { Class.forName("com.mysql.jdbc.Driver");
         
         Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/deaweb", "root", "");
                  PreparedStatement st=(PreparedStatement) con .prepareStatement("Insert into user VALUES (?,?,?,?,?,?,?)");
                  st.setString(1, fn);
                  st.setString(2, ln);
                  st.setString(3, un);
                  st.setString(4, ps);
                  st.setString(5, em);
                  st.setString(6, reg);
                  st.setString(7, ph);
                        
                  st.executeUpdate();
                  
                  st.close();
                  con.close();
                  
                  PrintWriter out=response.getWriter();
                  out.println("<html><body><b><h1> Register Successfully"+"</h1></b></body></html>");
                  
                  
       
        
    
        
        
        
    }   catch (ClassNotFoundException ex) {
            Logger.getLogger(userdetailservlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(userdetailservlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
