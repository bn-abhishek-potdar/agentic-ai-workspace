@isTest
public class CasePriorityServiceTest {

    @isTest
    static void testVIPCustomer(){

        Case c = new Case(
            Subject = 'Normal Issue',
            VIP_Customer__c = true
        );

        insert c;

        System.assertEquals('High', c.Priority);
    }

    @isTest
    static void testUrgentCase(){

        Case c = new Case(
            Subject = 'Urgent: Payment failed'
        );

        insert c;

        System.assertEquals('High', c.Priority);
    }

    @isTest
    static void testNormalCase(){

        Case c = new Case(
            Subject = 'Login issue'
        );

        insert c;

        System.assertEquals('Medium', c.Priority);
    }
}