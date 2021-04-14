import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.Assert.assertEquals;

public class DefiningStepsFeatureFour {

    Application application;

    @Given("{int} sponsors have been selected")
    public void sponsors_have_been_selected(Integer numSponsors) {
        application.setNumberOfSponsors(numSponsors);
    }

    @Given("{int} sponsor codes have been added")
    public void the_sponsors_unique_codes_are_added(Integer numberSponsorCode) {
        application.setNumberOfSponsorCodes(numberSponsorCode);
    }

    @Given("the sponsor codes are valid")
    public void the_sponsor_codes_are_valid() {
        application.setSponsorCodeValid();
    }

    @Given("the sponsor codes are invalid")
    public void the_sponsor_codes_are_invalid() {
        application.setSponsorCodeInvalid();
    }

    @Given("the sponsors privilege is added")
    public void the_sponsors_privilege_is_added() {
        application.setSponsorPrivilege();
    }


    @When("the applicant clicks the submit button")
    public void the_applicant_clicks_the_submit_button() {
        pageManager.onClickSubmitButton();
    }

    @Then("the system adds {int} sponsors to the application")
    public void the_system_adds_the_sponsors_to_the_application(Integer addedSponsors) {
        assertEquals(application.getNumberOfSponsors(), addedSponsors);
    }

    @Then("the system outputs {string}")
    public void the_successful_output_should_be(String success) {
        assertEquals(pageManager.getOutput(), success);
    }

}
