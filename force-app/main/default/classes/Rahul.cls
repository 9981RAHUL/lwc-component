public class Rahul {
    
    public void Test()
    {
        List <string>text = new List<string>{'rakesh'};
            text.add('jaiswal');
                    text.add(0,'Nitish');
        List <string>text01 = new List<string>{'ramjane','jaiswal','raghaw'};
text01.addAll(text);
        system.debug(text01);
        Boolean ab = text.Contains('jaiswal');
            system.debug(ab);
                Boolean abc = text.equals(text01);
                    system.debug(abc);
        //cheking the value by indexing
        
        system.debug('index 2 value is' + text01.get(2));
            //listname.get(index)
            string abd=text01.get(2);
        system.debug(abd);
        
        system.debug(text01.remove(1));
        system.debug(text01);
        


    }

}