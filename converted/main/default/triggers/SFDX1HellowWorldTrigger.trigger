trigger SFDX1HellowWorldTrigger on SFDX1_Desktop__c (before insert) {

   SFDX1_Desktop__c[] desktops = Trigger.new;

   SFDX1HelloWorld.applyDiscount(desktops);
}