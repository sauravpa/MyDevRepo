public with sharing class clscustomizeaccount {
    public string feedback{get;set;}
    public clscustomizeaccount(ApexPages.StandardController controller) {

    }
    public pagereference AccountSaving(){
    if(String.isblank(feedback))
        apexpages.AddMessage(new apexpages.message(apexpages.severity.fatal,'Account Feedback should not be blank'));
    return null;
    }
}