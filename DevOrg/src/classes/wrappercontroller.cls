public class wrappercontroller {

    public List<Account> accs { get; set; }

    public wrappercontroller(){
        List<Account> accs= new List<Account>();
        accs=[Select id,name from Account limit 10];   
        system.debug('+++++++accs+++++++++++'+ accs);
    }

}