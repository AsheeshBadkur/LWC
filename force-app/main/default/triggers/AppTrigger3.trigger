trigger AppTrigger3 on Applicant__c (after insert, after update) {

    List<Messaging.SingleEmailMessage> mailList = new List<Messaging.SingleEmailMessage>();

    for (Applicant__c objApp : Trigger.new) {

        // AFTER INSERT
        if (Trigger.isAfter && Trigger.isInsert) {

            if (objApp.Police_Verification__c) {

                if (String.isNotBlank(objApp.Email_ID__c)) {

                    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                    mail.setToAddresses(new String[] { objApp.Email_ID__c });
                    mail.setSenderDisplayName(objApp.First_Name__c);
                    mail.setSubject('Police Verification Completed');
                    mail.setPlainTextBody(
                        'Police Verification is Completed\n' +
                        'Name = ' + objApp.First_Name__c + '\n' +
                        'Gender = ' + objApp.Gender__c
                    );

                    mailList.add(mail);
                }
            }
        }

        // AFTER UPDATE
        if (Trigger.isAfter && Trigger.isUpdate) {

            if (objApp.Police_Verification__c &&
                !Trigger.oldMap.get(objApp.Id).Police_Verification__c) {

                if (String.isNotBlank(objApp.Email_ID__c)) {

                    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                    mail.setToAddresses(new String[] { objApp.Email_ID__c });
                    mail.setSenderDisplayName(objApp.First_Name__c);
                    mail.setSubject('Police Verification Completed');
                    mail.setPlainTextBody(
                        'Police Verification is Completed\n' +
                        'Name = ' + objApp.First_Name__c + '\n' +
                        'Gender = ' + objApp.Gender__c
                    );

                    mailList.add(mail);
                }
            }
        }
    }

    if (!mailList.isEmpty()) {
        Messaging.sendEmail(mailList, false);
    }
}