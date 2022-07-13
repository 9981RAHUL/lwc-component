public class PandCsoql {
    
    Public void Dumb()
    {
        
        List<Contact> Jbl = [SELECT Account.Name, Account.Phone, (SELECT Id,subject, caseNumber FROM Cases) FROM Contact];
        for(Contact kvl : Jbl){
            
            system.debug('account name'+kvl.Account.Name + kvl.Account.Phone);
            
            for(Case Ipl : kvl.Cases){
                system.debug('Case Subject'+ Ipl.Subject + 'Case Number'+ Ipl.caseNumber);
            }
            }
        
        
            
        
        
    }

}