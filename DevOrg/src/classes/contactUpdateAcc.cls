public class contactUpdateAcc{
    public Map<id,list<id>>accContact;
    public List<id>accID;
    public List<Account> allAccount;
    public List<Contact> contactsToUpdate;
    
    public contactUpdateAcc(){
        accContact= new Map<id,list<id>>();
        contactsToUpdate=new List<Contact>();
    }
    

    public void contactUpdate(Map<id,Account> accMap)
    {
        allAccount=[select id, name, (select id, Title,firstname, lastname, email from Contacts) from Account where Id IN :accMap.keyset()];
        System.debug('++++++Accounts+++++'+allAccount);   
        for(Account a: allAccount)
        {
            for(Contact c: a.Contacts)
            {
                if(c.Title==Null||c.Title=='')
                {
                    System.debug('+++++++before upadte'+c.Title);
                    c.Title='Trigger Title';
                    System.debug('+++++++after upadte'+c.Title);
                    contactsToUpdate.add(c);
                } 
             }        
       }  
       update contactsToUpdate;                                                  
    }
}