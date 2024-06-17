/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an org are executed whenever Apex code is deployed
 * to a production org to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production org. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the org size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class DiscountCalculator_Test {

    @isTest
    static void testStandardDiscount() {
        // TO DO: implement unit test
        //Given
        Opportunity opportunity = new Opportunity();
        opportunity.Account = 500.00;
        IDiscount standard = new StandardDiscount();
        DiscountCalculator calculator = new DiscountCalculator(opportunity);
        //When
        Test.startTest();
        Decimal result = calculator.discountOpportunity();
        Test.stopTest();

        System.assertEquals(475.00, result, 'Its should return a %5 discount' );

        
    }

    @isTest
    static void testBigDiscount() {
        // TO DO: implement unit test
        //Given
        Opportunity opportunity = new Opportunity();
        opportunity.Account = 1000.00;
        DiscountCalculator calculator = new DiscountCalculator(opportunity);
        //When
        Test.startTest();
        Decimal result = calculator.discountOpportunity();
        Test.stopTest();

        System.assertEquals(900.00, result, 'Its should return a %5 discount' );

        
    }
}