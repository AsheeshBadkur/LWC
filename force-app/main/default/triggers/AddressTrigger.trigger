trigger AddressTrigger on Address__c (after insert,after update,after delete,after undelete) {
if(trigger.isInsert && trigger.isafter){
        AddressTriggerHandler.afterInsert(trigger.new);
    }
      if(trigger.isUpdate && trigger.isafter){
        AddressTriggerHandler.afterUpdate(trigger.new);
    }
      if(trigger.isDelete && trigger.isafter){
        AddressTriggerHandler.afterDelete(trigger.old);
    }
      if(trigger.isUndelete && trigger.isafter){
        AddressTriggerHandler.afterUndelete(trigger.new);
    }
}