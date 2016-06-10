package dao;

public interface DropAdDao extends AdDao {
	public void dropAd(int yearBook, String adName) throws DaoException;
}
