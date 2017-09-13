public class CRATpage2Controller {

    public String Value1='No';
    public String Value2='No';
    public String Value3='No';
    public String Value4=NULL;
    
    public String Value10='No';
    public String Value20='No';
    public String Value30='No';
    
    public Boolean outputpanel1{get;set;}
    public Boolean outputpanel2{get;set;}
    public Boolean outputpanel3{get;set;}
    
    public Integer result1{get;set;}
    
    public CRATpage2Controller(){
        outputpanel1=true;
        outputpanel2=false;
    }
    public List<Selectoption> getvalues(){
        List<Selectoption> option= new List<Selectoption>();
            option.add(new Selectoption('NO','No'));
            option.add(new Selectoption('YES','Yes'));
        return option;
    }
    
    public List<Selectoption> getoptionvalues(){
        List<Selectoption> option= new List<Selectoption>();
            option.add(new Selectoption('1','1'));
            option.add(new Selectoption('2','2'));
            option.add(new Selectoption('3','3'));
            option.add(new Selectoption('4','4'));
            option.add(new Selectoption('5','5'));
        return option;
    }
    
    public String getValue1(){
        return Value1;
    }
    public void setValue1( String Value1){
        this.Value1=Value1;
    }
    public String getValue2(){
        return Value2;
    }
    public void setValue2( String Value2){
        this.Value2=Value2;
    }
    public String getValue3(){
        return Value3;
    }
    public void setValue3( String Value3){
        this.Value3=Value3;
    }
    public String getValue4(){
        return Value4;
    }
    public void setValue4( String Value4){
        this.Value4=Value4;
    }
    
    public String getValue10(){
        return Value10;
    }
    public void setValue10( String Value10){
        this.Value10=Value10;
    }
    public String getValue20(){
        return Value20;
    }
    public void setValue20( String Value20){
        this.Value20=Value20;
    }
    public String getValue30(){
        return Value30;
    }
    public void setValue30( String Value30){
        this.Value30=Value30;
    }
    
    public void page2(){
        outputpanel1=false;
        outputpanel2=true;
        
        /*result1=0;
        if(Value1=='YES')
        {
           result1=result1+3; 
        }
        if(Value2=='YES')
        {
           result1=result1+3; 
        }
        if(Value3=='YES')
        {
           result1=result1+3; 
        }
        if(Value4=='1'||Value4=='2')
        {
           result1=result1+1; 
        }
        else if(Value4=='4'||Value4=='5')
        {
           result1=result1+3; 
        }
        else if(Value4=='3')
        {
           result1=result1+2; 
        }
        system.debug('your score is '+result1);*/
    }
    
    public void showGraph(){
        outputpanel2=false;
        outputpanel3=true;
        result1=0;
        if(Value1=='YES')
        {
           result1=result1+3; 
        }
        if(Value2=='YES')
        {
           result1=result1+3; 
        }
        if(Value3=='YES')
        {
           result1=result1+3; 
        }
        if(Value4=='1'||Value4=='2')
        {
           result1=result1+1; 
        }
        else if(Value4=='4'||Value4=='5')
        {
           result1=result1+3; 
        }
        else if(Value4=='3')
        {
           result1=result1+2; 
        }
        system.debug('your score is '+result1);
    }
}