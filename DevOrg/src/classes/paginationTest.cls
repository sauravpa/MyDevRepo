public class paginationTest {

    public List<Account> allAcc{get;set;}
    public Integer offSetCount=0;
    public Integer listSize=2;
    public Integer allListSize;
    
    public Boolean isPrev{get;set;}
    
    public paginationTest (){
        //isPrev =true;
        allAcc=[SELECT AccountNumber,Name FROM Account limit 2 offset :offSetCount]; 
        List<Account> myAcc=[SELECT AccountNumber,Name FROM Account];
        allListSize=myAcc.Size();
        System.debug('++++Account size++++'+allListSize);
    }
    
    public void first(){
    
    }
    public void nextVal(){
        //if(offSetCount>
        //isPrev=true;
        offSetCount=offSetCount+listSize;
        allAcc=[SELECT AccountNumber,Name FROM Account limit 2 offset :offSetCount];
        
    }
    public void PreVal(){
        if(offSetCount<listSize){
            isPrev=false;
            System.debug('++++listSizesize++++'+listSize);
            
        }
        else{
            offSetCount=offSetCount-listSize;
        }
        allAcc=[SELECT AccountNumber,Name FROM Account limit 2 offset :offSetCount];
    }
    public void last(){
        offSetCount=allListSize-listSize;
        allAcc=[SELECT AccountNumber,Name FROM Account limit 2 offset :offSetCount];    
    }
}