trigger AccountTrigger10 on Account (before insert) {
    if(trigger.isInsert && trigger.isBefore){
        AccountTrigger10Handler.beforeInsert(trigger.new);
    }
}