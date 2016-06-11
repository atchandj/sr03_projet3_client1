package dao;

/* The interface of the class witch interacts with the web 
 * service to modify and ad.
 * */
public interface ModifyAdDao extends AdDao{
	public void modifyAd(int yearBook, String oldAdName, String oldStreet, String oldTown, String oldPostCode, String oldCategory, String newAdName, String newPhone, String newStreet, String newTown, String newPostCode, String newCategory) throws DaoException;
}
