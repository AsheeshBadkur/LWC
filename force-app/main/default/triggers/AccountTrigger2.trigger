trigger AccountTrigger2 on Account (before insert, before update) {

    System.debug('record=' + Trigger.new);

    for (Account objAcc : Trigger.new) {

        if (!String.isBlank(objAcc.Type) && !String.isBlank(objAcc.Rating)) {

            if (objAcc.Type == 'Prospect' && objAcc.Rating == 'Hot') {
                objAcc.SLA__c = 'Gold';

            } else if (objAcc.Type == 'Customer - Direct' && objAcc.Rating == 'Cold') {
                objAcc.SLA__c = 'Silver';
            }

        }
    }
}