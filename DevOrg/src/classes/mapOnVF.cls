public class mapOnVF {
    public List<Account> AccId;
    public Map<String,String> directors {
    get {
        return new Map<String, String> {
            'Kieslowski' => 'Poland', 
            'del Toro' => 'Mexico', 
            'Gondry' => 'France'
        };
    }
    set;
    }
    public mapOnVF (){
        AccId= [Select Id,name from Account];
    }
    public List<Account> getAllAccsId (){
        return AccId;
    }
}