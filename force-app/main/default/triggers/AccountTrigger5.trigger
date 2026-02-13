trigger AccountTrigger5 on Account (before insert,before update) {
    Set<String> setAcc=new Set<String>();
    for(Account objAcc:trigger.new){
            setAcc.add(objAcc.Name);
}
            List<Account> listAcc=[select Id,Name from Account where Name IN:setAcc];
    if(!listAcc.isEmpty()){
        Database.delete(listAcc,false);
} 
}