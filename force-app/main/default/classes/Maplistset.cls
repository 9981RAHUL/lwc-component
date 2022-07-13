public class Maplistset {
    public void Dum()
    {
    
    List <string> Info =New List <string>();
    Info.ADD('infofeat');
    Info.ADD('facebook');
    Info.ADD('insta');
    
    set <Integer> Set1 = New set <Integer> ();
    Set1.Add(5);
    Set1.Add(6);
    
    Map <Set <Integer>, List<String> >Test = New Map <Set <Integer>, List <String>>();
    //Test.(1, Info);
    Test.put(Set1, Info);
    system.debug(Test);
    
    List<string> t =Test.get(Set1);
    system.debug(t);
 
    }
}