global class batchForothrObjUpdate implements Database.Batchable<sObject>
{
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id,Name FROM Lead where isconverted= false';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Lead> scope)
    {
         Map<ID,Integer> Lead_map = new Map<ID,Integer>(); 
         for(Lead a : scope)
         {
             for(Lead L :[SELECT Id,(select id from Book__r) FROM Lead WHERE Id =: a.id and isconverted= false])
             {
              Lead_map.put(L.id,L.Book__r.size());
              system.debug('=======map========='+ Lead_map);      
             }
                                 
         }
         for(Lead a : scope)
         {
             if(Lead_map.get(a.id)>1)
             {
                system.debug('======= inside if map size=========='+Lead_map.get(a.id));
                List<Book__c> AllchildBook = [select id,Name,Discount__c,Price__c from Book__c  WHERE Book__c.Lead_ID__c =: a.id];
                system.debug('======= AllchildBook =========='+AllchildBook );
                for(Book__c currBook :AllchildBook )
                {
                    Book2__c b= new Book2__c();
                    
                    b.Lead_id_book2__c=a.id;
                    b.Price__c=currBook.Price__c;
                    b.Name=currBook.Name;
                    b.Discount__c=currBook.Discount__c; 
                    insert b;
                    system.debug('=======b.Discount__c====='+b.Discount__c);
                    delete currBook;
                }
                
             }
         }
         update scope;
    }
    global void finish(Database.BatchableContext BC)
    {
    }
}