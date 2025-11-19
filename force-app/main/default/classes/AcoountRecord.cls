public class AcoountRecord {
    public static id insertAccount(String name,String active, String rating){
        Account acc = new Account();
        acc.Name = name;
		acc.Active__c = active;
		acc.Rating = rating;
        insert acc;
        return acc.id;
    }
    
    public static void inserContact(){
        Id accId;
        accId = insertAccount('InsertRelatedAccount','Yes','Excellent');
        Contact con = new Contact(FirstName = 'Contact', LastName ='101');
        con.accountId = accId; 
        insert con;
    }
    
    public static void insertAccountWithConAndOpp(String name,String active, String rating){
        Account acc = new Account();
        acc.Name = name;
		acc.Active__c = active;
		acc.Rating = rating;
        insert acc;
        
        Contact con = new Contact(FirstName = 'Contact', LastName ='102');
        con.accountId = acc.Id; 
        insert con;
        
        Opportunity opp = new Opportunity();
        opp.Name = 'Opp101';
        opp.CloseDate = System.today();
        opp.StageName = 'Prospecting';
        opp.AccountId = acc.Id;
        insert opp;
    }
}