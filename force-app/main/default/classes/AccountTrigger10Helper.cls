public class AccountTrigger10Helper {
    public static void newAccType(List <Account> accList){
        if(!accList.isEmpty()){
            List <Account> accNewlist=new List <Account>();
            for(Account objAcc:accList){
                if(objAcc.Type=='Prospect'){
                    Account objNewAcc=new Account(Name='ABC',Type='Prospect');
                    accNewlist.add(objNewAcc);
                }
                
            }
            insert accNewList;
            
        }
        
    }
}