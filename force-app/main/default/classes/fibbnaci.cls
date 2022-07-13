public class fibbnaci {
    public void demo(){
        
        integer a=0;
        integer b=1;
        integer i=0;
        integer n=20;
        
        while(i<=n){
            
            integer sum=a+b;
            system.debug(sum);
            a=b;
            b=sum;
            i++;
        }
    }

}