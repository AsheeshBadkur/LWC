public class AddressTriggerHandler {

    public static void afterInsert(List<Address__c> addList){
        AddressTriggerHelper.countOfAddress(addList);
    }

    public static void afterUpdate(List<Address__c> addList){
        AddressTriggerHelper.countOfAddress(addList);
    }

    public static void afterDelete(List<Address__c> addList){
        AddressTriggerHelper.countOfAddress(addList);
    }

    public static void afterUndelete(List<Address__c> addList){
        AddressTriggerHelper.countOfAddress(addList);
    }
}