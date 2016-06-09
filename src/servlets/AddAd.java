package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOConfigurationException;
import dao.DaoFactory;


public class AddAd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ADD_AD_JSP = "/WEB-INF/add_ad.jsp";

    public AddAd() {
        super();
    }
    
    public void init() throws ServletException {
        DaoFactory daoFactory;
		try {
			daoFactory = DaoFactory.getInstance();
			// this.topicsManagementDao = daoFactory.getTopicsManagementDao();
		} catch (DAOConfigurationException e) {
			e.printStackTrace();
		}        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher(ADD_AD_JSP).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
