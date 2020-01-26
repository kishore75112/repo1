public class ContactController {
    @AuraEnabled
    public static Contact getContacts(){
        Contact cRecord = [select id,firstName,LastName,Email from Contact where Email!=null LIMIT 1];
        return cRecord;
    }
}