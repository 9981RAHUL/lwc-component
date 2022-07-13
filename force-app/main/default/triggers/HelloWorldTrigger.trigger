trigger HelloWorldTrigger on Account (before insert) {
    
    for(Account a : Trigger.New){
        
        a.Rating = 'Warm';    }
    
    
        //System.debug('Hello World!');

}