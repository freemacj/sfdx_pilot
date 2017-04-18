@isTest 
private class SFDX1HelloWorldTestClass {
    static testMethod void validateSFDX1HelloWorld() {
       SFDX1_Desktop__c d = new SFDX1_Desktop__c(Name='Apple', SFDX1_Price__c =100);
       System.debug('Price before inserting new desktop: ' + d.SFDX1_Price__c);

       // Insert book
       insert d;
    
       // Retrieve the new book
       d = [SELECT SFDX1_Price__c FROM SFDX1_Desktop__c WHERE Id =:d.Id];
       System.debug('Price after trigger fired: ' + d.SFDX1_Price__c);

       // Test that the trigger correctly updated the price
       System.assertEquals(90, d.SFDX1_Price__c);
    }
}