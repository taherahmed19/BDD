import io.cucumber.java.bs.A;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class DefiningSteps {
    //should have separate method has and has not submitted?

    Applicant applicant;
    PageManager pageManager;

    @Given("the applicant {string} is on the {string} page")
    public void the_applicant_is_on_the_application_page(String applicantId, String page) {
        applicant = new Applicant(applicantId);
        pageManager = new PageManager(page);
    }

    @Given("all grades have been verified and predicted for the applicant")
    public void all_grades_have_been_verified_and_predicted_for_the_applicant() {
        applicant.setGradesPredictedAndVerified();
    }

    @Given("the applicant enters {int} personal statements with {int} characters")
    public void the_applicant_enters_a_personal_statement_with_characters(Integer numPersonalStatements, Integer length) {
        applicant.addPersonalStatement(numPersonalStatements, length);
    }

    @Given("the applicant selects {int} institutions")
    public void the_applicant_selects_institutions(Integer numInstitutions) {
        applicant.addInstitution(numInstitutions);
    }

    @When("the applicant clicks the submit button")
    public void the_applicant_clicks_the_submit_button() {
        pageManager.clickSubmit();
    }

    @Then("the system does not submit the application")
    public void the_system_does_not_submit_the_application() {
        assertTrue(applicant.hasNotSubmitted());
    }

    @Then("the applicant remains on the {string} page")
    public void the_applicant_remains_on_the_page(String page) {
        assertEquals(pageManager.getPage(), page);
    }

    @Then("the successful output should be {string}")
    public void the_successful_output_should_be(String output) {
        assertEquals(applicant.getSuccessOutputMessage(), output);
    }

    @Then("the error output should be {string}")
    public void the_error_output_should_be(String output) {
        assertEquals(applicant.getErrorOutputMessage(), output);
    }

    @Then("the system should submit the application")
    public void the_system_should_submit_the_application() {
        assertTrue(applicant.hasSubmitted());
        pageManager.setPage("submission details");
    }

    @Then("the application is redirect to the {string} page")
    public void the_application_is_redirect_to_the_page(String page) {
        assertEquals(pageManager.getPage(), page);
    }

}
