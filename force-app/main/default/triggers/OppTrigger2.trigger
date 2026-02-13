trigger OppTrigger2 on Opportunity (before update) {
for(Opportunity objOpp:trigger.new){
        if(objOpp.StageName=='Closed Won'&& trigger.oldmap.get(objOpp.Id).StageName=='Closed Lost'){
           objOpp.description='Yahoo';
        }
    }
}