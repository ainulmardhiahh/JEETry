package com.example.jeetry;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "myStudentServlet", value = "/myStudentServlet")
public class myStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        String myname = (String) session.getAttribute("MyName");
        String myage = (String) session.getAttribute("MyAge");
        String myhobbies = (String) session.getAttribute("MyHobbies");
        String matricno = (String) session.getAttribute("MatricNo");
        String programcode = (String) session.getAttribute("ProgramCode");
        String campuss = (String) session.getAttribute("Campus");

        //MyStudent mystudent = new MyStudent(  "Ainul Mardhiah binti Jafar",  "22", "Playing games, watching movies",
        //      "2021505453", "CS266", "UITM JASIN");

        MyStudent mystudent = new MyStudent(myname, myage, myhobbies, matricno, programcode, campuss);
        out.println("<html><body>");

        out.println("<h1>" + "Name: "+ mystudent.getMyName()+"</h1>");
        out.println("<h1>" + "Age: "+ mystudent.getMyAge()+"</h1>");
        out.println("<h1>" + "Hobbies: "+ mystudent.getMyHobbies()+"</h1>");
        out.println("<h1>" + "Matric No: "+ mystudent.getMyMatricNo()+"</h1>");
        out.println("<h1>" + "Program Code: "+ mystudent.getMyProgramCode()+"</h1>");
        out.println("<h1>" + "Campus: "+ mystudent.getMyCampus()+"</h1>");

        out.println("</body></html>");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
