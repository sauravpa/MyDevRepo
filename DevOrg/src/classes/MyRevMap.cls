public class MyRevMap{
    public void myRevMapMethod(){
        Map<Integer, String> myFirstMap = new Map<Integer, String>();
        myFirstMap.put(123456,'Account');
        myFirstMap.put(654789,'Contact');
        myFirstMap.put(986523,'Account');
        System.debug('My map is : '+myFirstMap);    
        
        Map<String,List<Integer>> myRevMap = new Map<String,List<Integer>>();
        
        for(Integer key : myFirstMap.keySet()){
            String keyValue = myFirstMap.get(key);  
            Integer Value = key;                    
            if(myRevMap.containsKey(keyValue)){
                System.debug('My Iterate map is if:'+myFirstMap.get(key));
                //myRevMap.put(keyValue,Integer.valueOf(myFirstMap.get(key)));
                myRevMap.get(keyValue).add(Value);
            }else{
                System.debug('My Iterate map is:'+myFirstMap.get(key));
                myRevMap.put(keyValue ,new List<Integer>{Value});
            }
        }

        System.debug('My Rev map is : '+myRevMap);
    }
}