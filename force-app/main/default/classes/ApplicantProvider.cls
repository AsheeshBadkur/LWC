public with sharing class ApplicantProvider {
    @AuraEnabled
   public static void createNewApplicant(Applicant__c dataApp){
        Database.insert(dataApp, false);
    }

@AuraEnabled
public static Applicant__c searchApplicant(String objAppSearch){

    Applicant__c objApp = [
        SELECT Id, First_Name__c, Last_Name__c, Gender__c, CreatedDate
        FROM Applicant__c
        WHERE Name = :objAppSearch
        LIMIT 1
    ];
return objApp;
}
}