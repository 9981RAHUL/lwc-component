public with sharing class CreateContactWire {

        @AuraEnabled(cacheable=true)
        public static List<Contact> getconlist(){
            list<Contact> con =[SELECT Id,FirstName,LastName,Phone,Email FROM Contact limit 25];
            return con;
    
        }
     
    // public CreateContactWire() {

    // }
}