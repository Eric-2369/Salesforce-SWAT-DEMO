public without sharing class OpportunityBeforeUpdateTriggerHandler extends TriggerHandlerBase {
    public override void mainEntry(TriggerParameters tp) {
        List<Opportunity> newOppoList = (List<Opportunity>) tp.newList;
        List<Opportunity> oldOppoList = (List<Opportunity>) tp.oldList;
        Map<Id, Opportunity> newOppoMap = (Map<Id, Opportunity>) tp.newMap;
        Map<Id, Opportunity> oldOppoMap = (Map<Id, Opportunity>) tp.oldMap;

        OpportunityService opportunityService = new OpportunityService();
    }
}
