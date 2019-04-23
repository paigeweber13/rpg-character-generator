require 'rails_helper.rb'

feature 'User adds a character' do
    scenario "User successfully navigates to the new character page from the homepage" do
        visit root_path
        expect(page).to have_content('Welcome')
        
        click_link('Start')
        expect(page).to have_content('Character Creation')
    end
    
    scenario "User successfully creates a Character" do
        visit new_character_path
        expect(page).to have_content('Character Creation')
        
        fill_in 'Name', with: 'Capybara test'
        
        choose('human', allow_label_click: true)
        choose('warrior', allow_label_click: true)
        choose('monk', allow_label_click: true)

        fill_in 'Vitality', with: 10
        fill_in 'Strength', with: 10
        fill_in 'Dexterity', with: 10
        fill_in 'Endurance', with: 10
        fill_in 'Intelligence', with: 10
        fill_in 'Luck', with: 10
        
        click_button 'Create Character'
        expect(page).to have_content('Character:')
        expect(page).to have_content('Stats:')
    end
end