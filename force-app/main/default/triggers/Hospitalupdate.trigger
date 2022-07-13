trigger Hospitalupdate on Hospital__c (before insert, before update) {
    
    for(Hospital__c hospi : Trigger.new){
        if(string.isBlank(hospi.CITY__c)){
            
            hospi.CITY__c = 'INDORE';
        }
        if(hospi.CITY__c == 'DEWAS')
        {
            hospi.CITY__c = 'Indore';
        }
        if(string.isBlank(hospi.State__c) && Trigger.IsInsert){
            
            hospi.addError('enter the field should not blank');
        }
        if(hospi.State__c == 'MP'){
            
            
        }
        
            
    }

}