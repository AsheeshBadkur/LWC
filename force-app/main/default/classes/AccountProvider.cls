public with sharing class AccountProvider {
    @AuraEnabled
    public static void createNewAccount(Account accData){
        Database.insert(accData, false);
    }
    @AuraEnabled
public static Account searchAccount(String objAccSearch){

    Account objAcc = [
        SELECT  Name, Rating, SLA__C, CreatedDate
        FROM Account
        WHERE Name = :objAccSearch
        LIMIT 1
    ];
return objAcc;
}

@AuraEnabled
public static void deleteAccount(Account delAcc){
    Database.delete(delAcc,false);
}
@AuraEnabled
public static Account updateAccount(Account accData){
    Database.update(accData,false);
    return accData;
}
@AuraEnabled
public static List<Contact> searchAccountId(Account accountId){
    try {
    Account acc = [  SELECT Id  FROM Account  WHERE Name = :accountId.Name LIMIT 1 ];
    return [ SELECT Id, Name, Phone, Level__c, Fax FROM Contact WHERE AccountId = :acc.Id ];
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
}
@AuraEnabled
public static List<Account> typeAccount(Account objAcc){
    try {
        return [SELECT Name, Rating,SLA__c,CreatedDate,Type FROM Account WHERE Type = :objAcc.Type];
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
}
}
