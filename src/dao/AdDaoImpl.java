package dao;

import java.io.IOException;
import java.rmi.RemoteException;
import java.util.ArrayList;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import DefaultNamespace.MainProxy;
import beans.YearBook;

public class AdDaoImpl implements AdDao {
	
	public AdDaoImpl(DaoFactory daoFactory) {
    }
	
    @Override
    public ArrayList<String> getCategoriesNames(int yearBook) throws DaoException {
    	MainProxy mainProxy = new MainProxy();
    	ObjectMapper objectMapper = new ObjectMapper();
    	String dataJSON = null;
    	ArrayList<String> categoriesNames = null;
    	try {
    		dataJSON = mainProxy.getCategoriesNames(yearBook);
			categoriesNames = objectMapper.readValue(dataJSON, objectMapper.getTypeFactory().constructCollectionType(ArrayList.class, String.class));
			return categoriesNames;
		} catch (RemoteException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonParseException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonMappingException e) {
			throw new DaoException(e.getMessage());
		} catch (IOException e) {
			throw new DaoException(e.getMessage());
		}

	}
    
    @Override
    public ArrayList<String> getPostCodes(int yearBook) throws DaoException {
    	MainProxy mainProxy = new MainProxy();   
    	ObjectMapper objectMapper = new ObjectMapper();
    	String dataJSON = null;
    	ArrayList<String> postCodes = null;
    	try {
    		dataJSON = mainProxy.getPostCodes(yearBook);
			postCodes = objectMapper.readValue(dataJSON, objectMapper.getTypeFactory().constructCollectionType(ArrayList.class, String.class));
			return postCodes;
		} catch (RemoteException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonParseException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonMappingException e) {
			throw new DaoException(e.getMessage());
		} catch (IOException e) {
			throw new DaoException(e.getMessage());
		}

	}
    
    @Override
    public ArrayList<String> getStreetsNames(int yearBook) throws DaoException {
    	MainProxy mainProxy = new MainProxy();  
    	ObjectMapper objectMapper = new ObjectMapper();
    	String dataJSON = null;
    	ArrayList<String> streetsNames = null;
    	try {
    		dataJSON = mainProxy.getStreetsNames(yearBook);
			streetsNames = objectMapper.readValue(dataJSON, objectMapper.getTypeFactory().constructCollectionType(ArrayList.class, String.class));
			return streetsNames;
		} catch (RemoteException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonParseException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonMappingException e) {
			throw new DaoException(e.getMessage());
		} catch (IOException e) {
			throw new DaoException(e.getMessage());
		}

	}
    
    @Override
    public ArrayList<String> getTownsNames(int yearBook) throws DaoException {
    	MainProxy mainProxy = new MainProxy();  
    	ObjectMapper objectMapper = new ObjectMapper();
    	String dataJSON = null;
    	ArrayList<String> townsNames = null;
    	try {
    		dataJSON = mainProxy.getTownsNames(yearBook);
			townsNames = objectMapper.readValue(dataJSON, objectMapper.getTypeFactory().constructCollectionType(ArrayList.class, String.class));
			return townsNames;
		} catch (RemoteException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonParseException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonMappingException e) {
			throw new DaoException(e.getMessage());
		} catch (IOException e) {
			throw new DaoException(e.getMessage());
		}

	}
    
    @Override
    public YearBook getAdsNames(int yearBook) throws DaoException {
    	MainProxy mainProxy = new MainProxy();    	
    	ObjectMapper objectMapper = new ObjectMapper();
    	YearBook yearBookBean = null;
    	String dataJSON = null;
    	try {
    		dataJSON = mainProxy.getAdsNames(yearBook);
    		yearBookBean = objectMapper.readValue(dataJSON, YearBook.class);
		} catch (RemoteException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonParseException e) {
			throw new DaoException(e.getMessage());
		} catch (JsonMappingException e) {
			throw new DaoException(e.getMessage());
		} catch (IOException e) {
			throw new DaoException(e.getMessage());
		}
    	return yearBookBean;
	}
}
