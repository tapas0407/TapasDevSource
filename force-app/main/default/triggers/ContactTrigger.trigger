trigger ContactTrigger on Contact (before insert) {
    
    Set <Id> Id = new Set <Id>();
    for (Contact con : trigger.new ) {
        if (con.AccountId != null) {
            Id.add(con.AccountId);
        }
    }
    
    
    List <Contact>contactList = new List <Contact>();
    List <Account> accList = new List <Account> ();
    accList = [SELECT Id,(Select Id from Contacts) from Account where Id IN : Id];
    for (Account acc : accList) {
        for (Contact cont: acc.Contacts) {
            contactList.add(cont);
        }
    }
    
    for (Contact contact : trigger.new) {
        if (contactList.size() > 0) {
            contact.addError('You are not supposed to create Contacts');
        }
    }
    
}