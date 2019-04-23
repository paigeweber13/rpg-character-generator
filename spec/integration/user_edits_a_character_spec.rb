require 'rails_helper.rb'

feature 'User edits a character' do
    scenario "User successfully navigates to the character list page from the homepage" do
        visit root_path
        expect(page).to have_content('Welcome')
        click_link('Characters List')
        expect(page).to have_content('Listing Characters')
    end
end