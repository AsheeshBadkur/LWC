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
}