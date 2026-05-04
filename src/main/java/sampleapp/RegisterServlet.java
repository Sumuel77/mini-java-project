package sampleapp;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/ecommerce",
                    "root",
                    "123456"
            );

            // check email
            String checkSql = "SELECT * FROM users WHERE email=?";
            PreparedStatement checkPs = conn.prepareStatement(checkSql);
            checkPs.setString(1, email);

            ResultSet rs = checkPs.executeQuery();

            if (rs.next()) {

                request.setAttribute("msg", "Email already exists!");
                request.getRequestDispatcher("register.jsp").forward(request, response);

            } else {

                // insert user
                String sql = "INSERT INTO users(name,email,password) VALUES(?,?,?)";
                PreparedStatement ps = conn.prepareStatement(sql);

                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, password);

                ps.executeUpdate();

                // SEND EMAIL FIRST
                EmailUtility.sendEmail(
                        email,
                        "Registration Successful",
                        "Hi " + name + ",\n\nYour account has been successfully created. Welcome to our store!\n" +
                                "\n" +
                                "You’re now ready to explore a wide range of products, enjoy special offers, and experience a smooth and secure shopping journey with us.\n" +
                                "\n" +
                                "To help you get started, we’ve prepared something special just for you. Don’t miss out on your first shopping experience with exclusive deals waiting inside.\n" +
                                "\n" +
                                "Start exploring and happy shopping!\n" +
                                "The Store Team.\n\nWelcome to our Ecommerce system!"
                );

                request.setAttribute("msg", "Registration successful!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();

            request.setAttribute("msg", "Error: " + e.getMessage());
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}