trigger Building on Building__c (before insert, before update) {
    
   if(Trigger.isInsert || Trigger.isUpdate)
   {
    for(Building__c build : Trigger.new)
    { 
        if(string.isBlank(build.Building_number__c))            
        {
            build.Building_number__c = '5';
        }
        
        if(String.isBlank(build.CurrencyIsoCode))
        {
            build.addError('Plz update correct value');
        }
        
    }
   }
    

}