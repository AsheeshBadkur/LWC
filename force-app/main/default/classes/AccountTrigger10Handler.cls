public class AccountTrigger10Handler {
    public static boolean flag=false;
    
        public static void beforeInsert(List <Account> accList){
            if(!flag){
            flag=true;
            AccountTrigger10Helper.newAccType(accList);
        }
    }
}