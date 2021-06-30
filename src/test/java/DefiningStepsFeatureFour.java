import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class DefiningStepsFeatureFour {

    Application application;

    @Given("{int} sponsor codes have been inputted")
    public void sponsor_codes_have_been_inputted(Integer numberSponsorCodes) {
        application.setNumberOfSponsorCodes(numberSponsorCodes);
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

    @Given("no sponsors privilege is added")
    public void noSponsorsPrivilegeIsAdded() { application.setNoSponsorPrivilege(); }

    @When("the applicant clicks the submit button")
    public void the_applicant_clicks_the_submit_button() {
        pageManager.onClickSubmitButton();
    }

    @Then("the system adds {int} sponsors to the applicant's application")
    public void the_system_adds_the_sponsors_to_the_applicants_application(Integer addedSponsors) {
        assertEquals(application.getNumberOfSponsors(), addedSponsors);
    }

    @Then("the system outputs {string}")
    public void the_system_outputs(String output) {
        assertEquals(pageManager.getOutput(), output);
    }

}






