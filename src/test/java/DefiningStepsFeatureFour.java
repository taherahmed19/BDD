import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.Assert.assertEquals;

public class DefiningStepsFeatureFour {

    PageManager pageManager;
    Application application;

    @Given("the applicant is on the {string} page")
    public void the_applicant_is_on_the_page(String page) {
        pageManager = new PageManager(page);
    }

    @Given("{int} sponsors have been selected")
    public void sponsors_have_been_selected(Integer numSponsors) {
        application.setNumberOfSponsors(numSponsors);
    }

    @Given("{int} sponsor codes have been added")
    public void the_sponsors_unique_codes_are_added(Integer numberSponsorCode) {
        application.setNumberOfSponsorCodes(numberSponsorCode);
    }

    @When("the applicant clicks the submit button")
    public void the_applicant_clicks_the_submit_button() {
        pageManager.onClickSubmitButton();
    }

    @Then("the applicant remains on the {string} page")
    public void the_applicant_remains_on_the_page(String page) {
        assertEquals(pageManager.getPage(), page);
    }

    @Then("the error output should be {string}")
    public void the_error_output_should_be(String error) {
        assertEquals(pageManager.getError(), error);
    }

    @Then("the system adds {int} sponsors to the application")
    public void the_system_adds_the_sponsors_to_the_application(Integer addedSponsors) {
        assertEquals(application.getNumberOfSponsors(), addedSponsors);
    }

    @Then("the applicant is redirect to the {string} page")
    public void the_applicant_is_redirect_to_the_page(String string) {
        assertEquals(pageManager.getPage(), error);
    }

    @Then("the successful output should be {string}")
    public void the_successful_output_should_be(String success) {
        assertEquals(pageManager.getSuccess(), success);
    }
}
