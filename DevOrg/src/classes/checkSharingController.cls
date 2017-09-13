public class checkSharingController {
    public String fieldVal;
    public List<Account> myAccList;
    
    public String getfieldVal(){
        return 'Here';
    }
    
    public List<Account> getMyAccList(){
        List<Account> myAcc = [SELECT Id,Name,AccountNumber FROM Account WHERE Id='0019000001rYZgC'];
        return myAcc ;
    }

}