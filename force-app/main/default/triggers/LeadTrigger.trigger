trigger LeadTrigger on Lead (before insert, before update, after update) {
    
    //system.debug('Lead trigger called');
    for(Lead leadRecord : Trigger.new){
        //if(String.isBlank(leadRecord.Leadsource)){
          //&& String.isBlank(leadRecord.Mobilephone) )
        if(Trigger.isBefore){
             leadRecord.LeadSource = 'Other';
        }
           if(String.isBlank(leadRecord.Industry) && Trigger.isInsert){
               
           leadRecord.addError('The industry field cannot be Blank');
               }
          
          }
          system.debug('Lead trigger 1 is executing');

}
           
           
             //leadRecord.CleanStatus = 'Other';
             //leadRecord.Status = 'Other';
             //leadRecord.MobilePhone = '9981142702';
             //leadRecord.Title = 'yes';