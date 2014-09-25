require 'rails_helper'

describe "user registration", type: :feature, js: true do
  it "should allow user registration" do
    visit '/'
    click_link 'Register'
    fill_in "Email address", with: "test@example.com"
    fill_in "Name", with: "Homie Homeboy"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(page).to have_content("Homie Homeboy")
    expect(page).to have_content("Logout")
    expect(page).not_to have_content("Log In")
  end
end