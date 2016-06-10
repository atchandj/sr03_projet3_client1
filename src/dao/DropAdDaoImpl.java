package dao;

import java.rmi.RemoteException;

import DefaultNamespace.MainProxy;

public class DropAdDaoImpl extends AdDaoImpl implements DropAdDao {
	
	public DropAdDaoImpl(DaoFactory daoFactory) {
		super(daoFactory);
    }
    
    @Override
    public void dropAd(int yearBook, String adName) throws DaoException {
    	MainProxy mainProxy = new MainProxy();    	
    	try {
    		mainProxy.dropAd(yearBook, adName);
		} catch (RemoteException e) {
			throw new DaoException(e.getMessage());
		}

	}
    
}
