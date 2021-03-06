require 'spec_helper'

feature 'Players' do
  
  scenario "register new account" do
    visit '/register'
    fill_in :player_email, with: "james.cook@fundingcircle.com"
    fill_in :player_password, with: "password"
    fill_in :player_password_confirmation, with: "password"
    fill_in :player_first_name, with: "James"
    fill_in :player_last_name, with: "Cook"
    fill_in :player_twitter, with: "imjamescook"
    within('#new_player') do
      click_button "Register"
    end

    expect(page).to have_content "A message with a confirmation link has been sent to your Funding Circle email address. Please open the link to activate your account."
  end

end