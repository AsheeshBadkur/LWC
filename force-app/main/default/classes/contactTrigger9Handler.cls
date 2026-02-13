public class contactTrigger9Handler {
    public static void afterInsert( List<Contact> conList){
        contactTrigger9Helper.countofContacts(conList);
    }
    public static void afterUpdate( List<Contact> conList){
        contactTrigger9Helper.countofContacts(conList);
    }    
    public static void afterDelete( List<Contact> conList){
        contactTrigger9Helper.countofContacts(conList);        
    }   
    public static void afterUndelete( List<Contact> conList){
        contactTrigger9Helper.countofContacts(conList);
    }   
}