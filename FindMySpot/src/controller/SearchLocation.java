package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.TestDijkstraAlgorithm;
import vo.Vertex;

/**
 * Servlet implementation class SearchLocation
 */
@WebServlet("/SearchLocation")
public class SearchLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchLocation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		System.out.println(flag);
		if(flag.equals("search"))
		{
			search(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	protected void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		TestDijkstraAlgorithm algorithm=new TestDijkstraAlgorithm();
		List<Vertex> list=algorithm.testExcute(request.getParameter("countryId"));
		
		for(int i = 0; i < list.size(); i++) {
            //System.out.println(list.get(i).getName());
        }
		
		HttpSession session = request.getSession();
		session.setAttribute("listParking", list);
	
		HttpSession usertype = request.getSession();
		session.removeAttribute("usertype");
		session.setAttribute("usertype", request.getParameter("countryId"));
		//System.out.println(request.getParameter("countryId"));
		
		response.sendRedirect("listParking.jsp");
	}
}
