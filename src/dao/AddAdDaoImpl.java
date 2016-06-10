package dao;

import java.rmi.RemoteException;

import DefaultNamespace.MainProxy;


public class AddAdDaoImpl extends AdDaoImpl implements AddAdDao {
	
	public AddAdDaoImpl(DaoFactory daoFactory) {
		super(daoFactory);
	}
    
    @Override
    public void addAd(int yearBook, java.lang.String adName, java.lang.String phone, java.lang.String street, java.lang.String town, java.lang.String postCode, java.lang.String category) throws DaoException {
    	MainProxy mainProxy = new MainProxy(); 
    	try {
    		 mainProxy.addAd(yearBook, adName, phone, street, town, postCode, category);
    		
		} catch (RemoteException e) {
			throw new DaoException(e.getMessage());
		}

	}    

}
