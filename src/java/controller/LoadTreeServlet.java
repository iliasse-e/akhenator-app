package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import model.Node;

/**
 *
 * @author stag
 */
public class LoadTreeServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
        String path = this.getServletContext().getRealPath("data");
        System.out.println("path : "+path);
        Node root = FileUtils.loadNodeFromFile(path + "/tree.ser");
        ServletContext ctx = getServletContext();
        ctx.setAttribute("root", root);
    }
}
