package Controls;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;

/**
 * Servlet implementation class Xuly_add_taocauhoi
 */
@WebServlet("/Xuly_add_taocauhoi")
public class Xuly_add_taocauhoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Xuly_add_taocauhoi() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao = new DAO();
		
		String tencauhoi = request.getParameter("noidung");
		String dapana =  request.getParameter("answera");
		String dapanb =  request.getParameter("answerb");
		String dapanc =  request.getParameter("answerc");
		String dapand =  request.getParameter("answerd");
		String dapandung = request.getParameter("dapandung");
		
		
		String query = "exec dbo.CAUHOI_insert '"+tencauhoi+ "', "+dapandung;
		dao.myExec(query);
		
		String query1 = "exec dbo.DAPAN_insert "+1+ ", '"+dapana+"'";
		dao.myExec(query1);
		
		String query2 = "exec dbo.DAPAN_insert "+2+ ",'"+dapanb+"'";
		dao.myExec(query2);
		
		String query3 = "exec dbo.DAPAN_insert "+3+ ", '"+dapanc+"'";
		dao.myExec(query3);
		
		String query4 = "exec dbo.DAPAN_insert "+4+ ", '"+dapand+"'";
		dao.myExec(query4);
	}

}
