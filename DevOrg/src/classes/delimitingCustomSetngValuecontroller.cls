public class delimitingCustomSetngValuecontroller {

   /* public List<String> show(){
        List<String> profileList= new List<String>();
        String allProf;
        myprofile_cs__c prof=myprofile_cs__c.getInstance('Editable Profile list');
        allProf=prof.value__c;
        profileList=allProf.split(',');
        return profileList;
        
    }*/
    public pagereference show(){
        List<String> profileList= new List<String>();
        //String[] profileList;
        String allProf;
        myprofile_cs__c prof=myprofile_cs__c.getInstance('Editable Profile list');
        allProf=prof.value__c;
        system.debug('+++++++++size+++++'+allProf.length());
        profileList=allProf.split('\\,');
        system.debug('++++profileList+++++++'+profileList[0]);
        return Null;
    }
    
    /*public List<String> getProfL(){
        List<String> profileList= new List<String>();
        String allProf;
        myprofile_cs__c prof=myprofile_cs__c.getInstance('Editable Profile list');
        allProf=prof.value__c;
        profileList=allProf.split(',');
        return profileList;
    
    }*/
}