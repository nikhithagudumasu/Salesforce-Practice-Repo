public class ListDemo {
    Public static List<String> returnedList(string str1, string str2){
        List<string> returnList = new List<String>{'Teal','Brown','Black'};
        //returnList.add('Teal');
        //returnList.add('Brown');
        //returnList.add('Black');
        returnList.add(str1);
        returnList.add(str2);
        return returnList; //returns the list
    }
    public static void listDemoMethod(){
        List<string> returnvalues = new List<String>();
        returnvalues = returnedList('Purple','Pink');
        System.debug('Returned List Contains =' + returnvalues);
        
        List<String> colors = new List<String>(); 
		colors.add('Red'); 
		colors.add('Blue'); 
		colors.add('Green'); 
		colors.add('Yellow'); 
        System.debug('Colors List Contains =' + colors);
        
        colors.add(1,'Black'); //add value at particular position
        System.debug('Colors List Contains =' + colors);
        
        List<String> colorsList2 = new List<String>(); 
		colorsList2.add('Purple'); 
		colorsList2.add('Pink');
        colors.addAll(colorsList2);
        System.debug('Colors List Contains =' + colors); //adds one list values to another
        
        System.debug('Colors in List 2 =' + colorsList2);
        colorsList2.clear();
        System.debug('Colors in List 2 =' + colorsList2);
        
        List<String> clonedList = new List<string>();
        clonedList = colors.clone();
        System.debug('Cloned List Contains =' + clonedList);//cloning the list
        
        System.debug('Colors List Contains =' + colors.contains('Red')); //checking whether the value present in the list
        System.debug('Cloned List Contains =' + clonedList.equals(colors)); //checking the values in both list are equal
        System.debug('Get a value =' + colors.get(3)); //get value of particular index
        System.debug('Get a value =' + colors.indexOf('Blue')); //getting index of particular value
        System.debug('Check List =' +colorsList2.isEmpty()); //check whether the list is empty
        colors.remove(3); //remove value from particular position
        System.debug('Colors List Contains =' + colors);
        System.debug('Size of colors =' + colors.size()); //get size of particular list
        colors.sort(); //sorting the list
        System.debug('Sort the colors List =' +colors);
    }
}