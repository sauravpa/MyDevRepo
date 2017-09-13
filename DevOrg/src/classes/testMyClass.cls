@isTest
public class testMyClass{
    static testMethod void myMeth(){
        Test.startTest();
            Integer i = 2+3;
        Test.stopTest();
        
        Test.startTest();
            Integer j = 2+3;
        Test.stopTest();
    }
}