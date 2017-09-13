public class addRemoveAccController {

    public List<myWrapper> myList{get;set;}
    public Integer counter{get;set;}
    
    public addRemoveAccController (){
        myList= new List<myWrapper>();
        counter=0;
        myWrapper myInsWrap = new myWrapper();
        myInsWrap.i=counter;
        myInsWrap.a= new Account();
        myList.add(myInsWrap); 
    }
    
    public void addAcc(){
        //myList= new List<myWrapper>();
        myWrapper myInsWrap1 = new myWrapper ();
        counter=counter+1;
        
        myInsWrap1.i=counter;
        myInsWrap1.a= new Account();
        myList.add(myInsWrap1); 
        system.debug('+++++++i value+++++'+myInsWrap1.i); 
        system.debug('+++++++counter value+++++'+counter);         
        
    }
    
    public void deleteAcc(){
        
        //Integer coun=apex
        //myList.remove(0);
        myWrapper myInsWrap2 = new myWrapper ();
        system.debug('++++++row number++++++++'+myList.size() );

    }
    
    public class myWrapper{
        public Integer i{get;set;}
        Public Account a{get;set;}
    }
}