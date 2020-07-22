public class GetContactsUser {
    
    @AuraEnabled
    public static List<Contact> getContactList (String search) {
        List <Contact> ContactList = new List <Contact>();
        if(search != '') {
            String filterCriteria = 'SELECT Id, Name from Contact';
            String query =filterCriteria + ' '+'where name like \'%' + search +'%\'';
            System.debug('query'+query);
        	ContactList = database.query(query);
            System.debug('ContactList'+ContactList);
        }
        
        return ContactList;
            
    }

}