global class sendEmailListTask implements Database.Batchable<sObject>{

   global String Query;
   global Map<ID,List<Task>> currAccountMap;

   global Database.QueryLocator start(Database.BatchableContext BC){
       Query='SELECT id,ownerid,whatid,what.name FROM Task where what.type=\'Account\' and CreatedDate=today';
      return Database.getQueryLocator(Query);
   }

   global void execute(Database.BatchableContext BC, List<Task> scope){
       currAccountMap= new Map<ID,List<Task>>();
       if(!scope.isEmpty()){
            for(Task currTask :scope){
                if(currAccountMap.keyset().contains(currTask.whatid) == true){
                    currAccountMap.get(currTask.whatid).add(currTask);
                }
                currAccountMap.put(currTask.whatid,new List<Task>{currTask});
            }
       }
    }

   global void finish(Database.BatchableContext BC){
   }
}