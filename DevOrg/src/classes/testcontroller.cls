public with sharing class testcontroller {

    public List<Account> allmem { get; set; }

    public String inputText2 { get; set; }
    

    public String inputText1 { get; set; }
    public String searchvar { get; set; }

    public PageReference search() {
        allmem = new List<Account>();
        searchvar='%'+inputText1 +'%';
        system.debug('+++++++++inputText1 ++++++'+searchvar);
        allmem =[Select Name,Phone from Account where name like :searchvar];
        system.debug('+++++++++++++++allaccount+++++++++++' +allmem );
        return null ;
    }

}