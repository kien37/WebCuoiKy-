package Controls;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;

@WebServlet("/Xuly_add_themgiaovien")
public class Xuly_add_themgiaovien extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Xuly_add_themgiaovien() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DAO dao = new DAO();

		String tendangnhap = request.getParameter("username");
		String hovaten = request.getParameter("fullname");
		String matkhau = request.getParameter("password");
		String email = request.getParameter("email");
		String sdt = request.getParameter("sdt");
		String gioitinh = request.getParameter("sex");
		
		String query = "exec dbo.GIAOVIEN_insert '"+tendangnhap+"','"+matkhau+"','"+hovaten+"','"+email+"','"+sdt+"','"+gioitinh+"'";
		dao.myExec(query);
		request.getRequestDispatcher("Admin_thongtingiaovien").forward(request, response);
	}

}
