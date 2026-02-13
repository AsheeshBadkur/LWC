trigger ApplicantTriggerdel on Applicant__c (before delete) {
    system.debug('record='+trigger.old);
    for(Applicant__c objApp:trigger.old){
        if(objApp.Police_Verification__c==True){
            objApp.addError('Police Verification Applicant Records cannot be Deleted');
        }
            
    }
}