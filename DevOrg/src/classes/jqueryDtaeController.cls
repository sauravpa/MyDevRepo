public class jqueryDtaeController {

    public jqueryDtaeController (){
    }
    
    public void systemshow(){
        String dateD = Apexpages.currentPage().getParameters().get('mydatepicker');
        system.debug('++++++++++name +++++++'+dateD);
        try{
           Date myDate=Date.parse(dateD ); 
        }catch(exception e){
          ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Please enter the Date in mm/dd/yyyy format'));
        }
        
        /*Date myDate=Date.parse(dateD );
        Integer D=myDate.day();
        system.debug('++++++++++Day+++++++'+D);
        Integer M=myDate.month();
        system.debug('++++++++++Month+++++++'+M);
        if((((D>32)|(D<1))|(M>12))|(M<1))
        {
             //ApexPages.addMessage('Please enter the Date in proper format');
             ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,''Please enter the Date in proper format';
        }*/
    }
}