trigger AccountTrigger8 on Account (before insert, before update) {

    Map<Id, Account> mapAcc = Trigger.newMap;
    List<Opportunity> listOpp = new List<Opportunity>();

    for (Opportunity objOpp : [
        SELECT Id, StageName, AccountId
        FROM Opportunity
        WHERE AccountId IN :mapAcc.keySet()
        AND StageName = 'Closed Lost'
    ]) {
        listOpp.add(objOpp);
    }

    if (!listOpp.isEmpty()) {
        for (Opportunity objOpp : listOpp) {
            if (mapAcc.containsKey(objOpp.AccountId)) {
                if (mapAcc.get(objOpp.AccountId).Type == 'Prospect') {
                    mapAcc.get(objOpp.AccountId).Rating = 'Hot';
                } else {
                    mapAcc.get(objOpp.AccountId).Rating = null;
                }
            }
        }
    }
}