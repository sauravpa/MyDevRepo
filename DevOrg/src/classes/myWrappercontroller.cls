public class myWrappercontroller {

    public PageReference nextPage() {
        return null;
    }

    //public List<mywrapper> allList;
     public List<mywrapper> allContact {get;set;}

    public myWrappercontroller(){
        //mywrapper allList = new mywrapper();
        allContact =new List<mywrapper>();
        for( Contact newCon :[SELECT Name, Phone, Account.Name,Account.Rating FROM Contact limit 5])
            {
                mywrapper allList = new mywrapper();
                allList.Name = newCon.Name;
                allList.Phone = newCon.Phone;
                allList.Account = newCon.Account.Name;  
                allContact .add( allList);               
            }
     
    }
    
    
    public class mywrapper{
        public String Name{get;set;}
        public String Phone{get;set;}
        public String Account{get;set;}
    
    }
    
}