public class LeadAsynchronous {
    @future
    public static void UpdateLeadRecord(Set<Id> existingrecordId){
        List<Lead> existingrecord = [SELECT Id, Leadsource FROM Lead where Id IN : existingrecordId];
        for(Lead Record : existingrecord){
            
            Record.LeadSource = 'Web';
        }
        update existingrecord;
        //CreateLeadRecord...................we can not call future methode by future methode
    }
     
        public static void CreateLeadRecord(){
            Lead anotherLead = new Lead(LastName = 'jaddu', Status = 'Open - Not Contacted', Company = 'rj',Industry = 'rj');
            insert anotherLead;   
        }
}

//map<id, Lead> Leadrecord = new map<id, Lead>([SELECT Id From Lead]);// this is the synchronous transaction
//LeadAsynchronous.UpdateLeadRecord(leadrecord.keyset()); // future methode with synchronous
////LeadAsynchronous.CreateLeadRecord();// future methode with synchronous
//we call multiple future methode 
//but we can not call future methode by future methode