public class myPaginationController {

    public myPaginationController(ApexPages.StandardController controller) {

    }

    
    public Integer counter=0;
    public Integer recNumber=0;
    public Integer limits=5;
    
    public boolean firstButton{get;set;}
    public boolean previousButton{get;set;}
    public boolean endButton{get;set;}
    public boolean nextButton{get;set;}
    
    public List<contact> allContact {get;set;}
    public List<contact> allContactSize {get;set;}
    
    public void searchResult(){
      allContact=[Select Name,id from Contact Limit :limits Offset :counter ];    
    }
    
        
    

    
    public myPaginationController (){
        allContact= new List<Contact>();
        allContactSize =new List<Contact>();
        allContact =[Select Name,id from Contact Limit 5 offset 0];
        result();
        firstButton=true;
        previousButton=true;
        
    }
    
    public void result(){
    
        allContactSize = [Select Name,id from Contact ];
        recNumber=allContactSize.size(); 
        system.debug('++++++recNumber++++'+recNumber);   
    }
    
    public void previous() {
        nextButton=false;
        endButton=false;
        counter =counter-limits;
        if(counter<=0)
            counter=0;
        searchResult();
        system.debug('++++++previous counter++++'+counter);

    }


    public void next() {
        previousButton=false;
        firstButton=false;
        counter =counter+limits;
        searchResult();
        //firstT=false;
        system.debug('++++++next counter++++'+counter);
    }
    
    public void end() {
        previousButton=false;
        firstButton=false;
        nextButton=true;
        endButton=true;
        counter=recNumber-5;
        searchResult();
        system.debug('++++++end counter++++'+counter);
        }

    public void first() {
        nextButton=false;
        endButton=false;
        counter=0;
        searchResult();
        system.debug('++++++first counter++++'+counter);
        
    }


}