package Controls;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;

/**
 * Servlet implementation class dangky_hocvien
 */
@WebServlet("/dangky_hocvien")
public class dangky_hocvien extends HttpServlet {
	int idhocvien;
	private static final long serialVersionUID = 1L;
       
   
    public dangky_hocvien() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
			
		String hoten=request.getParameter("hoten");
		String email=request.getParameter("email");
		String sdt=request.getParameter("sdt");
		String username=request.getParameter("uname");
		String password=request.getParameter("psw");
		String repassword=request.getParameter("psw-repeat");						
		DAO dao1=new DAO();
		String query1 = "exec HOCVIEN_insert "+hoten.trim()+","+email.trim()+","+sdt.trim()+","+username.trim()+","+password.trim()+"";
		dao1.myupdateExec(query1);

			
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
