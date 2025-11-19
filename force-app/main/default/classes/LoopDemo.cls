public class LoopDemo {
    public static void forLoop(){
        for(Integer i=1; i<=10; i++){
            System.debug(i);
        }
    }
    public static void table(Integer n){
        for(Integer i=1; i<=10; i++){
            System.debug(n + '*' + i + '=' + i*n);
        }
    }
    public static void evenOdd(Integer n){
        for(Integer i=1; i<=n; i++){
            if(math.mod(i,2)==0){
                System.debug(i + ' is Even number');
            }
            else{
                System.debug(i + ' is Odd number');
            }
        }
    }
    public static void naturalNum(Integer n){
        Integer sum=0;
        for(Integer i = 1;i<=n;i++){
            sum = sum + i;
        }
        System.debug(sum);
    }
    public static void whileTable(Integer n){
        Integer i = 1;
        while(i<=n){
          System.debug(n + '*' + i + '=' + i*n);
          i++;
        }
    }
    public static void whileNaturalNum(Integer n){
        Integer i=1,sum=0;
        while(i<=n){
          sum = sum + i;
            i++;
        }
        System.debug(sum);
    }
    //Display Account List and Create Set of Account Id's
    public static void accountListDisplay(){
        List<Account> accList = new List<Account>();
        Set<Id> accId = new Set<Id>();
        Map<Id, Account> mapList = new Map<Id, Account>();
        accList = [Select Id, Name FROM Account LIMIT 5];
        if(!accList.isEmpty()){
            for(Account acc : accList){
                System.debug(acc.Id + '-' + acc.Name);
                accId.add(acc.Id);
                mapList.put(acc.Id,acc);
            }
            System.debug('List of Ids = '+ accId);
            System.debug('Map of account ='+mapList);
        }
        //Display Account Id's
    	if(!accId.isEmpty()){
        	for(Id accids : accId){
            	System.debug(accIds);
        	}
    	}
        //Iterate based on Map
        if(!mapList.isEmpty()){
            for(Id acc : mapList.keyset()){
                System.debug(acc);
            }
        }
         if(!mapList.isEmpty()){
            for(Account acc : mapList.values()){
                System.debug(acc);
            }
        }
    }
}