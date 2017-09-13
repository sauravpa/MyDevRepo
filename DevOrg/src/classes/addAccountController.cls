public class addAccountController {

    public List<Account> myAccountL{get;set;}

    public PageReference addRow() {
    
        Account a= new Account();
        myAccountL.add(a);

        return null;
    }


    public addAccountController (){
       myAccountL=new List<Account>(); 
       Account a= new Account();
       myAccountL.add(a);
    }
}