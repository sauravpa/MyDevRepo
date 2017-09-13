public class myMultiSelectController {

    public String addVal { get; set; }

    public List<Selectoption> pickListValue2 { get; set; }

    public List<Selectoption> pickListValue1 { get; set; }
    
    //public String[] values=null;
    public String selectValue{get;set;}
    public List<Selectoption> pickListValue{get;set;} 
    
   /* public List<Selectoption> getpickListValue(){
        List<Selectoption> options= new List<Selectoption>();
           options.add(new Selectoption('aaa','aaa'));
           options.add(new Selectoption('aaa','aaa'));
           options.add(new Selectoption('aaa','aaa'));
           options.add(new Selectoption('aaa','aaa'));
           options.add(new Selectoption('aaa','aaa'));
       return options;
    }*/
   /*public String[] setvalues(){
         return values;  
   }
   public String[] getvalues(){
       return values;
   }*/
    public myMultiSelectController (){
    pickListValue1= new List<Selectoption> ();
       pickListValue1.add(new Selectoption('aaa','aaa'));
       pickListValue1.add(new Selectoption('bbb','bbb'));
       pickListValue1.add(new Selectoption('ccc','ccc'));
       pickListValue1.add(new Selectoption('ddd','ddd'));
       pickListValue1.add(new Selectoption('eee','eee'));
    }
   public void myMethod(){
      /*options1();*/
      system.debug('++inside myMethod++');
      options2(); 
   }
   public List<Selectoption> options1(){
       
       return null;
   }
   
   public List<Selectoption> options2(){
       pickListValue2= new List<Selectoption> ();
       pickListValue2.add(new Selectoption(addVal,addVal));
        system.debug('++inside option2++');
       return null;
   }
}