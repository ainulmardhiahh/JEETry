package com.example.jeetry;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "myfamilyServlet", value = "/myfamilyServlet")
public class myfamilyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        String myname = (String) session.getAttribute("MyName");
        String myage = (String) session.getAttribute("MyAge");
        String myhobbies = (String) session.getAttribute("MyHobbies");
        String mydad = (String) session.getAttribute("MyDad");
        String mymom = (String) session.getAttribute("MyMom");
        String mysiblings = (String) session.getAttribute("MySiblings");
        //MyFamily myfamily = new MyFamily(  "Ainul Mardhiah binti Jafar",  "22", "Playing games, watching movies",
        //        "Jafar bin Harun", "Azizah binti Joned", "Nur Athirah binti Jafar, Azfar Akmal bin Jafar");
        MyFamily myfamily = new MyFamily(myname, myage, myhobbies, mydad, mymom,mysiblings);
        out.println("<html><body>");

        out.println("<h1>" + "Name: "+ myfamily.getMyName()+"</h1>");
        out.println("<h1>" + "Age: "+ myfamily.getMyAge()+"</h1>");
        out.println("<h1>" + "Hobbies: "+ myfamily.getMyHobbies()+"</h1>");
        out.println("<h1>" + "Dad: "+ myfamily.getMyDad()+"</h1>");
        out.println("<h1>" + "Mom: "+ myfamily.getMyMom()+"</h1>");
        out.println("<h1>" + "Siblings: "+ myfamily.getMySiblings()+"</h1>");

        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }
}
