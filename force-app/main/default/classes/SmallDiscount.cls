public with sharing class SmallDiscount  implements IDiscount {

    public Decimal calculateDiscount(Decimal oppAmount){
        return oppAmount - (oppAmount * .25);
    }
    
}