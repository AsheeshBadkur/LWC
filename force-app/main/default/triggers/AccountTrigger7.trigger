trigger AccountTrigger7 on Account (before insert,before update,after undelete){
    
    Set<String> setAcc=new Set<String>();
    set<String> setAcc1=new Set<String>();
    
    for(Account objAcc:trigger.new){
        if(!String.isBlank(objAcc.Name)&&!String.isBlank(objAcc.Rating)){
            setAcc.add(objAcc.Name);
            setAcc1.add(objAcc.Rating);
        }  
    }
    Map<String,Account> mapAcc=new Map<String,Account>();
    Map<String,Account> mapAcc1=new Map<String,Account>();
    
    for(Account objAcc:[select Id,Name,Rating from Account where Name IN:setAcc and Rating IN:setAcc1]){
        mapAcc.put(objAcc.Name,objAcc);
        mapAcc1.put(objAcc.Rating,objAcc);
    }
    if(!mapAcc.isEmpty()){
        for(Account objAcc:trigger.new){
            if(mapAcc.containsKey(objAcc.Name)&&mapAcc1.containsKey(objAcc.Rating)){
                objAcc.addError(objAcc.Name+ ' ' +objAcc.Rating+ ' cannot be saved Already Exist');
            }
        }
    }
    
}