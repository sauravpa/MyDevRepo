public with sharing class leadCreationController {
        public String lastname {get;set;}
        public String email{get;set;}
        public String leadStatus;
        public Lead newLead{get;set;}
        public Boolean isSave{get;set;}
        public Boolean isSearch{get;set;}
        public List<lead> leadResult{get;set;}
        public List<contact> contactResult{get;set;}
    public leadCreationController(ApexPages.StandardController controller) {
        isSave=false;
        isSearch=true;
        System.debug('++++isSave++++'+isSave);
    }
    public PageReference search(){
        leadResult=[Select id,Name,Email from Lead where lastname =:lastname or Email=:email];
        System.debug('++++result Lead++++'+leadResult);
        contactResult=[Select id,Name,Email from contact where lastname =:lastname or Email=:email];
        isSave=true;
        isSearch=false;
        System.debug('++++isSave++++'+isSave);
        return null;
    }    
}