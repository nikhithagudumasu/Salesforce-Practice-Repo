public class SObjectListDemo {
    public static void SObjectList(){
        List<Account> accList = new List<Account>();
        Account acc1 = new Account(Name = 'Account 121', Active__c = 'Yes');
        accList.add(acc1);
        
        Account acc2 = new Account();
        acc2.Name = 'Account 122';
        acc2.Active__c = 'No';
        accList.add(acc2);
        
        insert accList;
    }
    
    public static void SObjectListPosition(){
        List<Position__c> posList = new List<Position__c>();
        Position__c p1 = new Position__c(Name = 'Azure Dev');
        posList.add(p1);
        Position__c p2 = new Position__c(Name = 'Azure Testing');
        posList.add(p2);
        
        insert posList;
    }
}