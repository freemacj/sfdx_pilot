public class SFDX1HelloWorld {
   public static void applyDiscount(SFDX1_Desktop__c[] desktop) {
      for (SFDX1_Desktop__c d :desktop){
         d.SFDX1_Price__c *= 0.9;
      }
   }
}