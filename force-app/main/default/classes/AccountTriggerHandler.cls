public class AccountTriggerHandler {
    
    public static void updateRelatedContact(List<Account> accList, Map<Id, Account> accOldMap){
        
    }
    public static void populateRating(List<Account> accList, Map<Id, Account> accOldMap) {
        for(Account acc : accList){
            if((accOldMap == Null && acc.Industry != Null && acc.Industry == 'Media') || 
                (acc.Industry != accOldMap.get(acc.Id).Industry && acc.Industry == 'Media')){
                acc.Rating = 'Hot';
            }
        }
    }
    
    public static void updatePhone(List<Account> accList, Map<Id, Account> accOldMap){
        for(Account acc : accList){
            if(acc.Phone != accOldMap.get(acc.Id).Phone){
                acc.Description = 'Phone is Updated | Old Value = '+ accOldMap.get(acc.Id).Phone + ' New Value = ' + acc.Phone;
            }
        }
    }
    
    public static void updateDesc(List<Account> accList){
        for(Account acc : accList){
            acc.Description = 'Account is created';
        }
    }
    
    public static void insertOpp(List<Account> accList){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Account acc : accList){
            Opportunity opp = new Opportunity();
            opp.Name = acc.Name;
            opp.CloseDate = System.today();
            opp.StageName = 'Prospecting';
            opp.AccountId = acc.Id;
            oppList.add(opp);
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
    }
}