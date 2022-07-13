trigger ContactTrigger on Contact (After insert, After update, After delete, After undelete ) {
    
    Switch on Trigger.operationType{
        when AFTER_INSERT{
            for(Contact con : Trigger.new){
                if(String.isNotBlank(con.AccountId)){
                    //write automation logic here
                    string accountId = con.AccountId;
                    List<AggregateResult> Results = [SELECT AccountId, COUNT(ID) totalContact FROM Contact WHERE Active__c  = true AND AccountId =: accountId GROUP BY AccountId];     
                    for(AggregateResult result : Results){
                        string accId = string.valueOf(result.get('AccountId'));
                        Integer totalContact = Integer.valueOf(result.get('totalContact'));
                        
                        Account acc = new Account(Id=accId, Active_Contacts__c=totalContact);
                        update acc;
                        
                    }
                    
                }
                
            }
        }
        
    }
    
    
}