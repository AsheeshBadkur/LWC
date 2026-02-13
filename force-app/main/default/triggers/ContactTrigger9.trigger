trigger ContactTrigger9 on Contact (after insert,after update,after delete,after undelete) {
    if(trigger.isInsert && trigger.isafter){
        contactTrigger9Handler.afterInsert(trigger.new);
    }
      if(trigger.isUpdate && trigger.isafter){
        contactTrigger9Handler.afterUpdate(trigger.new);
    }
      if(trigger.isDelete && trigger.isafter){
        contactTrigger9Handler.afterDelete(trigger.old);
    }
      if(trigger.isUndelete && trigger.isafter){
        contactTrigger9Handler.afterUndelete(trigger.new);
    }
}