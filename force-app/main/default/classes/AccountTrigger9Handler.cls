public class AccountTrigger9Handler {
    public static void beforeInsert(List <Account> accList){
       AccountTrigger9Helper.setRatinghot(accList);
        
}
    public static void beforeUpdate(List <Account> accList){
      AccountTrigger9Helper.setRatinghot(accList);        
}
}