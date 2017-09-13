public class fileuploadcontroller {

    public Document document { 
    get
    {
        if(document==NULL)
            document= new Document();
        return document;
    }
    set; }

    public PageReference upload() {
        document.AuthorId=userinfo.getuserID();
        document.FolderID=userinfo.getuserID();
        
        try{
            Insert document;
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'File uploaded successfully'));
        }catch(exception e)
        {
           ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error uploading file')); 
        }Finally
        {
            document.body = null;
            document = new Document();
        }
        
        
        return null;
    }

}