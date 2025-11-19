public class ApexScenarioDemo {
    public static void apexSecnario1(){
        List<Account> accList = new List<Account>();
        accList = [SELECT Id,Name,Phone, (SELECT Id,FirstName,LastName FROM Contacts)FROM Account WHERE Phone != Null];
        if(!accList.isEmpty()){
            for(Account acc : accList){
                System.debug(acc.Name + ' has ' +acc.Contacts.size()+' Contacts related');
            }
        }
    }
    public static void apexSecnario2(){
        List<Account> accList = new List<Account>();
        accList = [SELECT Id,Name,Phone, (SELECT Id, Amount FROM Opportunities)FROM Account WHERE Phone != Null];
        if(!accList.isEmpty()){
            for(Account acc : accList){
                Decimal total = 0;
                for(Opportunity opp : acc.Opportunities){
                    total = total + opp.amount;
                }
                System.debug(acc.Name +' has '+total + ' worth opportunities');
            }
        }
    }
    public static void apexSecnario3(){
        List<Opportunity> oppList = new List<Opportunity>();
        oppList = [SELECT Id, stageName FROM Opportunity WHERE Createddate = THIS_YEAR];
        if(!oppList.isEmpty()){
            for(Opportunity opp : oppList){
                if(opp.StageName == 'Closed Won'){
                    opp.Description = 'Opportunity is closed won';
                }
                else if(opp.StageName == 'Closed Lost'){
                    opp.Description = 'Opportunity is closed Lost';
                }
                else{
                    opp.Description = 'Opportunity is Open';
                }
                update oppList;
                 System.debug('Opportunity Id = '+opp.Id+' has a stage Name as '+opp.StageName+'and Opportunity Description is '+opp.Description);
            } 
        }
    }
    public static void apexSecnario4(){
        List<Account> accList1 = new List<Account>();
        accList1 = [SELECT Id, Name, (SELECT Id FROM Contacts) FROM Account WHERE Createddate = THIS_YEAR];
        for(Account acc : accList1){
           // acc.Total_Contact_Count__c = acc.Contacts.size();
        }
       update accList1;
    }
}