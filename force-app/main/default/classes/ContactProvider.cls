public with sharing class ContactProvider {
    @AuraEnabled
    public static List<Contact> searchContacts() {
        try {
            return [SELECT Id, Name, Email, Phone FROM Contact ORDER BY CreatedDate DESC LIMIT 10];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}