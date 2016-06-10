package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AddAdDao;
import dao.DAOConfigurationException;
import dao.DaoException;
import dao.DaoFactory;


public class AddAd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ADD_AD_JSP = "/WEB-INF/add_ad.jsp";

    private AddAdDao addAdDao;
    private int yearBook;
    
    public AddAd() {
        super();
        this.yearBook = 1;
    }
    
    public void init() throws ServletException {
        DaoFactory daoFactory;
		try {
			daoFactory = DaoFactory.getInstance();
			this.addAdDao = daoFactory.getAddAdDao();
		} catch (DAOConfigurationException e) {
			e.printStackTrace();
		} 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String errorMessage = null;
		request.setAttribute("paction", "addAd");
		request.setAttribute("yearBook", this.yearBook);
		try {
			ArrayList<String> categoriesNames = this.addAdDao.getCategoriesNames(this.yearBook);
			ArrayList<String> postCodes = this.addAdDao.getPostCodes(this.yearBook);
			ArrayList<String> streetsNames = this.addAdDao.getStreetsNames(this.yearBook);
			ArrayList<String> townsNames = this.addAdDao.getTownsNames(this.yearBook);
			request.setAttribute("categoriesNames", categoriesNames);
			request.setAttribute("postCodes", postCodes);
			request.setAttribute("streetsNames", streetsNames);
			request.setAttribute("townsNames", townsNames);
		} catch (DaoException e) {
			errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
		}

		this.getServletContext().getRequestDispatcher(ADD_AD_JSP).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String errorMessage = null;
		int yearBook = Integer.parseInt(request.getParameter("year_book"));
		String adName = request.getParameter("adName");
		String phone = request.getParameter("phone");
		String street = request.getParameter("street");
		String town = request.getParameter("town");
		String postCode = request.getParameter("postCode");
		String category = request.getParameter("category");
		try {
			this.addAdDao.addAd(yearBook, adName, phone, street, town, postCode, category);
			request.setAttribute("successMessage", "Ajout effectué avec succès");
		} catch (DaoException e) {
			errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
		}
		doGet(request, response);
	}

}
