trigger AccountTrigger3 on Account (before update) {
system.debug('record='+trigger.new);
    
    for(Account objAcc:trigger.old){
        if(objAcc.Rating=='Hot'){
            objAcc.addError('Rating cant be updated to hot ');
        }
    }
}