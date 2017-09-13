/*
* Class level comment
* This class has been created  by Me
* Created Date : 20th August
*	Modification Date : 
*/
public class AccountIndustryUpdate{ 
    public void industryUpdate(List<Account> allNewAcc ,Map<Id,Account> oldAccMap){
    Map<String,Sic_Industry__c> industryCS = new Map<String,Sic_Industry__c>();//
    industryCS = Sic_Industry__c.getAll();
    
    for(Account currAccount :allNewAcc){
        System.debug('++current Account++'+currAccount.name);
        if(industryCS.containsKey(currAccount.Sic)){
            System.debug('+++SIC code value present in CS++++');
            if(oldAccMap.containsKey(currAccount.ID)){
                System.debug('Old Account   '+currAccount.name);
                if(currAccount.Sic!=String.valueOf(industryCS.get(currAccount.Sic).SIC_Code__c)){
                    System.debug('++++Different sic code++++');
                    currAccount.Industry=industryCS.get(currAccount.Sic).Industry__c;
                    System.debug('+++++new Industry code++++'+currAccount.Industry);
                }
                System.debug('++++SIC coed is Same for this Account+++++'+currAccount.name);
            }else{
                System.debug('+++++new Account+++');
                currAccount.Industry=industryCS.get(currAccount.Sic).Industry__c;
                System.debug('+++++Industry of new Account+++'+currAccount.Industry);
            }
        }
        System.debug('++++Given SIC code is not present in CS+++');
    }
}
}