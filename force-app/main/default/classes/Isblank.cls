public class Isblank {
    public void check()
    {
        
        string s1 = ' ';
            boolean b1 = String.isEmpty(s1);
        system.debug(b1);
        string s2 = ' ';
            boolean b2 = String.isBlank(s2);
        system.debug(b2);
        
        String s3 ='598';
        boolean b3 =s3.isNumeric();
        system.debug(b3);
        
          String s6 ='598';
        boolean b5 =s6.isNumeric();
        system.debug(b5);
        
          Integer s4 =598;
        string s5 = string.valueOf(s4);
        system.debug(s5);
        
        String s7 ='598';
        Integer b9 =Integer.valueOf(s7);
        system.debug(b9);
        
        
        
    }

}