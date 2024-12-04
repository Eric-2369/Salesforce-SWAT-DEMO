/**
 * Created by eric2369 on 12/4/24.
 */

public with sharing class OpportunityController {
    @TestVisible
    private static OpportunityService opportunityService = new OpportunityService();

    @AuraEnabled(Cacheable=true)
    public static List<String> getOfficeList() {
        return opportunityService.getOfficeList();
    }

    @AuraEnabled(Cacheable=false)
    public static void syncToStaffingRequest(Id opportunityId, String operatorUsername) {
        opportunityService.syncToStaffingRequest(opportunityId, operatorUsername);
    }

    @AuraEnabled(Cacheable=false)
    public static Integer getStaffingRequestCount(Id opportunityId) {
        return opportunityService.getStaffingRequestCount(opportunityId);
    }

    @AuraEnabled(Cacheable=false)
    public static Boolean getPartnershipEditAccess(Id opportunityId, Id userId) {
        return opportunityService.getPartnershipEditAccess(opportunityId, userId);
    }

    @AuraEnabled(Cacheable=false)
    public static List<Opportunity> getOpenedOpportunitiesBasicWithOwnerIds(List<Id> ownerIds) {
        return opportunityService.getOpenedOpportunitiesBasicWithOwnerIds(ownerIds);
    }

    @AuraEnabled(Cacheable=false)
    public static List<Opportunity> getOpportunitiesWithOwnerIdsExceptClosedLost(List<Id> ownerIds) {
        return opportunityService.getOpportunitiesWithOwnerIdsExceptClosedLost(ownerIds);
    }

    @AuraEnabled(Cacheable=false)
    public static Map<String, Map<String, List<Opportunity>>> getGroupedThisYearOpportunitiesByOwnerIds(List<Id> ownerIds) {
        return opportunityService.getGroupedThisYearOpportunitiesByOwnerIds(ownerIds);
    }


}
