package com.example.glassfishh;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Student;
import utils.StudentUtil;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.stream.Collectors;

@WebServlet(name = "studentServlet", value="/student-servlet")
public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        Gson gson = new Gson();
        String json = gson.toJson(StudentUtil.getStudent(firstName, lastName), Student.class);
        resp.getWriter().print(json);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bodyStr = req.getReader().lines().collect(Collectors.toList()).toString();
        System.out.println(bodyStr);
        Gson gson = new Gson();
        Student student = gson.fromJson(bodyStr, Student.class);

        PrintWriter writer = resp.getWriter();
        String html = String.format("""
                    <html>
                        <p>%s</p>
                        <p>%s</p>
                    </html>
                    """, student.getFirstName(), student.getLastName());
        writer.print(html);
    }
}
