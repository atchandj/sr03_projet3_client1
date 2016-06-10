package dao;

import java.rmi.RemoteException;

import DefaultNamespace.MainProxy;

public class DropAdDaoImpl implements DropAdDao {
	private DaoFactory daoFactory;

    public DropAdDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }
    
    @Override
    public void dropAd(int yearBook, String adName) throws DaoException {
    	MainProxy mainProxy = new MainProxy();    	
    	try {
    		mainProxy.dropAd(yearBook, adName);
		} catch (RemoteException e) {
			throw new DaoException("Impossible d'appeler le web service : " + e.getMessage());
		}

	}
}
