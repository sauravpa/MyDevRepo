public class MyDynamicSolution {
    @future
    public static void updateOwner(List<ID> objIds, ID newOwnerId) {
        // Validate input
        System.assert(objIds != null);
        System.assert(objIds.size() > 0);
        System.assert(newOwnerId != null);
        Map<ID, String> describeMap = new Map<ID, String>();
        // Get the sObject token from the first ID
        // (the List contains IDs of sObjects of the same type).
        for(Integer i=0;i<objIds.size();i++){
            Schema.SObjectType token = objIds[i].getSObjectType();
            // Using the token, do a describe 
            // and construct a query dynamically. 
            Schema.DescribeSObjectResult dr = token.getDescribe();
            String objectValue = string.valueOf(token);
            System.debug('SObject Token is '+dr );
            System.debug('SObject describe result is '+token );
            describeMap.put(objIds[i],objectValue );
            System.debug('Map is '+describeMap);
            
        }
        Map<String, List<Id>> idObjectPair = new Map<String, List<Id>>();

        if(describeMap.values()!=Null){
            for(ID currMap : describeMap.keySet()){
                String key =describeMap.get(currMap);
                Id value = currMap;
                if(idObjectPair.containsKey(key)){
                    idObjectPair.get(key).add(value);
                }else{
                    
                    idObjectPair.put(key,new List<Id>{value});
                }
            }
        }
        System.debug('Converted Map is '+idObjectPair);
        
        List<sObject> toBeDeleted = new List<sObject>();
        
        for(String str : idObjectPair.keySet()) {
            String objectName = str;
            List<Id> currentIDList = idObjectPair.get(str);
            sObject sObj;
            for(Id ids : currentIDList) {
                sObj = Schema.getGlobalDescribe().get(ObjectName).newSObject();//Account acc= new account(id='adb');
                sObj.Id = ids;
                toBeDeleted.add(sObj);
            }
    
    
        }
        
        Delete toBeDeleted;
        
    }
}