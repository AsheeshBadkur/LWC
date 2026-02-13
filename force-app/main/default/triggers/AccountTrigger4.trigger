trigger AccountTrigger4 on Account (before update) {

    
    for(Account objAcc:trigger.new){
        if(objAcc.Rating=='Cold'&& trigger.oldmap.get(objAcc.Id).Rating=='Warm'){
           objAcc.addError('You cannot change rating to warm to cold');
        }
    }
}