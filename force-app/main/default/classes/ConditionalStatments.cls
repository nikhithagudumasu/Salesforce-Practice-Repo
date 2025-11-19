public class ConditionalStatments {
    public static void max(Integer num1, Integer num2){
        if(num1>num2){
            System.debug('Num1 is greater');
        }
        else{
            System.debug('Num2 is greater');
        }
    }
    public static void eligibility(Integer Age){
        if(Age>=18){
            System.debug('Eligible to vote');
        }
        else{
            System.debug('Not Eligible to vote');
        }
    }
    public static void evenOdd(Integer num){
        if(Math.mod(num,2)==0){
            System.debug('Number is even');
        }
        else{
            System.debug('Number is odd');
        }
    } 
    public static void elseIfLadder(Integer value){
        if(value>0){
            System.debug('Number is positive');
        }
        else if(value == 0){
            System.debug('Number is Zero');
        }
        else{
            System.debug('Number is Negative');
        }
    }
    public static void nestedIf(Integer a){
        if(a>=0){
            if(a > 0){
               System.debug('Number is positive'); 
            }
            else{
                System.debug('Number is Zero');
            }
        }
        else{
               System.debug('Number is Negative');
            }
    }
    public static void logicalOperator(){
        Integer num1 = 10 , num2 = 50;
        if(num1 > 20 && num2 ==50){
            System.debug('True');
        }
        else{
            System.debug('False');
        }
    }
    public static void logicalOperator2(){
        Integer num1 = 10 , num2 = 50;
        if(num1 > 20 || num2 ==50){
            System.debug('True');
        }
        else{
            System.debug('False');
        }
    }
    public static void nullCheck(){
        List<Account> accList = new List<Account>();
        accList = [select Id, Name FROM Account LIMIT 5];
        if(!accList.isEmpty()){
            system.debug('List Contains '+accList);
        }
        else{
            System.debug('List is empty');
        }
    }
    public static void conditionalOperator(Integer num1, Integer num2){
        Integer result = num1 > num2 ? num1 : num2;
        System.debug('Result = ' +result);
    }
}