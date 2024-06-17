/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-17-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class DiscountFactory {

   public static IDiscount getDiscount(Decimal amount){
    if(amount >= 1000.00){
        return  new BigDiscount();

    }else if (amount >= 500.00){
        return new StandardDiscount();

    }else{
        return new SmallDiscount();
    }
   }
}