public class NewCaseListController {
    
    public string Id {get; set;}
    public Integer caseNumber {get; set;}
    public static List<Case> getNewCases() {
        List<Case> caseList = [SELECT Id, CaseNumber from Case where Status='New'];
        return caseList;
        
    }

}