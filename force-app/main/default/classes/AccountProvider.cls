public with sharing class AccountProvider {
    @AuraEnabled
    public static void createNewAccount(Account accData){
        Database.insert(accData, false);
    }
}