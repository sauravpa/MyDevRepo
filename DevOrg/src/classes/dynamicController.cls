public with sharing class dynamicController {

    public list<MyWrapper> lstWrapper {get;set;}
    
    public dynamicController(){
    
        this.lstWrapper = new list<MyWrapper>();
        MyWrapper oMyWrapper = new MyWrapper ();
        oMyWrapper.sName='Test';
        oMyWrapper.isFlag=True;
        lstWrapper.add(oMyWrapper);
        
    }
    
    
    
    public PageReference addRecords() {
        MyWrapper oMyWrapper = new MyWrapper ();
        oMyWrapper.sName='Test';
        oMyWrapper.isFlag=True;
        lstWrapper.add(oMyWrapper);
        return null;
    }
    
    
    public class MyWrapper{
          public string sName{ get;set;}
          public boolean isFlag{get;set;}
      }

}