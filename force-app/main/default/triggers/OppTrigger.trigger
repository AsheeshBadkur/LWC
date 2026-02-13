trigger OppTrigger on Opportunity (before delete) {
    system.debug('record='+trigger.old);
    List<OppBackup__c> listOpp =new list<OppBackup__c>();
    
    
    for(Opportunity objNew:trigger.old) {
        OppBackup__c objOpp=new OppBackup__c();
    objOpp.Opportunity_Old_Name__c=objNew.Name;
    objOpp.Close_Date__c= objNew.CloseDate;
    objOpp.Stage__c= objNew.StageName;
    
        listOpp.add(objOpp);
        
                  
    }
    if(!listOpp.isEmpty()){
        Database.insert(listOpp);
    }
}