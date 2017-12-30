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
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	int idhocvien;
	int idgiaovien;
	int idadmin;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("uname");
		String password = request.getParameter("psw");
		int radio = Integer.parseInt(request.getParameter("radio"));
		

		if (radio == 1) {

			DAO dao = new DAO();
			String query = "select * from dbo.dangnhap_hocvien('" + username + "','" + password + "')";
			
			try {
				ResultSet rs = dao.myExec(query);
				if (rs.next()) {
					idhocvien= rs.getInt(1);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			if (idhocvien != 0) {
				request.setAttribute("idhocvien", idhocvien);
				request.getRequestDispatcher("/WEB-INF/jsps/hocvien.jsp").forward(request, response);
			} else {

			}
		}
		if (radio == 2) {

			DAO dao = new DAO();
			String query = "select * from dbo.dangnhap_giaovien('" + username + "','" + password + "')";
			ResultSet rs = dao.myExec(query);
			try {
				while (rs.next()) {
					idgiaovien = rs.getInt(1);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

			if (idgiaovien != 0) {
				request.setAttribute("idgiaovien", idgiaovien);
				request.getRequestDispatcher("/WEB-INF/jsps/giaovien.jsp").forward(request, response);
			} else {

			}
		}
		if (radio == 3) {

			DAO dao = new DAO();
			String query = "select * from  dbo.dangnhap_admin('" + username + "','" + password + "')";
			ResultSet rs = dao.myExec(query);
			try {
				while (rs.next()) {
					idadmin = rs.getInt(1);
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

			if (idadmin != 0) {
				request.setAttribute("idadmin", idadmin);
				request.getRequestDispatcher("/WEB-INF/jsps/Admin.jsp").forward(request, response);
			} else {

			}
		}
	}

}
