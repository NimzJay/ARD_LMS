package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Book_Reservation_delete
 */
@WebServlet("/Book_Reservation_delete")
public class Book_Reservation_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Book_Reservation_delete() {
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
			String bid = request.getParameter("bid");
			
			System.out.println("Book ID: " + bid);
			
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root","");
			String sql = ("Delete from book_reservation WHERE bid='"+bid+"'"); 
		    PreparedStatement st = con.prepareStatement(sql);
		    st.executeUpdate(sql);
		    System.out.println("Delete Book Reservation succeeded");
		    request.getRequestDispatcher("Veiw_all_reservation.jsp").forward(request, response);
		}catch(Exception ex) {
			System.out.println("Error: " + ex);
		}
	}
}
