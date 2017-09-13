public class multipleFileUpload {

    //public String filename1 {get;set;}
    //public Blob path1{get;set;}
    
    
    public PageReference createNew() {
        return null;
    }


    public Document document { 
    get{
        if(document==NULL)
            document= new Document();
            //document.name=filename1 ;
            //document.body=path1;
            return document;
       } 
     set; }

    public PageReference upload() {
        return null;
    }

}