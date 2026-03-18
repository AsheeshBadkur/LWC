public without sharing class AccountProvider1 {
   @AuraEnabled
   public static string getUserName(){
    try {
        String UserName=[Select Id, Name from User where Id = :UserInfo.getUserId()].Name;
        return UserName;
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }
   @AuraEnabled
   public static List<Account> searchAccounts(){
    try {
        return[Select Id,Name,CreatedBy.Name from Account];
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }
  
}