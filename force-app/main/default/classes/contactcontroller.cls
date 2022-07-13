public with sharing class contactcontroller {

    @AuraEnabled
    public static list<contact> searchcontacts(){
        return[select Id, Name, Phone from Contact Limit 30];
    }
    
    @AuraEnabled
    public static list<contact> searchbyquery(string searchquery){
        string name = '%'+searchquery+'%';
        
        return [select Id, name, phone from Contact where name LIKE:name limit 30];
    }
    
    
}