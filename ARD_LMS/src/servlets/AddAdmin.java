package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class AddAdmin
 */
@WebServlet("/AddAdmin")
public class AddAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try {

			String Username = request.getParameter("username");
			String Password = request.getParameter("password");
			String FirstName = request.getParameter("fname");
			String LastName = request.getParameter("lname");
			String dob = request.getParameter("dob");
			String NIC = request.getParameter("nic");
			String x = request.getParameter("phone");
			int phone = Integer.parseInt(x);
			String Email = request.getParameter("email");
			String Address = request.getParameter("address");

			String sql = "INSERT INTO user (username,password,fname,lname,dob,nic,phone,email,address,type) VALUES ('"
					+ Username + "', '" + Password + "','" + FirstName + "', '" + LastName + "', '" + dob + "','" + NIC
					+ "','" + phone + "','" + Email + "','" + Address + "','admin')";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
			java.sql.PreparedStatement st = con.prepareStatement(sql);
			st.executeUpdate(sql);
			System.out.println("Successfully Inserted!");
			request.getRequestDispatcher("AdminView.jsp").forward(request, response);
			;
		} catch (Exception ex) {
			System.out.println();
		}

	}
}
