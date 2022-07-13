public class myPrac {

    public void maping()
    {
        map<integer,string> M = new map<integer,string>();
        M.put(1,'rahul');
        M.put(2,'akshay');
        M.put(3,'nitisha');
        
        map<integer, map<integer,string>> M1 = new map<integer, map<integer,string>>();
        M1.put(1,M);
        
        
        for(integer s : M1.keyset())
        {
            map<integer,string> F = M1.get(s);
            system.debug(F);
        }
    }
}