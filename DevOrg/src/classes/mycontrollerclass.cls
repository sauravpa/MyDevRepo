public with sharing class mycontrollerclass {

    public mycontrollerclass(ApexPages.StandardController controller) {
    
    }


    
    public PageReference edit() {
        
        return null;
    }


    
    public string SelectedRecordId { get; set; }
    List<Member_information__c> allMember{get; set;}
    
    
    public List<Member_information__c> getAllMember() {
    
        allMember = new List<Member_information__c>();
        allMember.add(new Member_information__c());
      // allMember = [select Name__c,Phone__c from Member_information__c];
        return allMember ;
    } 
    
     public List<Member_information__c> getAlMember() {
    
        alMember = new List<Member_information__c>();
        //alMember.add(new Member_information__c());
        allMember.add(new Member_information__c());
        //alMember = [select Name__c,Phone__c from Member_information__c];
        return alMember ;
    }
 
   
    
    List<Member_information__c> alMember{get; set;}
    public mycontrollerclass(){
    allMember = new List<Member_information__c>();
    allMember.add(new Member_information__c());
    } 
    
    public PageReference newrec() {
        return null;
    }


    public PageReference Cancel() {
        return null;
    }

   public PageReference save() {
        
        upsert allMember; 
        return null;
    }
    public void DeleteRecord(){
    if (SelectedRecordId == null) {
            return;
        }
      Member_information__c tobeDeleted = null;
      for(Member_information__c a : alMember ){
          if (a.Id == SelectedRecordId) {
                tobeDeleted = a;
                break;
            }
            if (tobeDeleted != null) {
                Delete tobeDeleted;
            }
      }
      getAlMember();
    }


}