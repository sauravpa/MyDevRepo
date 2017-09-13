public with sharing class AccountSearchController {

    public List<Account> allAccount;
    public AccountSearchController(ApexPages.StandardController controller) {
    }
    public List<Account> getAllAccount(){
        List<Account> myAccList=new List<Account>();
        myAccList=[Select Name from Account];
        return myAccList;
    }
    public void setAllAccount(){
        this.AllAccount=AllAccount;
    }
}