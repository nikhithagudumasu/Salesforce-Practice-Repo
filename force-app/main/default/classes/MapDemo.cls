public class MapDemo {
    public static void mapDemoMeth(){
        Map<Integer,String> color = new Map<Integer, String>();
        color.put(1,'Black');
        color.put(2,'Yellow');
        color.put(3,'Purple');
        color.put(4,'Red');
        System.debug('Colors List = ' +color);
        color.put(4, 'Green');
        System.debug('Colors List = ' +color);
        
        Map<Integer,String> animal = new Map<Integer, String>();
        animal.put(5,'Lion');
        animal.put(6,'Tiger');
        System.debug('Animals List = ' +animal);
        
        color.putAll(animal); //add one map values to another
        System.debug('Colors List = ' +color);
        
        color.remove(1); //removes value of particular index
        System.debug('Colors List = ' +color);
        System.debug('Map size = ' +color.size()); //gives the size of the map
        System.debug('Map Values = ' +color.values()); //returns only vales of map
        animal.clear(); //clears all the values in it
        System.debug('Animal List = ' +animal);
        
        Map<Integer,String> clonedMap = new Map<Integer, String>();
        clonedMap = color.clone(); //coply all the vales of another map
        System.debug('Cloned Map = ' + clonedMap);
        
        System.debug('Colors List = ' +color.containsKey(1)); //checks whether particular key is available
        System.debug('Compare = ' +color.equals(clonedMap)); //checks wheteher both maps have same value
        System.debug('Get Value = ' +color.get(6)); //gives value of particular key
        System.debug('check List = ' +animal.isEmpty()); //checks whether map is empty
        System.debug('Map Keys = ' +color.keySet()); //gives keys of all
        
        Set<Integer> intSet = new Set<Integer>();
        List<String> strList = new List<String>();
        intSet = color.keySet(); //stores keys into set
        strList = color.values(); //stores values into list
        System.debug('Set of Keys = ' +intSet);
        System.debug('List of Values = ' +strList);
        
    }
    
    public static void mapSObjectDemo(){
        List<Account> accList = new List<Account>();
        Map<Id, Account> mapAcc = new Map<Id, Account>();
        accList = [select Name FROM Account LIMIT 5];
        mapAcc.putAll(accList); //put all avlues using SObject
        System.debug('SObject list = ' +mapAcc);
     }
    
    public static void withoutLoop(){
        List<Account> accList1 = new List<Account>();
        accList1 = [select Name FROM Account LIMIT 5];
        Map<Id, Account> mapAcc1 = new Map<Id, Account>(accList1); //List will be convereted into map
        System.debug('SObject list = ' +mapAcc1);
        System.debug('SObject Keys = ' +mapAcc1.keySet());
        System.debug('SObject values = ' +mapAcc1.values());
    }
    
    public static void withLoop(){
        List<Account> accList2 = new List<Account>();
        accList2 = [select Name FROM Account LIMIT 5];
        Map<Id, Account> mapAcc2 = new Map<Id, Account>();
        for(Account acc:accList2){
            mapAcc2.put(acc.id, acc);
        }
        System.debug('SObject list = ' +mapAcc2);
        System.debug('SObject Keys = ' +mapAcc2.keySet());
        System.debug('SObject values = ' +mapAcc2.values());
    }
}