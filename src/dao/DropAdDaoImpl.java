package dao;

import java.rmi.RemoteException;

import DefaultNamespace.MainProxy;

public class DropAdDaoImpl implements DropAdDao {
	
	public DropAdDaoImpl(DaoFactory daoFactory) {
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
