public class createAccountController{
    @AuraEnabled
    public static List<RecordType> accountrecordTypes() {
        List<RecordType> accrecordTypes= [SELECT Id,Name FROM RecordType WHERE SobjectType = 'Account'];
        return accrecordTypes;
    }
}