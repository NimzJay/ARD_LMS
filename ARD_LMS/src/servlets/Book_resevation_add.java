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
 * Servlet implementation class Book_resevation_add
 */
@WebServlet("/Book_resevation_add")
public class Book_resevation_add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Book_resevation_add() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		doGet(request, response);
		
		try 
		{
			String username = request.getParameter("username");
			String bookid = request.getParameter("bid");
			int bid = Integer.parseInt(bookid);
			String bTitle = request.getParameter("bTitle");
			String isbn = request.getParameter("isbn");
			String reservationDate = request.getParameter("reseveration_date");
			String expirationDate = request.getParameter("expiration_date");
			
			
        	Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root",""); 
        	String sql = "INSERT INTO book_reservation (username,bid,bTitle,isbn,reservationDate,expirationDate) VALUES ('"+username+"', '"+bid+"','"+bTitle+"', '"+isbn+"', '"+reservationDate+"','"+expirationDate+"')";
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs;
			st.executeUpdate(sql);
			System.out.println("Successfully Inserted Book Reservation!");
			request.getRequestDispatcher("Veiw_all_reservation.jsp").forward(request, response);
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
        //response.sendRedirect("Book_search.jsp").forward(request, response);
	}
}

