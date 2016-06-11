package dao;

import java.rmi.RemoteException;

import DefaultNamespace.MainProxy;

/* The implementation of the class witch interacts with the web 
 * service to modify an ad.
 * */
public class ModifyAdDaoImpl extends AdDaoImpl implements ModifyAdDao {
	
	public ModifyAdDaoImpl(DaoFactory daoFactory) {
		super(daoFactory);
    }
    
    @Override
    public void modifyAd(int yearBook, String oldAdName, String oldStreet, String oldTown, String oldPostCode, String oldCategory, String newAdName, String newPhone, String newStreet, String newTown, String newPostCode, String newCategory) throws DaoException {
    	MainProxy mainProxy = new MainProxy();    	
    	try {
			mainProxy.modifyAd(yearBook, oldAdName, oldStreet, oldTown, oldPostCode, oldCategory, newAdName, newPhone, newStreet, newTown, newPostCode, newCategory);
		} catch (RemoteException e) {
			throw new DaoException(e.getMessage());
		}

	}
    
}
