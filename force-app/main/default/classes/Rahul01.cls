public class Rahul01 {
    public void Docket()
    {
        String one = 'One two three four five six seven';
        string[] s1 = one.Split(' ');
        string first  =  s1[0];
        string second =  s1[1];
        string third  =  s1[2];
        string four   =  s1[3];
        string five   =  s1[4];
        string six    =  s1[5];
        string seven  =  s1[6];

        system.debug(first);
        system.debug(second);
        system.debug(third);
        system.debug(four);
        system.debug(five);
        system.debug(six);
        system.debug(seven);
        
        //for each loop
                String std = 'One two three four five six seven';
        string[] std1=std.split(' ');
        
        for(string i: std1)
        {
            
            string std2=i;
            system.debug(std2);
        }
        
        //for loop
      String j = 'One two three four five six seven';
        string[] i=j.split(' ');
        
        for(Integer k=0; K<=6; k++)
        {
            string[] z1 =i;
            system.debug(z1[k]);
         
        }

        
    }
}