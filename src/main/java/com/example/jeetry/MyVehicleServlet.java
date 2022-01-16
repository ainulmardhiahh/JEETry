package com.example.jeetry;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "MyVehicleServlet", value = "/MyVehicleServlet")
public class MyVehicleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        String myname = (String) session.getAttribute("MyName");
        String myage = (String) session.getAttribute("MyAge");
        String myhobbies = (String) session.getAttribute("MyHobbies");
        String vehicletype = (String) session.getAttribute("VehicleType");
        String vehiclebrand = (String) session.getAttribute("VehicleBrand");
        String vehicleid = (String) session.getAttribute("VehicleId");

        //MyVehiclee myvehicle = new MyVehiclee("Ainul Mardhiah binti Jafar", "22", "Playing games, watching movies");
        MyVehiclee myvehicle = new MyVehiclee(myname, myage, myhobbies, vehicletype, vehiclebrand, vehicleid);
        out.println("<html><body>");

        out.println("<h1>" + "Name: "+ myvehicle.getMyName()+"</h1>");
        out.println("<h1>" + "Age: "+ myvehicle.getMyAge()+"</h1>");
        out.println("<h1>" + "Hobbies: "+ myvehicle.getMyHobbies()+"</h1>");
        out.println("<h1>" + "Vehicle Type: "+myvehicle.getMyVehicleType()+"</h1>");
        out.println("<h1>" + "Vehicle Brand: "+myvehicle.getMyVehicleBrand()+"</h1>");
        out.println("<h1>" + "Vehicle ID: "+myvehicle.getMyVehicleId()+"</h1>");

        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
