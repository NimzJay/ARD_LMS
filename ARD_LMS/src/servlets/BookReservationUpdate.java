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
 * Servlet implementation class BookReservationUpdate
 */
@WebServlet("/BookReservationUpdate")
public class BookReservationUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookReservationUpdate() {
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
		String bookid = request.getParameter("bid");
		int bid = Integer.parseInt(bookid);
		String bTitle = request.getParameter("bTitle");
		String isbn = request.getParameter("isbn");
		String reservationDate = request.getParameter("reservationDate");
		String expirationDate = request.getParameter("expirationDate");
		
		try {
			String sql = "UPDATE book_reservation SET bid='"+bid+"',bTitle='"+bTitle+"',isbn='"+isbn+"',reservationDate='"+reservationDate+"',expirationDate='"+expirationDate+"' where bid = '"+bid+"'";
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root","");
			java.sql.PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs;
			st.executeUpdate(sql);
			System.out.println("Succesfully Updated !!");
			request.getRequestDispatcher("Veiw_all_reservation.jsp").forward(request,response);
			
			
		}catch(Exception ex) {
			System.out.println("Error" +ex);
			
			
		}
	}

}
