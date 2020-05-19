package com.steps;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import io.github.bonigarcia.wdm.WebDriverManager;

public class StepDefinition {

WebDriver driver;

@Given("user launch browser")
public void user_launch_browser() {
   WebDriverManager.chromedriver().setup();
   driver=new ChromeDriver();
}


@Given("enter url")
public void enter_url() {
   driver.get("https://www.facebook.com/");
}

@When("user details {string} and {string}")
public void user_details_and(String string1, String string2) {
    driver.findElement(By.id("email")).sendKeys(string1);
    driver.findElement(By.id("pass")).sendKeys(string2);

}
@Then("user click login")
public void user_click_login() {
    driver.findElement(By.id("loginbutton")).click();
}


@Then("validate test")
public void validate_test() {
    System.out.println("pass");
}
}