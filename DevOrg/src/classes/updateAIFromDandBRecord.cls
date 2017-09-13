public class updateAIFromDandBRecord{

    public void updateAccountIndustry(Map <ID,Account> allAccountMap){
        
        system.debug('---allAccountMap#1---' + allAccountMap);
        
        List<Account> allAccount=[Select name,id,Sic,Industry from account where id in:allAccountMap.keySet()];        
        
        For(Account currAccount : allAccount){
            currAccount.Industry='Agriculture';
            
            
        }
        
        system.debug('---allAccountMap#2---' + allAccountMap);        
    }
}