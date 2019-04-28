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
 * Servlet implementation class returnBook
 */
@WebServlet("/returnBook")
public class returnBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public returnBook() {
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
			String bt = request.getParameter("btitl");
			String sql2 = ("SELECT copies FROM books WHERE bTitle = '"+bt+"'");
			Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms", "root", "");
			PreparedStatement st2 = con2.prepareStatement(sql2);
			ResultSet rs2 = st2.executeQuery(sql2);
			while (rs2.next()) {
				String bqty = rs2.getString("copies");
			}
		
			String bqty = request.getParameter("copies");
			String lid = request.getParameter("id");
			String copyqty = request.getParameter("qty");
			
			int lidnew = Integer.parseInt(lid);
			int newqty = Integer.parseInt(copyqty);
			int newbqty = Integer.parseInt(bqty);
			
			
			System.out.println("lend id: " + lid);
			
			int upqty = newbqty+newqty;
		
			
			
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root","");
			String sql = ("Delete from lending WHERE lnedID='"+lidnew+"'"); 
		    PreparedStatement st = con.prepareStatement(sql);
		    st.executeUpdate(sql);
		    System.out.println("return Book succeeded");
		    //request.getRequestDispatcher("issue_history.jsp").forward(request, response);
		    
		    String sql3 = "UPDATE books SET copies='"+upqty+"' where bTitle = '"+bt+"'";
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con3= DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root","");
			java.sql.PreparedStatement st3 = con3.prepareStatement(sql3);
			ResultSet rs3;
			st.executeUpdate(sql3);
			System.out.println("Succesfully Updated !!");
			request.getRequestDispatcher("issue_history.jsp").forward(request,response);
			
		    
		    
		}catch(Exception ex) {
			System.out.println("Error: " + ex);
		}
	}
		
		
	}


