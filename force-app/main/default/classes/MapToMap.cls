public class MapToMap {
    
    public void demo()
    {
        Map <integer,String> m2=new Map <integer,String>();
        m2.put(1, 'Akki');
        m2.put(2, 'kumar');
        m2.put(3, 'jain');
        m2.put(4, 'jain');
        
        Map <integer,String> m3=new Map <integer,String>();
        m3.put(1, 'Akki1');
        m3.put(2, 'kumar2');
        m3.put(3, 'jain3');
        m3.put(4, 'jain4');
        
             
        Map <Map <integer,String>,Map <integer,String>> m1=new Map <Map <integer,String>,Map <integer,String>>();
        m1.put(m3,m2);
       // m1.put(m2,m3);
       // Map<Integer,String> ss1=new Map <integer,String>();
        // Set <String> ss1= new Set<String>();
        
         for(Map<Integer,String> ss1 : m1.keySet())
         {
             System.debug(ss1);
         }
       // System.debug(m1);
        
        
        
    }

}