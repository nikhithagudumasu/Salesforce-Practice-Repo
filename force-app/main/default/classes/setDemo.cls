public class setDemo {
    public static void createSet(){
        Set<Integer> intSet = new Set<Integer>();
        List<Integer> intList = new List<Integer>();
        
        intSet.add(10);
        intSet.add(20);
        intSet.add(30);
        intSet.add(20);
        
        intList.add(40);
        intList.add(50);
        intSet.addAll(intList); //add list in the set
        
        Set<Integer> intSet2 = new set<Integer>();
        intSet2.add(60);
        intSet2.add(70);
        intSet.addAll(intSet2); //add another set in the set
        System.debug('Set Contains =' +intset);
        
        intSet2.clear(); //remove all values in set
        System.debug('Set2 Contains =' +intSet2);
        
        intSet2 = intSet.clone(); //copy values of another setr
        System.debug('Set2 Contains =' +intSet2);
        
        System.debug('Value Contains=' +intSet.contains(20)); //checks whether value is available in the set
        System.debug('Contains all values =' +intSet.containsAll(intList)); //checks all the values from another set is present in the set
        System.debug('Set Equals =' +intSet.equals(intList)); //checks both set values are equal
        System.debug('Empty =' +intSet.isEmpty()); //checks whether set is empty
        intSet.remove(20); //removes particular element
        System.debug('Set Contains =' +intset);
        
        intSet.removeAll(intList); //removes all values of the list
        System.debug('Set Contains =' +intset);
        intSet.removeAll(intSet2); //removes all values of another set
        System.debug('Set Contains =' +intset);
         intSet.retainAll(intList); //retains all values of the list
        System.debug('Set Contains =' +intset);
        intSet.retainAll(intSet2); //retains all values of another set
        System.debug('Set Contains =' +intset);
        System.debug('Size =' +intSet);
    }
}