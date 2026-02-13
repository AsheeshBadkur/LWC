trigger ApplicantTrigger on Applicant__c (before insert, before update ) {
    
    system.debug('record='+trigger.new);
    
    for(Applicant__c objApp:trigger.new){
        if(objApp.Gender__c=='Male'&&!objApp.First_Name__c.startswith('Mr.')){
            objApp.First_Name__c='Mr.'+objApp.First_Name__c;
            
    } else if(objApp.Gender__c=='Female'&&!objApp.First_Name__c.startswith('Ms.')){
            objApp.First_Name__c='Ms.'+objApp.First_Name__c;
        
               }else{
                    objApp.Gender__c.addError('Transgender is not allowed');
                }
        
    }

}