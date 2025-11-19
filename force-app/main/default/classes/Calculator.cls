public class Calculator {
    public static void Add(){
        Integer var1 = 5, var2 = 10, sum;
        sum = var1 + var2;
        System.debug('Sum =' +sum);
    }
    public static void Sub(){
        Integer var1 = 5, var2 = 10, ans;
        ans = var1 - var2;
        System.debug('Ans =' +ans);
    }
    
     public static void Mul(Integer var1, Integer var2){
        Integer mu;
        mu = var1 * var2;
        System.debug('Mul =' +mu);
    }
    public static void Div(Integer var1, Integer var2){
        Integer div;
        div = var1 / var2;
        System.debug('Div =' +div);
    }
}