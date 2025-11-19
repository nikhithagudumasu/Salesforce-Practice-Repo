public class DMLDemo {
    public static void insertDemo(){
        List<Account> accList = new List<Account>(); 
        //List<Contact> conList = new List<Contact>();
        for(Integer i=1;i<=200;i++){
            Account acc = new Account();
            acc.Name = 'DML106';
            acc.Active__c = 'Yes';
            accList.add(acc);  
        }
        insert accList;
       
       /* Contact con = new Contact(); 
		con.FirstName = acc.Name; 
		con.LastName = acc.Name; 
		con.AccountId = accList[0].Id; 
		conList.add(con); 
        
        Account acc1 = new Account();
        acc1.Name = 'DML107';
        acc1.Active__c = 'Yes';
        accList.add(acc1);
        Contact con1 = new Contact(); 	
		con1.FirstName = acc1.Name; 
		con1.LastName = acc1.Name;
        con1.AccountId = accList[1].Id;
        conList.add(con1);
        
        insert accList;
        insert conList; */
    }
    public static void updateDemo(){
        List<Account> updateList = new List<Account>();
        updateList = [SELECT Id, Name, Rating FROM Account WHERE Rating = 'Hot'];
        if(!updateList.isEmpty()){
            for(Account acc : updateList){
                acc.Industry = 'Media';
                acc.Active__c = 'Yes';
            }
            update updateList;
        }
    }
    public static void upsertDemo(){
        List<Account> upsertList = new List<Account>();
        upsertList = [SELECT Id, Name, Rating, Industry FROM Account WHERE Rating = 'Hot'];
        for(Account acc : upsertList){
            acc.Industry = 'Energy';
            acc.Active__c = 'Yes';
        }
        try{
            for(Integer i=1; i<=5; i++){
                Account acc = new Account();
                //acc.Name = 'Test Upsert ' + i;
                acc.Active__c = 'Yes';
                upsertList.add(acc);
            }
            if(!upsertList.isEmpty()){
                upsert upsertList;
            }
        }
        catch(DMLException e){
            System.debug(e);
        }
        
    }
    public static void deleteDemo(){
        List<Account> deleteList = new List<Account>();
        deleteList = [SELECT Id, Name, Rating FROM Account WHERE Name LIKE 'Test Upsert %'];
        if(!deleteList.isEmpty()){
            delete deleteList;
        }
    }
    public static void undeleteDemo(){
        List<Account> deleteList = new List<Account>();
        deleteList = [SELECT Id, Name, Rating FROM Account WHERE Name LIKE 'Test Upsert %' ALL ROWS];
        if(!deleteList.isEmpty()){
            undelete deleteList;
        }
    }
    public static void databaseMethodDemo(){
        List<Contact> contactList = new List<Contact>{
            new Contact(FirstName = 'Joe', LastName = 'Smith', Department = 'Finance'),
            new Contact(FirstName = 'Sherry', LastName = 'Johnson', Department = 'Technology'),
            new Contact(FirstName = 'Kathy', LastName = 'Smith', Department = 'Finance'),
            new Contact()
		};
		Database.SaveResult[] results = Database.insert(contactList,false);
        for (Database.SaveResult sr: results) {
            if(sr.isSuccess()){
                System.debug('Sucessfully inserted contact. Contact Id = ' +sr.getId());
            }
            else{
                for(Database.Error err: sr.getErrors()){
                    System.debug('The follopwing error has occured');
                    System.debug(err.getMessage());
                    System.debug('Contact fields that effected this error: '+err.getFields());
                }
            }
        }
    }
}