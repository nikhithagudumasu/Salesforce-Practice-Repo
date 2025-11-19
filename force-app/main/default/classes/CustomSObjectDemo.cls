public class CustomSObjectDemo {
    Public static void insertPosition(){
        Position__c pos = new Position__c();
        pos.Name = 'Salesforce Marketing';
        pos.RecordTypeId = '012dM000001T4voQAC';
        insert pos;
        
    }
    public static void insertCandidate(){
        Candidate__c can = new Candidate__c();
        can.First_Name__c = 'Candidate';
        can.Last_Name__c = '101';
        insert can;
    }
    public static void insertJobApplication(){
        Position__c pos = new Position__c();
        pos.Name = 'Mulesoft Marketing';
        pos.RecordTypeId = '012dM000001T4voQAC';
        insert pos;
        
        Candidate__c can = new Candidate__c();
        can.First_Name__c = 'Candidate';
        can.Last_Name__c = '103';
        insert can;
        
        Job_Application__c job = new Job_Application__c();
        job.Position__c = pos.id;
        job.Candidate__c = can.Id;
        insert job;
    }
     public static void insertReview(){
        Position__c pos = new Position__c();
        pos.Name = 'Mulesoft Development';
        pos.RecordTypeId = '012dM000001T4voQAC';
        insert pos;
        
        Candidate__c can = new Candidate__c();
        can.First_Name__c = 'Candidate';
        can.Last_Name__c = '501';
        insert can;
        
        Job_Application__c job = new Job_Application__c();
        job.Position__c = pos.id;
        job.Candidate__c = can.Id;
        insert job;
         
         Review__c rev = new Review__c();
         rev.Job_Application__c = job.id;
         rev.Rating__c = 5;
         insert rev;
     }
}