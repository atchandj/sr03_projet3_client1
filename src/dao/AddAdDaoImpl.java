package dao;

import java.rmi.RemoteException;

import DefaultNamespace.MainProxy;


public class AddAdDaoImpl implements AddAdDao {
	private DaoFactory daoFactory;

    public AddAdDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }
    
    @Override
    public void addAd(int yearBook, java.lang.String adName, java.lang.String phone, java.lang.String street, java.lang.String town, java.lang.String postCode, java.lang.String category) throws DaoException {
    	MainProxy mainProxy = new MainProxy();    	
    	try {
			mainProxy.addAd(yearBook, adName, phone, street, town, postCode, category);
		} catch (RemoteException e) {
			throw new DaoException("Impossible d'appeler le web service : " + e.getMessage());
		}

	}
    
}
