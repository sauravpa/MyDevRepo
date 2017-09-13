public class TestPageControllerguage {
public TestPageControllerguage(){

}

public List<gaugeData> getData() {
    //double NPS_score = 0;
    Account score = [Select Id, NumberOfEmployees From Account Where id='0019000000PCC0tAAH' LIMIT 1];
     //Account score1 = [Select Id, NumberOfEmployees From Account LIMIT 1];
    List<gaugeData> data = new List<gaugeData>();
    data.add(new gaugeData('Amount', score.NumberOfEmployees ));
    /*data.add(new gaugeData('AMT1', score.Amount_2__c));
    data.add(new gaugeData('AMT1', score.AnnualRevenue));*/

    return data;
}
public class gaugeData {
    public String name { get; set; }

    public decimal score { get; set; }

    public gaugeData(String name, decimal npsScore) {
        this.name = name;

        this.score = npsScore;

    }
}
}