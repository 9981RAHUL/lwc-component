public class createContactList {
    
    @Auraenabled
    public static List<Contact> getContactList(){
        return [select id, Name, Phone, Email from contact where Email != null];
        
        
    }

}