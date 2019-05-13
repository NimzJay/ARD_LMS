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
 * Servlet implementation class issu_book
 */
@WebServlet("/issu_book")
public class issu_book extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public issu_book() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try {
			String btitle = request.getParameter("btitl");

			String Uname = request.getParameter("username");

			String NIC = request.getParameter("nic");

			String returnDate = request.getParameter("date");
			 String returnDate2 = request.getParameter("date2");
			String co = request.getParameter("copies");
			int copies = Integer.parseInt(co);

			String c1 = request.getParameter("qty");
			int copies2 = Integer.parseInt(c1);

			int newcopy = copies - copies2;

			System.out.println(btitle);
			// System.out.println(Uname);
			// System.out.println(NIC);
			System.out.println(copies);
			System.out.println(copies2);
			System.out.println(newcopy);

			if (copies <= 0) {
				System.out.println("Copies Not Enough !!");
				request.getRequestDispatcher("Book_Reservation.jsp").forward(request, response);
			} else {

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root",""); 
	            String sql = "INSERT INTO lending (Nic,bookTitele,userName,copies,lendingQty,status,rdate,issueDate) VALUES ('"+NIC+"', '"+btitle+"','"+Uname+"', '"+copies+"', '"+c1+"', '"+"lended"+"', '"+returnDate+"', '"+returnDate2+"')";
				PreparedStatement st = con.prepareStatement(sql);
				ResultSet rs;
				st.executeUpdate(sql);
				System.out.println("Successfully Inserted record!");
				//request.getRequestDispatcher("Book_view.jsp").forward(request, response);
				
				String sql2 = "UPDATE books SET copies='"+newcopy+"' where bTitle = '"+btitle+"'";
				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection con2= DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root","");
				java.sql.PreparedStatement st2 = con2.prepareStatement(sql2);
				ResultSet rs2;
				st.executeUpdate(sql2);
				System.out.println("Succesfully Updated !!");
				request.getRequestDispatcher("issue_history.jsp").forward(request,response);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
