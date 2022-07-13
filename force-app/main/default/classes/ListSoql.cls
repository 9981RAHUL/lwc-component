public class ListSoql {
    
    Public void shadow()
    {
        
        Map<Id, Account> AL = New Map<Id, Account>();
        
        AL.putall([SELECT Name from Account]);
        system.debug(AL.keyset());
        
        for(Account acc : AL.values())
        {
            
            system.debug('account name'+acc.Name);
        }
    }

}