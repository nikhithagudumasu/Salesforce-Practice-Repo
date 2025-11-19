public class SOQLDemo {
    public static void queryDemo(){
        Integer AR= 10000;
        Set<Id> accIds = new Set<Id>();
        Map<Id, Account> accMap = new Map<Id, Account>();
        //List<Account> accList = [SELECT Id,Name,Industry,Rating,AnnualRevenue
                                 //FROM Account LIMIT 10];
        
		for(Account acc : [SELECT Id FROM Account WHERE AnnualRevenue >=: AR AND AnnualRevenue <= 100000]){
    		System.debug(acc.Id);
		}
        //List<Account> accList2 = [SELECT Id,Name,Industry,Rating,AnnualRevenue
                                 //FROM Account WHERE Id IN : accIds];
        
        //System.debug([SELECT COUNT(Name) FROM Account]);
    }
    public static void parentToChildDemo(){
        List<Account> accList = new List<Account>();
        accList = [SELECT Id, Name, (SELECT Id, FirstName, LastName FROM Contacts) FROM Account WHERE Rating = 'Hot'];
        for(Account acc : accList){
            System.debug('Account Name = '+acc.Name);
            for(Contact con : acc.Contacts){
                System.debug(con.FirstName + '' +con.LastName);
            }
        }
    }
    public static void customParentToChildDemo(){
        List<Position__c> posList = new List<Position__C>();
        posList = [SELECT Id, Name, (SELECT Id, Name FROM Job_Applications__r) FROM Position__c];
        for(Position__c pos : posList){
            System.debug('Position Name = '+pos.Name);
            for(Job_Application__c job : pos.Job_Applications__r){
                System.debug(job.Name);
            }
        }
    }
}