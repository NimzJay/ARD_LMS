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
 * Servlet implementation class BookUpdate
 */
@WebServlet("/BookUpdate")
public class BookUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookUpdate() {
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
		String btitle = request.getParameter("btitle");
		String isbn = request.getParameter("isbn");
		String author = request.getParameter("author");
		String category = request.getParameter("category");
		String publisher = request.getParameter("publisher");
		String edition = request.getParameter("edition");
		String lang = request.getParameter("lang"); 
		String co =request.getParameter("copies");
		int copies = Integer.parseInt(co);
		String addedon =request.getParameter("addedon");
		
		try {
			String sql = "UPDATE books SET bTitle='"+btitle+"',isbn='"+isbn+"',author='"+author+"',category='"+category+"',publisher='"+publisher+"',edition='"+edition+"',language='"+lang+"',copies='"+copies+"',addedDate='"+addedon+"' where bTitle = '"+btitle+"'";
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root","");
			java.sql.PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs;
			st.executeUpdate(sql);
			System.out.println("Succesfully Updated !!");
			request.getRequestDispatcher("Book_view.jsp").forward(request,response);
			
			
		}catch(Exception ex) {
			System.out.println("Error" +ex);
			
		}
	}

}
