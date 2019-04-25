require 'rails_helper.rb'

feature 'User edits a character' do
    scenario 'User successfully navigates to the character list page from the homepage' do
        visit root_path
        expect(page).to have_content('Welcome')
        click_link('Characters List')
        expect(page).to have_content('Listing Characters')
    end
    
    scenario 'User successfully navigates to the edit form' do
        visit characters_path
        expect(page).to have_content('Listing Characters')
        click_link('Edit')
        expect(page).to have_content('Edit Character')
    end
end