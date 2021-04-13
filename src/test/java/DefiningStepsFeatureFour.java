import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class DefiningStepsFeatureFour {

    @Given("the applicant is on the {string} page")
    public void the_applicant_is_on_the_page(String string) {
        System.out.println();
    }

    @Given("{int} sponsors have been selected")
    public void sponsors_have_been_selected(Integer int1) {
        System.out.println();

    }

    @When("the applicant clicks the submit button")
    public void the_applicant_clicks_the_submit_button() {
        System.out.println();

    }

    @Then("the system does not add any sponsors to the application")
    public void the_system_does_not_add_any_sponsors_to_the_application() {
        System.out.println();

    }

    @Then("the applicant remains on the {string} page")
    public void the_applicant_remains_on_the_page(String string) {
        System.out.println();

    }

    @Then("the error output should be {string}")
    public void the_error_output_should_be(String string) {
        System.out.println();

    }

    @Given("the sponsors unique codes are added")
    public void the_sponsors_unique_codes_are_added() {
        System.out.println();

    }

    @Then("the system adds the sponsors to the application")
    public void the_system_adds_the_sponsors_to_the_application() {
        System.out.println();

    }

    @Then("the applicant is redirect to the {string} page")
    public void the_applicant_is_redirect_to_the_page(String string) {
        System.out.println();

    }

    @Then("the successful output should be {string}")
    public void the_successful_output_should_be(String string) {
        System.out.println();

    }

    @Given("the sponsors unique code is added")
    public void the_sponsors_unique_code_is_added() {
        System.out.println();

    }

}
