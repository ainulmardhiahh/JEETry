package com.example.jeetry;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "myselfServlet", value = "/myselfServlet")
public class myselfServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        String myname = (String) session.getAttribute("MyName");
        String myage = (String) session.getAttribute("MyAge");
        String myhobbies = (String) session.getAttribute("MyHobbies");


        //MySelf myself = new MySelf( "Ainul Mardhiah binti Jafar", "22", "Playing games, watching movies");
        MySelf myself = new MySelf(myname, myage, myhobbies);

        out.println("<html><body>");

        out.println("<h1>" + "Name: "+ myself.getMyName()+"</h1>");
        out.println("<h1>" + "Age: "+ myself.getMyAge()+"</h1>");
        out.println("<h1>" + "Hobbies: "+ myself.getMyHobbies()+"</h1>");

        out.println("</body></html>");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }
}
