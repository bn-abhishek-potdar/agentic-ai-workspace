trigger CasePriorityTrigger on Case (before insert, before update) {

    if(Trigger.isBefore){
        CasePriorityService.applyPriority(Trigger.new);
    }
}