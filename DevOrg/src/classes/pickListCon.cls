public class pickListCon {

    public PageReference test() {
        return null;
    }

    public pickListCon (){
         List<Selectoption> allState = new List<Selectoption>();
    }

    public String selCountry = null ;
    
    public String selSatae=null;
    
 
    public List<SelectOption> getOptions(){
        List<SelectOption> myOptionList = new List<SelectOption>();
        myOptionList.add(new SelectOption('India','INDIA'));
        myOptionList.add(new SelectOption('USA','USA'));
        myOptionList.add(new SelectOption('UK','UK'));
        myOptionList.add(new SelectOption('Ireland','IRELAND'));
        myOptionList.add(new SelectOption('Australia','AUSTRALIA'));
        return  myOptionList ;  
    }
     
    public String getselCountry () {
        return selCountry ;
    }

    
    public void setSelCountry(String cou ){
        this.selCountry =cou;
    }
    
    public List<Selectoption> getlistState(){
        if(selCountry =='India'){
            List<Selectoption> allState = new List<Selectoption>();
            allState.add(new Selectoption('Aaaa','AAA'));
            allState.add(new Selectoption('Bbbb','BBB'));
            allState.add(new Selectoption('Cccc','CCC'));
            allState.add(new Selectoption('Dddd','DDD'));
            allState.add(new Selectoption('Eeee','EEE'));
            return allState ;
       }
        else if (selCountry =='USA'){
            List<Selectoption> allState = new List<Selectoption>();
                allState.add(new Selectoption('xxx','XXX'));
                return allState ;
        }
        else{
            List<Selectoption> allState = new List<Selectoption>();
                allState.add(new Selectoption('kkk','KKK'));
                return allState ;
        }
    }
    public void getSelSatae(){
    
    }
    public void setSelSatae(String s){
        this.selSatae=s;
    }
}