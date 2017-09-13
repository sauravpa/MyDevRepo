public with sharing class deleteRequestController {

    
    public Delete_Request__c currDelete;
    public String idValue;
    public String approverId;
    public Boolean isConfirm {get;set;}
    public PageReference save() {
        idValue=ApexPages.currentPage().getParameters().get('id');
        approverId=ApexPages.currentPage().getParameters().get('ApproverId');
        currDelete = new Delete_Request__c();
        currDelete.Record_Id__c=idValue;
        currDelete.OwnerId=approverId;
        Upsert currDelete Record_Id__c;
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,'Delete request has been submitted'));
        isConfirm = True; 
        /* Send Email functionality*/
        /*Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        List<User> currUser=[Select Id,Email from user where Id=:approverId];
        List<String> userEmail = new List<String>();
        userEmail.add(currUser[0].Email);
        message.setTargetObjectId(approverId);
        message.SettoAddresses(userEmail);
        //message.optOutPolicy = 'FILTER';
        //message.subject = 'Delete Request has been Submitted';
        //message.plainTextBody = 'Delete request has been submitted';
        /*message.saveAsActivity = false;
        message.setWhatId(currDelete.Id);
        message.setTemplateId('00X90000001yjRX');
        Messaging.SingleEmailMessage[] messages =   new List<Messaging.SingleEmailMessage> {message};
        Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
        
        if (results[0].success) {
            System.debug('The email was sent successfully.');
        } else {
            System.debug('The email failed to send: ' + results[0].errors[0].message);
        }
        /* Send Email functionality*/     
        return null;
    }
    
    public PageReference goBack() {
        idValue=ApexPages.currentPage().getParameters().get('id');
        PageReference recordDetailPage= new PageReference('/'+idValue);
        return recordDetailPage;
    }


}