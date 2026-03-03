public class CasePriorityService {

    public static void applyPriority(List<Case> caseList) {

        for(Case c : caseList){

            if(c.VIP_Customer__c == true ||
               c.Product__c == 'Payment' ||
               (c.Subject != null && c.Subject.containsIgnoreCase('Urgent')))
            {
                c.Priority = 'High';
            }
            else{
                c.Priority = 'Medium';
            }
        }
    }
}