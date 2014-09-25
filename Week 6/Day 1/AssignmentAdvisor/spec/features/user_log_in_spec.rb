require 'rails_helper'

describe "user Login", type: :feature, js: true do
  it "should allow user Login" do
    visit '/'
    click_link 'Register'
    fill_in "Email address", with: "test@example.com"
    fill_in "Name", with: "Homie Homeboy"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    click_link 'Logout'
    fill_in "Email address", with: "test@example.com"
    fill_in "Password", with: "password"
    click_button "Sign in"
    expect(page).to have_content("Signed in successfully.")
    expect(page).to have_content("Homie Homeboy")
    expect(page).to have_content("Logout")
    expect(page).not_to have_content("Register")
  end
end