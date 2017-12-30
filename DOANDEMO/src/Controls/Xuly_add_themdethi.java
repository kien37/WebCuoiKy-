package Controls;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;


@WebServlet("/Xuly_add_themdethi")
public class Xuly_add_themdethi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Xuly_add_themdethi() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DAO dao = new DAO();

		String tende = request.getParameter("nameExam");
		String Lop = request.getParameter("class");
		String Ngaythi = request.getParameter("timeTest");
		String soluong = request.getParameter("numbers");
		

		String query = "exec dbo.taodethi '"+tende+"',NULL,"+Lop+",'"+Ngaythi+"',"+soluong+"";
		dao.myExec(query);
		request.getRequestDispatcher("thongbao_choncauhoi").forward(request, response);
		
		
	}

}
