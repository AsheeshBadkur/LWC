trigger AccountTrigger9 on Account (before insert,before update) {
    if(trigger.isInsert&&trigger.isBefore){
        AccountTrigger9Handler.beforeInsert(trigger.new);
    }
    if(trigger.isUpdate&&trigger.isBefore){
        AccountTrigger9Handler.beforeUpdate(trigger.new);
    }
}