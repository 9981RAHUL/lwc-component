public class dowhiletest {
    
    public void maino(){
        
        Integer i = 0;
Do{
    //
    if(math.mod(i,3)==0){
        system.debug('fizz');
                       }
       else if(math.mod(i,5)==0){
           system.debug('buzz');
       }
       else if ((math.mod(i,3)==0) && (math.mod(i,5)==0))
       {
           system.debug('fizzbuzz');
       }  
    else {
        system.debug('number is'+ i);
    }
i++;    
}

while (i <100);
system.debug(i);
        
        
        
    }

}