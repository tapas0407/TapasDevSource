@RestResource(urlMapping='/ContactAPI1/*')
global with sharing  class ContactResource {
    @HTTPGet
    global static List<Contact> getcontactList() {
        RestRequest contactRequest = Restcontext.request;
        Map <String, String> contactReqParams = contactRequest.params;
        String leadSource = contactReqParams.get('LeadSource');
        List <Contact> contactList = new List <Contact>();
        contactList = [SELECT Id, Name from Contact where LeadSource =: leadSource LIMIT 10 ];
        return contactList;
    }

}