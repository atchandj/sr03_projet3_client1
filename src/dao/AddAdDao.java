package dao;

/* The interface of the class witch interacts with the web 
 * service to add an ad.
 * */
public interface AddAdDao extends AdDao {
	public void addAd(int yearBook, java.lang.String adName, java.lang.String phone, java.lang.String street, java.lang.String town, java.lang.String postCode, java.lang.String category) throws DaoException;
}
