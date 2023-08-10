trigger OpportunityTrigger on Opportunity(before update, after update) {
    TriggerFactory.createTriggerDispatcher(Opportunity.sObjectType);
}
