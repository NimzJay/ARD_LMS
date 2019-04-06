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
 * Servlet implementation class BooksAdd
 */
@WebServlet("/BookAdd")
public class BookAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookAdd() {
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
			
        	Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root",""); 
        	String sql = "INSERT INTO books (bTitle,isbn,author,category,publisher,edition,language,copies,addedDate) VALUES ('"+btitle+"', '"+isbn+"','"+author+"', '"+category+"', '"+publisher+"','"+edition+"','"+lang+"','"+copies+"','"+addedon+"')";
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs;
			st.executeUpdate(sql);
			System.out.println("Successfully Inserted Book!");
			request.getRequestDispatcher("Book_view.jsp").forward(request, response);
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
        //response.sendRedirect("Book_search.jsp").forward(request, response);
	}
}
