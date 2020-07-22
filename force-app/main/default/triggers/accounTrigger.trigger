trigger accounTrigger on Account (after insert) {
    
    List <Contact>contactList = new List<Contact>();
    //List<Account> accList = [SELECT id from Account where Id =: trigger.new];
    
    for(Account a : trigger.new) {
        Contact con = new Contact();
        con.lastName = 'Test';
        con.accountId = a.Id;
        contactList.add(con);
        
    }
    insert  contactList;
    
}