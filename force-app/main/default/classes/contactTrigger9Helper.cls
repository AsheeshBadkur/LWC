public class contactTrigger9Helper {
    public static void countofContacts(List<Contact> conList){
        Set<Id> setAcc= new Set<Id>(); 
        for(contact objCon:conList){
            if(objCon.AccountId!=null){
                setAcc.add(objCon.AccountId);
                    }
        }
        
         Map<Id,Account> mapAcc=new Map<Id,Account>();
        for(Account objAcc:([select Id,Count_of_Contacts__c,(select Id from Contacts) from Account where ID IN:setAcc])){
         objAcc.Count_of_Contacts__c=objAcc.Contacts.size();
        mapAcc.put(objAcc.Id,objAcc);
        }
        if(!mapAcc.isEmpty()){
      DataBase.update(mapAcc.values(),false);  
        }
    }
}