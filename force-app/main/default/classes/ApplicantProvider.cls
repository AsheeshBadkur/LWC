public with sharing class ApplicantProvider {
    @AuraEnabled
   public static void createNewApplicant(Applicant__c dataApp){
        Database.insert(dataApp, false);
    }

@AuraEnabled
public static Applicant__c searchApplicant(String objAppSearch){

    Applicant__c objApp = [
        SELECT Id, First_Name__c, Last_Name__c, Gender__c, CreatedDate , DOB__c,Email_Id__c
        FROM Applicant__c
        WHERE Name = :objAppSearch
        LIMIT 1
    ];
return objApp;
}
@AuraEnabled
public static List<Applicant__c> getAllApplicants(Date fromDate, Date toDate){
    return [SELECT Id, First_Name__c, Last_Name__c, Gender__c, CreatedDate FROM Applicant__c WHERE CreatedDate >= :fromDate AND CreatedDate <= :toDate];
}
@AuraEnabled
public static List<Applicant__c> searchSuggestion(String searchKey) {
   return [SELECT Id, Name, First_Name__c FROM Applicant__c WHERE First_Name__c LIKE :searchKey + '%' ];
}
@AuraEnabled
public static List<Address__c> searchApplicantId(String applicantId){
    try {
    Applicant__c app = [  SELECT Id  FROM Applicant__c  WHERE Name = :applicantId LIMIT 1 ];
    return [
        SELECT Id, Address_Line_1__c, Address_Line_2__c, City__c, State__c FROM Address__c WHERE Appllicant__c = :app.Id ];
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
}
}