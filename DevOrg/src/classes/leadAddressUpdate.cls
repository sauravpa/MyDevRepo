public class leadAddressUpdate{
    public Map<String,String> countryMap;
    public leadAddressUpdate(){
    
    }
    Public void addressUpdate(List<Lead> listLead ){
       List<address__c > addList=new List<address__c >([SELECT ISO_code__c,Country__c FROM address__c]);
       countryMap=new Map<String,String>();
       for(address__c currAdd:addList){
          countryMap.put(currAdd.Country__c ,currAdd.ISO_code__c); 
       }
       
       for(Lead currLead  :listLead ){
           System.debug('value before insert'+currLead.Country);
           currLead.Country=countryMap.get(currLead.Country);
           System.debug('value after insert'+currLead.Country);
       }
    }
}