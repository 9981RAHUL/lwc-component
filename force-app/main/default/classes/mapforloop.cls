public class mapforloop {
    
    public void Dum()
    
    {
     
        Map <Integer, String > Test = New Map <Integer, String>();
        Test.put(1, 'Rekha');
        Test.put(2, 'Reka');
        Test.put(3, 'ram');
        Test.put(4, 'raju');
        Test.put(5, 'sikha');
        
        List<String> Prn = New List<String>();
      //  String t =Test.get(1);
      //Prn.add(t);
     //system.debug(Prn);
     //integer i;
system.debug(Test.keyset());
        for(Integer i: Test.keyset())
        {
         string temp = Test.get(i);
          Prn.add(temp);
             system.debug(temp);
            
        }
        
             system.debug(Prn);

        
    }

}