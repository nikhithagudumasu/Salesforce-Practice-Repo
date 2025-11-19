public class SObjectSetDemo {
    public static void demoSObject(){
        Set<Id> accId = new Set<Id>();
        List<Account> accList = new list<Account>();
        
        accList = [Select Id, Name from Account Limit 5];
        
        for(Account acc:accList){
            accId.add(acc.Id);
        }
        System.debug('Ids = '+accId);
    }
    
    public static void demoCustomObject(){
        Set<Id> posId = new Set<Id>();
        List<Position__c> posList = new List<Position__c>();
        
        posList = [Select Id,Name from Position__c Limit 5];
        
        for(Position__c pos:posList){
            posId.add(pos.Id);
        }
        System.debug('Ids ='+posId);
    }
}