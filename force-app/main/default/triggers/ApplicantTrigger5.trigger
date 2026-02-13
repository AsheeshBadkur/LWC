trigger ApplicantTrigger5 on Applicant__c (before insert,before update) {
    Set<Decimal> setApp=new Set<Decimal>();
    for(Applicant__c objApp:trigger.new){
            setApp.add(objApp.Car_Loan_Amount__c);
}
           
        Database.delete([select Id,Car_Loan_Amount__c from Applicant__c where Car_Loan_Amount__c IN:setApp],false);
}