trigger ApplicantTrigger6 on Applicant__c (before insert,before update,after undelete) {
Set<Decimal> setApp=new Set<Decimal>(); 
    for(Applicant__c objApp:trigger.new){
        if(objApp.Home_Loan_Amount__c!=Null){
            setApp.add(objApp.Home_Loan_Amount__c);
        }  
    }
    Map<Decimal,Applicant__c> mapApp=new Map<Decimal,Applicant__c>();
    for(Applicant__c objApp:[select Id,Home_Loan_Amount__c from Applicant__c where Home_Loan_Amount__c IN:setApp]){
        mapApp.put(objApp.Home_Loan_Amount__c,objApp);
    }
    if(!mapApp.isEmpty()){
        for(Applicant__c objApp:trigger.new){
            if(mapApp.containsKey(objApp.Home_Loan_Amount__c)){
                objApp.addError(objApp.Home_Loan_Amount__c + ' Record is already Exist in Applicant');
            }
        }
    }
}