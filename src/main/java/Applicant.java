public class Applicant {

    boolean submitted;
    String outputMessage;
    int numPersonalStatements;
    int length;
    int numInstitution;

    public Applicant(String id) {
        submitted = false;
    }

    public void setGradesPredictedAndVerified(){
    }

    public void addPersonalStatement(int numPersonalStatements, int length){
        this.numPersonalStatements = numPersonalStatements;
        this.length = length;
    }

    public void addInstitution(int numInstitution){
        this.numInstitution = numInstitution;
    }

    public boolean hasSubmitted(){
        return true;
    }

    public boolean hasNotSubmitted(){
        return true;
    }

    public String getErrorOutputMessage(){
        return "Application not submitted";
    }

    public String getSuccessOutputMessage(){
        return "Application submitted";
    }
}
