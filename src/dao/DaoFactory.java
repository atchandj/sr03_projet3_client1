package dao;


/* This class is our factoy in our dao model */
public class DaoFactory {

    public static DaoFactory getInstance() throws DAOConfigurationException {
        DaoFactory instance = new DaoFactory();
        return instance;
    }

    public AddAdDao getAddAdDao() {
        return new AddAdDaoImpl(this);
    }
    
    public DropAdDao getDropAdDao() {
        return new DropAdDaoImpl(this);
    }
    
    public ModifyAdDao getModifyAdDao() {
        return new ModifyAdDaoImpl(this);
    }
}
