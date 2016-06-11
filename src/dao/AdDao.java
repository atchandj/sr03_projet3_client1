package dao;

import java.util.ArrayList;

import beans.YearBook;

/* The interface of the classes witch interact with the web 
 * service due to some adds.
 * */
public interface AdDao {
	public ArrayList<String> getCategoriesNames(int yearBook) throws DaoException;
	public ArrayList<String> getPostCodes(int yearBook) throws DaoException;
	public ArrayList<String> getStreetsNames(int yearBook) throws DaoException;
	public ArrayList<String> getTownsNames(int yearBook) throws DaoException; 
	public YearBook getAdsNames(int yearBook) throws DaoException;
}
