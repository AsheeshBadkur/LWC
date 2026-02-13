public class AddressTriggerHelper {
    public static void countOfAddress(List<Address__c> addList){
        Set<Id> setApp = new Set<Id>();
        for(Address__c objAdd : addList){
            if(objAdd.Appllicant__c != null){
                setApp.add(objAdd.Appllicant__c);
            }
        }
        if(setApp.isEmpty()){
            return;
        }
        Map<Id, Applicant__c> mapApp = new Map<Id, Applicant__c>();
        for(Applicant__c objApp : [SELECT Id, Count_of_Addresses__c, (SELECT Id FROM Addresses__r) FROM Applicant__c WHERE Id IN :setApp]){
            objApp.Count_of_Addresses__c = objApp.Addresses__r.size();
            mapApp.put(objApp.Id, objApp);
        }        
        if(!mapApp.isEmpty()){
            Database.update(mapApp.values(), false);
        }
    }
}