public class CRATpage1Controller {

    public Integer result { get; set; }
    public Boolean pgblcksec1{get;set;}
    public Boolean pgblcksec2{get;set;}
    
    public CRATpage1Controller (){
        pgblcksec1=true;
        pgblcksec2= false;
    }
    
    public void page2(){
        
        pgblcksec1=false;
        pgblcksec2=true;
    }
    public List<Selectoption> getvalues(){
        List<Selectoption> Option= new List<Selectoption>();
            Option.add(new SelectOption('NO','No'));
            Option.add(new SelectOption('YES','Yes'));
        return  Option;
    }
    
    String value1='NO';
    String value2='NO';
    String value3='NO';
    
    public String getvalue1(){
        return value1;
    }
    public String getvalue2(){
        return value2;
    
    }
    public String getvalue3(){
        return value3;
    }
    
    public void setvalue1(String value1){
        this.value1=value1;
    }
    public void setvalue2(String value2){
        this.value2=value2;
    }
    public void setvalue3(String value3){
        this.value3=value3;
    }
    
    public void calculate(){
        result =0;
        if(value1=='YES'){
           result =result +3; 
        }
        if (value2=='YES'){
           result =result +3; 
        }
        if (value3=='YES'){
           result =result +3; 
        }
    }
    
    
    
}