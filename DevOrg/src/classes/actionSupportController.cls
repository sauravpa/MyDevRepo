public class actionSupportController {

    public String name ;  
    public String inputName{get;set;}
      
    public String getName(){
       String myName;
        
        if(inputName=='Raktim'){
            myName='ETL';
        }
        else if(inputName=='Skitty'){
            myName='Salesforce';
        }
        else if(inputName==''|inputName==null){
            myName=null;
        }
        else{
            myName='Others';
        }
        return myName;
    } 
    public void setName( String s){
        //this .name =s;
    }
}