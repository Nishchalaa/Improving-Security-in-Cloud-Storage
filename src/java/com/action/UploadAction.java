/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author KishanVenky
 */
@MultipartConfig(maxFileSize=16*1024*1024)
public class UploadAction extends HttpServlet {
 final String filepath = "C:\\Project\\";
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try{
           HttpSession session=request.getSession();
         String email=(String)session.getAttribute("email");
         
         MultipartRequest m = new MultipartRequest(request, filepath);
          
         String name=m.getParameter("name");
         String bgroup=m.getParameter("bgroup");
         String bp=m.getParameter("bp");
       String disease=m.getParameter("disease");
       String pkey=m.getParameter("pkey");
       
       session.setAttribute("pkey",pkey);
       session.setAttribute("name",name);
       session.setAttribute("bgroup",bgroup);
       session.setAttribute("bp",bp);
       session.setAttribute("disease",disease);
       
       
           File f=m.getFile("file");
         String filename=f.getName();
      session.setAttribute("filename",filename);
       
           
         BufferedReader br=new BufferedReader(new FileReader(f));
             StringBuffer sb = new StringBuffer();
            String temp = null;

            while ((temp = br.readLine()) != null) {
                sb.append(temp);
                
            }
           String data=sb.toString();
          session.setAttribute("data",data);
           
           
            KeyGenerator keygen=KeyGenerator.getInstance("AES");
           keygen.init(128);
           SecretKey s=keygen.generateKey();
           //converting secret keyto string
           byte[] b=s.getEncoded();//encoding secret key
           String skey=Base64.encode(b);   
          String cipher=new encryption().encrypt(data,s);
           
                     session.setAttribute("cipher",cipher);
                     session.setAttribute("skey",skey);
             
             System.out.println(filename);
             System.out.println(data);
                     
          response.sendRedirect("Upload2.jsp");           
                     
       }catch(Exception e){
         System.out.println(e);  
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
        processRequest(request, response);
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
