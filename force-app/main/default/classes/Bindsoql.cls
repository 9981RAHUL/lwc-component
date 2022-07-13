public class Bindsoql {
    
    Public void Testing()
    {
        
        List<String> accountNames = New List<String>();
        accountNames.add('Dickenson plc');
        accountNames.add('Edge Communications');
        accountNames.add('Grand Hotels & Resorts Ltd');
        accountNames.add('Burlington Textiles Corp of America');
        
        
        List<Account> YY = [SELECT Id, Name, Rating FROM Account where Name IN:accountNames];
        System.debug('call account obj'+ YY);
        
        
        
        
    }

}