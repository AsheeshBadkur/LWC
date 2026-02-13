trigger Ctrigger on Contact (after insert , after update) {
    set<ID> setId = new set<Id>();
    
    for( Contact objCon: trigger.new){
        if(objCon.AccountId!=null){
            setID.add(objCon.AccountId);   
        }
    }
    
    Map<Id,Account> mapAcc = new Map<Id,Account>([select ID,Name,Description from Account where Id IN:setID]);
    if(!mapAcc.isEmpty()){
        for(Contact objCon:trigger.new){
            
            if(mapAcc.containsKey(objCon.AccountId)){
                mapAcc.get(objCon.AccountId).Description = objCon.FirstName+' '+objCon.LastName;
          
            }
        }
        DataBase.update(mapAcc.Values(),false);
    }
    
}