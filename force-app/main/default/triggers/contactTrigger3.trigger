trigger contactTrigger3 on Contact (before insert,before update) {
 Set<ID> setId = new set<Id>();
    for(Contact objCon:trigger.new){
        if(objCon.AccountId!=null){
            setID.add(objCon.AccountId);   
        }
    }
    Map<Id,Account> mapAcc = new Map<Id,Account>([select ID,Name,Phone from Account where Id IN:setID]);
    if(!mapAcc.isEmpty()){
        for(Contact objCon:trigger.new){    
           if(mapAcc.containsKey(objCon.AccountId)&&mapAcc.get(objCon.AccountId).Phone!= Null){
                objCon.Phone= mapAcc.get(objCon.AccountId).Phone;
                    
                }
            }
        }
    }