trigger AccountTrigger on Account (before insert, after insert, before Update) {
    if(Trigger.isInsert){
        
        if(Trigger.isBefore){
            AccountTriggerHandler.updateDesc(Trigger.New);
            AccountTriggerHandler.populateRating(Trigger.New, null);
        }
        else if(Trigger.isAfter){
            AccountTriggerHandler.insertOpp(Trigger.New);
        }
    }
    
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            AccountTriggerHandler.updatePhone(Trigger.New, Trigger.oldMap);
            AccountTriggerHandler.populateRating(Trigger.New, Trigger.oldMap);
        }
        else if(Trigger.isAfter){
            AccountTriggerHandler.updateRelatedContact(Trigger.New, Trigger.oldMap);
        }
    }
}