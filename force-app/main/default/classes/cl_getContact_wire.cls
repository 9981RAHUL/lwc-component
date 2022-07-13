public with sharing class cl_getContact_wire {

    @AuraEnabled(cacheable=true)
    public static List<Contact> getconlist(){
        return [select Id,FirstName,LastName,Phone From Contact limit 25];

    }
}