public class Myfirstpage{
    public static void price(Account[] a){
       List<Account> l=new List<Account>();
     for(Account a1:a)
    {
    l.add(a1);
    }

    for(Account b:l)
    {
    
    b.Site=b.AccountNumber;
        }
       }
}