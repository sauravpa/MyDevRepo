public class cloneController{
	String leadID;
	public String newLeadID;
    public cloneController(ApexPages.StandardController controller) {
		leadID=ApexPages.currentPage().getParameters().get('id');
		//leadClone();
    }



	public void leadClone(){
		Lead currLead= new Lead();
		Lead currNewLead= new Lead();
		currLead=[SELECT Active__c,Address,AnnualRevenue,City,Company,Country,CountryCode,Description,Email,Fax,FirstName,Id,Industry,LastName,Latitude,MobilePhone,Name,NumberOfEmployees,OwnerId,Phone,PostalCode,Rating,Salutation,State,Status,Street,Title,Website FROM Lead where id=:leadID];
			//currNewLead.Address=currLead.Address;
			currNewLead.AnnualRevenue=currLead.AnnualRevenue;
			currNewLead.City=currLead.City;
			currNewLead.Company=currLead.Company;
			currNewLead.Country=currLead.Country;
			currNewLead.CountryCode=currLead.CountryCode;
			currNewLead.Description=currLead.Description;
			currNewLead.Email=currLead.Email;
			currNewLead.Fax=currLead.Fax;
			currNewLead.FirstName=currLead.FirstName;
			//currNewLead.Id=currLead.Id;
			currNewLead.Industry=currLead.Industry;
			currNewLead.LastName=currLead.LastName;
			currNewLead.Latitude=currLead.Latitude;
			currNewLead.MobilePhone=currLead.MobilePhone;
			//currNewLead.Name=currLead.Name;
			currNewLead.NumberOfEmployees=currLead.NumberOfEmployees;
			currNewLead.OwnerId=currLead.OwnerId;
			currNewLead.Phone=currLead.Phone;
			currNewLead.PostalCode=currLead.PostalCode;
			currNewLead.Rating=currLead.Rating;
			currNewLead.Salutation=currLead.Salutation;
			currNewLead.State=currLead.State;
			currNewLead.Status=currLead.Status;
			currNewLead.Street=currLead.Street;
			currNewLead.Title=currLead.Title;
			currNewLead.Website=currLead.Website;
		insert currNewLead;
		System.debug('Lead inserted'+currNewLead);
		System.debug('Lead inserted id' +currNewLead.id);
		newLeadID=currNewLead.id;
		cloneChildObjects();
	}
	public void cloneChildObjects(){
		List<Book__c> allBook2=[Select id,Discount__c,Price__c from Book__c where Lead_ID__c=:leadID];
		List<Book__c> newBook2=new List<Book__c>();
		for(Book__c currBook2 :allBook2){
			Book__c instBook2 =new Book__c();
			instBook2.Discount__c=currBook2.Discount__c;
			instBook2.Price__c=currBook2.Price__c;
			instBook2.Lead_ID__c=newLeadID;
			newBook2.add(instBook2);
		}
		insert newBook2;
		System.debug('Book inserted'+newBook2);
	}
}