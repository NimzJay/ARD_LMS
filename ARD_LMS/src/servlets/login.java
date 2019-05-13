package servlets;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.codec.Base64.OutputStream;
import model.Sesh;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
	
	public class loginDao 
	{
		public String check(String user,String pass)
		{
			try {
				
				String sql = "SELECT * FROM user";			
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ard_lms","root",""); 
				PreparedStatement st = con.prepareStatement(sql);
				ResultSet rs = st.executeQuery(sql);
				while(rs.next()) 
				{
					String typeDB = rs.getString("type");
					
					if(user.equals(rs.getString("username"))&& pass.equals(rs.getString("password"))&& typeDB.equals("member")) {
						return "clientUI";
					}
					if(user.equals(rs.getString("username"))&& pass.equals(rs.getString("password"))&& typeDB.equals("admin")) {
						return "adminUI";
					}
				}
				
			}catch(Exception ex) {
				ex.printStackTrace();
			}				
			return "Invalid User Credentials";
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = request.getParameter("user");   
        String pass = request.getParameter("pass");
        //System.out.println(user+pass); 
        
        loginDao dao = new loginDao();
        
        
        LocalDateTime dateTime = LocalDateTime.now(); 
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		System.out.println(dateTime.format(formatter));
		
		String dateStart = dateTime.format(formatter);
        
        
        boolean found = false;
        File file = new File("E:/example/filedata.txt");
        FileReader fileReader = new FileReader(file);
        BufferedReader bufferedReader = new BufferedReader(fileReader);
        String temp = bufferedReader.readLine();
        
        
        try {
        
        	String userValidate = dao.check(user,pass);
        	if(userValidate.equals("clientUI")) 
        	{
        		System.out.println("Client");
        		Sesh.setUsername(user);
        		System.out.println(Sesh.getUsername());
        		request.getRequestDispatcher("clientUI.jsp").forward(request, response);
        		
        		PrintWriter fileWriter = new PrintWriter(new    
     		           FileOutputStream("E:/example/filedata.txt",true));  
     		           fileWriter.println(user+"  loged  at "+dateStart+"  .  ");
     		           //fileWriter.println(dateStart);
     		           fileWriter.close();
     		           System.out.println("file saved");
     		           
     		           
           	}
        	else if(userValidate.equals("adminUI"))
        	{
        		System.out.println("Admin");
        		request.getRequestDispatcher("admin_index.jsp").forward(request, response);
        		PrintWriter fileWriter = new PrintWriter(new    
      		           FileOutputStream("E:/example/filedata.txt",true));  
      		           fileWriter.println(user+"  loged  at "+dateStart+"  .  ");
      		           //fileWriter.println(dateStart);
      		           fileWriter.close();
      		           System.out.println("file saved");
        	}
        	else 
        	{
           		request.getRequestDispatcher("index.jsp").forward(request, response);
           		PrintWriter fileWriter = new PrintWriter(new    
      		           FileOutputStream("E:/example/filedata.txt",true));  
      		           fileWriter.println(user+"  try to log  at "+dateStart+"  .  ");
      		           //fileWriter.println(dateStart);
      		           fileWriter.close();
      		           System.out.println("file saved");
        	}  
        }catch (Exception e) {
        	e.printStackTrace();
        }
	}
}
