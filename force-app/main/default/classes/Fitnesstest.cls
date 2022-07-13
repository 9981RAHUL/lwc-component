@isTest
class Fitnesstest {
    @isTest
    public static void calculateBMITest1(){
        
        Decimal weight = 60;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        result = result.Setscale(2);
        system.assertEquals(41.67, result, 'BMI should be 41.67 for 60kg weight and 1.2 mtr height');   
    }    
    @isTest
    public static void calculateBMITest2(){
        Decimal weight = 0;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        system.assertEquals(0, result, 'BMI should be 0 for 60kg weight and 1.2 mtr height');    
            }
    @isTest
    public static void calculateBMITest3(){
        Decimal weight = 60;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        system.assertEquals(-1, result, 'Invalid input');        
    }
    @isTest
    public static void calculateBMITest4(){
        Decimal weight = -60;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        system.assertEquals(-1, result, 'Invalid input');        
    }
    @isTest
    public static void calculateBMITest5(){
        Decimal weight = 60;
        Decimal height = -1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        system.assertEquals(-1, result, 'Invalid input');   
    }
}