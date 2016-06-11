package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.YearBook;
import dao.DAOConfigurationException;
import dao.DaoException;
import dao.DaoFactory;
import dao.DropAdDao;

/* The servlet which allows the user to drop an ad .*/
public class DropAd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DROP_AD_JSP = "/WEB-INF/drop_ad.jsp";

    private DropAdDao dropAdDao;
    private int yearBook;
    
    public DropAd() {    	
        super();
        this.yearBook = 1;
    }
    
    public void init() throws ServletException {
        DaoFactory daoFactory;
		try {
			daoFactory = DaoFactory.getInstance();
			this.dropAdDao = daoFactory.getDropAdDao();
		} catch (DAOConfigurationException e) {
			e.printStackTrace();
		} 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("paction", "dropAd");
		request.setAttribute("yearBook", this.yearBook);
		YearBook yearBookBean = null;
		String errorMessage = null;
		try {
			yearBookBean = this.dropAdDao.getAdsNames(this.yearBook);
			request.setAttribute("yearBookBean", yearBookBean);
		} catch (DaoException e) {
			errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
		}
		this.getServletContext().getRequestDispatcher(DROP_AD_JSP).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String errorMessage = null;
		int yearBook = Integer.parseInt(request.getParameter("year_book"));
		String adName = request.getParameter("adName");
		try {
			this.dropAdDao.dropAd(yearBook, adName);
			request.setAttribute("successMessage", "Suppression effectuée avec succès");
		} catch (DaoException e) {
			errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
		}
		doGet(request, response);
	}

}
