package dao;

/* The interface of the class witch interacts with the web 
 * service to drop an ad.
 * */
public interface DropAdDao extends AdDao {
	public void dropAd(int yearBook, String adName) throws DaoException;
}
