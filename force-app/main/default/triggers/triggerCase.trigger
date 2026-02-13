trigger triggerCase on Case (after insert,after update) {
    set<Id> setAcc=new set<Id>();
    for(Case objCase:trigger.new){
        if(objCase.AccountId!=null){
            setAcc.add(objCase.AccountId);
        }
    }
    Map<Id,Account> mapAcc = new Map<Id,Account>([select ID,Name,SLA__c,Description from Account where Id IN:setAcc]);
    if(!mapAcc.isEmpty()){
        for(Case objCase:trigger.new){
            if(mapAcc.containsKey(objCase.AccountId)){
                if(objCase.Status=='Escalated'){
                    mapAcc.get(objCase.AccountId).SLA__c='Bronze';
                    mapAcc.get(objCase.AccountId).Description='Gaya Kaam se'+' '+objCase.CaseNumber;
                }
                else{
                    mapAcc.get(objCase.AccountId).SLA__c='';
                    mapAcc.get(objCase.AccountId).Description='';
                }
                
            }
        }
        DataBase.update(mapAcc.Values(),false);
    }
}