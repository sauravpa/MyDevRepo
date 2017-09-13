public class stateCountryPickcontroller {
    
     public String country{get;set;}
     public String state{get;set;}
     
     public List<selectOption> getcountries(){
         List<selectOption> countryList = new List<selectOption>();
             countryList.add( new selectOption('AAA','Aaa'));
             countryList.add( new selectOption('BBB','Bbb'));
             countryList.add( new selectOption('CCC','Ccc'));
             countryList.add( new selectOption('DDD','Ddd'));
             countryList.add( new selectOption('EEE','Eee'));
         return countryList ;
     } 
     
     public List<selectOption> getstateList(){
     
        List<selectOption> listState= new List<selectOption>();
        if(country=='AAA'){
            system.debug('++++AAA++++'+country);
             listState.add( new selectOption('111','111'));
             listState.add( new selectOption('222','222'));
             listState.add( new selectOption('333','333'));
             listState.add( new selectOption('444','444'));
             listState.add( new selectOption('555','555'));
         }
         else if(country=='BBB'){
             system.debug('++++BBB++++'+country);
             listState.add( new selectOption('1A1','1A1'));
             listState.add( new selectOption('2B2','2B2'));
             listState.add( new selectOption('3C3','3C3'));
             listState.add( new selectOption('4D4','4D4'));
             listState.add( new selectOption('5E5','5E5'));
         }
         else if(country=='CCC'){
             system.debug('++++CCC++++'+country);
             listState.add( new selectOption('11A','11A'));
             listState.add( new selectOption('22B','22B'));
             listState.add( new selectOption('33C','33C'));
             listState.add( new selectOption('44D','44D'));
             listState.add( new selectOption('55E','55E'));
         }
         else if(country=='DDD'){
             system.debug('++++DDD++++'+country);
             listState.add( new selectOption('666','666'));
             listState.add( new selectOption('777','777'));
             
         }
         else if(country=='EEE'){
             system.debug('++++EEE++++'+country);
             listState.add( new selectOption('888','888'));
             listState.add( new selectOption('999','999'));
         }
         else{
             system.debug('++++ELSE++++'+country);
             listState.add( new selectOption('None','--None--'));
         }
         return listState ;
     }
     
     public pagereference test(){
         system.debug('++++country++++'+country);
         return null;
     }
       
}