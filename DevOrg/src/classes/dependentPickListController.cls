public with sharing class dependentPickListController {
    public String masterValue;
    public Boolean isChild;
    
    public List<String> selValue;
    
    /*public dependentPickListController (){
         isChild= false;
    } */
    public List<SelectOption> getMasterOptions(){
        List<SelectOption> options=new List<SelectOption>();
            options.add(new selectOption('Nothing','--None--'));
            options.add(new selectOption('Value1','Value1'));
            options.add(new selectOption('Value2','Value2'));
            options.add(new selectOption('Value3','Value3'));
        return options;
    }
    public List<SelectOption> getChildOptions(){
        List<SelectOption> options=new List<SelectOption>();
            if(masterValue!=null && masterValue=='Value1'){
                options.add(new selectOption('none','--None--'));
                options.add(new selectOption('Value11','Value11'));
                options.add(new selectOption('Value21','Value21'));
                options.add(new selectOption('Value31','Value31'));
            }
            else if(masterValue!=null && masterValue=='Value2'){
                options.add(new selectOption('none','--None--'));
                options.add(new selectOption('Value12','Value12'));
                options.add(new selectOption('Value22','Value22'));
                options.add(new selectOption('Value32','Value32'));
            }
            else if(masterValue!=null && masterValue=='Value3'){
                options.add(new selectOption('none','--None--'));
                options.add(new selectOption('Value13','Value13'));
                options.add(new selectOption('Value23','Value23'));
                options.add(new selectOption('Value33','Value33'));
            }
            else{
                options.add(new selectOption('none','--None--'));
            }
        return options;
    }
    
    public String getMasterValue(){
        return masterValue;
    }
    
    public void setMasterValue(String masterValue){
        this.masterValue=masterValue;
    }
    
}