/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-17-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class DiscountCalculator {
    private Opportunity opp;
    


    public DiscountCalculator(Opportunity opp) {
        this.opp = opp;
        this.discount = DiscountFactory.getDiscount(opp.Amount);
        
    }
    public Decimal discountOpportunity(){
        Decimal result = discount.calculateDiscount(oppAmount, this.opp.Amount);
        return result;
    }
}