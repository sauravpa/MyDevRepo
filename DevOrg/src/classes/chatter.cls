Public class chatter
{/*
public string Photolink{get;set;}
public string smallPhotolink{get;set;}
Public chatter()
{
User u = [Select u.SmallPhotoUrl, u.FullPhotoUrl From User u where u.id=:Userinfo.getUserid()];
Photolink = u.FullPhotoUrl;
smallPhotolink = u.SmallPhotoUrl;
}*/

    String uname;

    public String getUsername() {
        return uname;
    }
            
    public PageReference sayHello() {
        uname = UserInfo.getName();
        return null;
    }
            
    public void setState(String n) {
        state = n;
    }
            
    public String getState() {
        return state;
    }
            
    public PageReference methodOne() {
        return null;
    }
            
    private String state = 'no';
}