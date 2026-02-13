trigger AccountTrigger6 on Account (before insert,before update,after undelete){
    
    Set<String> setAcc=new Set<String>(); 
    for(Account objAcc:trigger.new){
        if(!String.isBlank(objAcc.Name)){
            setAcc.add(objAcc.Name);
        }  
    }
    Map<String,Account> mapAcc=new Map<String,Account>();
    for(Account objAcc:[select Id,Name from Account where Name IN:setAcc]){
        mapAcc.put(objAcc.Name,objAcc);
    }
    if(!mapAcc.isEmpty()){
        for(Account objAcc:trigger.new){
            if(mapAcc.containsKey(objAcc.Name)){
                objAcc.addError(objAcc.Name +'Record is already Exist');
            }
        }
    }
    
}