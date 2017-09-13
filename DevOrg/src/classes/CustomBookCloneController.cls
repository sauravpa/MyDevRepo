public with sharing class CustomBookCloneController {

    //Param for old Record Id
    public Id parentRecId {get;set;}
    //Constractor
    public CustomBookCloneController(ApexPages.StandardController controller) {
        parentRecId = controller.getRecord().id;

    }
    public void cloneBook(){
    
        Map<String,String> cloneConfigCS = new Map<String,String> ();
        List<Book__c> currentBook = [SELECT Amount__c,Checked__c,Date__c,Discount__c,Id,Name,OwnerId,Price__c FROM Book__c WHERE Id =:parentRecId ];
        String amount = String.valueOf(currentBook.get(0).Amount__c);
        List<CloneConfig__c> cloneConfigvalue = [SELECT Fields__c,Id,Name,Object_Name__c FROM CloneConfig__c WHERE Object_Name__c = 'Book__c'];
        Set<String> fieldValue  = new Set<String>();
        for(CloneConfig__c currConfig : cloneConfigvalue ){
            fieldValue.addAll(currConfig.Fields__c.split(';'));
        }
        
        
        
    }
}