package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.YearBook;
import dao.DAOConfigurationException;
import dao.DaoException;
import dao.DaoFactory;
import dao.ModifyAdDao;


public class ModifyAd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String MODIFY_AD_JSP = "/WEB-INF/modify_ad.jsp";

    private ModifyAdDao modifyAdDao;
    private int yearBook;
    
    public ModifyAd() {
        super();
        this.yearBook = 1;
    }
    
    public void init() throws ServletException {
        DaoFactory daoFactory;
		try {
			daoFactory = DaoFactory.getInstance();
			this.modifyAdDao = daoFactory.getModifyAdDao();
		} catch (DAOConfigurationException e) {
			e.printStackTrace();
		} 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		YearBook yearBookBean = null;
		String errorMessage = null;
		request.setAttribute("paction", "modifyAdd");
		request.setAttribute("yearBook", this.yearBook);
		try {
			yearBookBean = this.modifyAdDao.getAdsNames(this.yearBook);			
			ArrayList<String> categoriesNames = this.modifyAdDao.getCategoriesNames(this.yearBook);
			ArrayList<String> postCodes = this.modifyAdDao.getPostCodes(this.yearBook);
			ArrayList<String> streetsNames = this.modifyAdDao.getStreetsNames(this.yearBook);
			ArrayList<String> townsNames = this.modifyAdDao.getTownsNames(this.yearBook);
			request.setAttribute("yearBookBean", yearBookBean);
			request.setAttribute("oldCategoriesNames", categoriesNames);
			request.setAttribute("oldPostCodes", postCodes);
			request.setAttribute("oldStreetsNames", streetsNames);
			request.setAttribute("oldTownsNames", townsNames);
		} catch (DaoException e) {
			errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
		}
		
		this.getServletContext().getRequestDispatcher(MODIFY_AD_JSP).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String errorMessage = null;
		int yearBook = Integer.parseInt(request.getParameter("year_book"));	
		String oldAdName = request.getParameter("oldAdName");
		String oldStreet = request.getParameter("oldStreet");
		String oldTown = request.getParameter("oldTown");
		String oldPostCode = request.getParameter("oldPostCode");
		String oldCategory = request.getParameter("oldCategory");
		String newAdName = request.getParameter("newAdName");
		String newPhone = request.getParameter("newPhone");
		String newStreet = request.getParameter("newStreet");
		String newTown = request.getParameter("newTown");
		String newPostCode = request.getParameter("newPostCode");
		String newCategory = request.getParameter("newCategory");
		try {
			this.modifyAdDao.modifyAd(yearBook, oldAdName, oldStreet, oldTown, oldPostCode, oldCategory, newAdName, newPhone, newStreet, newTown, newPostCode, newCategory);
			request.setAttribute("successMessage", "Modification effectuée avec succès");
		} catch (DaoException e) {
			errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
		}
		doGet(request, response);
	}

}
