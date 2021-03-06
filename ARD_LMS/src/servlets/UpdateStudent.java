package servlets;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminUpdate
 */
@WebServlet("/UpdateStudent")
public class UpdateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudent() {
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
		String Username = request.getParameter("username");
		String Password = request.getParameter("password");
		String FirstName = request.getParameter("fname");
		String LastName = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String NIC = request.getParameter("nic");
		String x = request.getParameter("phone");
		int phone = Integer.parseInt(x);
		String Email =request.getParameter("email");
		String Address =request.getParameter("address"); 

		try {
			String uid=request.getParameter("id");
			System.out.println(uid);
			//where id=(select MAX(uid) from user)
			String sql = "UPDATE user SET username='"+Username+"',password='"+Password+"',fname='"+FirstName+"',lname='"+LastName+"',dob='" +dob+"',nic='"+NIC+"',phone='"+phone+"',email='"+Email+"'WHERE uid='"+uid+"'  ";
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root","");
			java.sql.PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs;
			st.executeUpdate(sql);
			System.out.println("Succesfully Updated Member!!");
			request.getRequestDispatcher("UpdateStudent.jsp").forward(request,response);


		}catch(Exception ex) {
			System.out.println("Error" +ex);

		}
	}

}