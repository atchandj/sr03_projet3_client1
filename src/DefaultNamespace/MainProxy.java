package DefaultNamespace;

public class MainProxy implements DefaultNamespace.Main {
  private String _endpoint = null;
  private DefaultNamespace.Main main = null;
  
  public MainProxy() {
    _initMainProxy();
  }
  
  public MainProxy(String endpoint) {
    _endpoint = endpoint;
    _initMainProxy();
  }
  
  private void _initMainProxy() {
    try {
      main = (new DefaultNamespace.MainServiceLocator()).getMain();
      if (main != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)main)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)main)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (main != null)
      ((javax.xml.rpc.Stub)main)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public DefaultNamespace.Main getMain() {
    if (main == null)
      _initMainProxy();
    return main;
  }
  
  public void updateCategory(java.lang.String oldCategoryName, java.lang.String newCategoryName) throws java.rmi.RemoteException{
    if (main == null)
      _initMainProxy();
    main.updateCategory(oldCategoryName, newCategoryName);
  }
  
  public void addCategory(java.lang.String categoryName) throws java.rmi.RemoteException{
    if (main == null)
      _initMainProxy();
    main.addCategory(categoryName);
  }
  
  public void modifyAd(int yearBook, java.lang.String oldAdName, java.lang.String oldStreet, java.lang.String oldTown, java.lang.String oldPostCode, java.lang.String oldCategory, java.lang.String newAdName, java.lang.String newPhone, java.lang.String newStreet, java.lang.String newTown, java.lang.String newPostCode, java.lang.String newCategory) throws java.rmi.RemoteException{
    if (main == null)
      _initMainProxy();
    main.modifyAd(yearBook, oldAdName, oldStreet, oldTown, oldPostCode, oldCategory, newAdName, newPhone, newStreet, newTown, newPostCode, newCategory);
  }
  
  public void dropCategory(java.lang.String category) throws java.rmi.RemoteException{
    if (main == null)
      _initMainProxy();
    main.dropCategory(category);
  }
  
  public void dropAd(int yearBook, java.lang.String adName) throws java.rmi.RemoteException{
    if (main == null)
      _initMainProxy();
    main.dropAd(yearBook, adName);
  }
  
  public java.lang.String getAdsNames(int yearBook) throws java.rmi.RemoteException{
    if (main == null)
      _initMainProxy();
    return main.getAdsNames(yearBook);
  }
  
  public java.lang.String getYearBook(int yearBook) throws java.rmi.RemoteException{
    if (main == null)
      _initMainProxy();
    return main.getYearBook(yearBook);
  }
  
  public java.lang.String getAd(int yearBook, java.lang.String adName) throws java.rmi.RemoteException{
    if (main == null)
      _initMainProxy();
    return main.getAd(yearBook, adName);
  }
  
  public void addAd(int yearBook, java.lang.String adName, java.lang.String phone, java.lang.String street, java.lang.String town, java.lang.String postCode, java.lang.String category) throws java.rmi.RemoteException{
    if (main == null)
      _initMainProxy();
    main.addAd(yearBook, adName, phone, street, town, postCode, category);
  }
  
  
}