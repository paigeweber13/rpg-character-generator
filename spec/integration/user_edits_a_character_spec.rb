require 'rails_helper.rb'

feature 'User edits a character' do
    scenario 'User successfully creates a character and edits it' do
        # Create character to store in test database
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
        
        # Character view contains correct info on character
        expect(page).to have_content('Name: Capybara test')
        
        expect(page).to have_content('Character:')
        expect(page).to have_content('race: human')
        
        expect(page).to have_content('Stats:')
        expect(page).to have_content('vitality: 10')
        
        # Navigate to characters index page
        click_link('Character List')
        
        click_link('Edit')
        expect(page).to have_content('Edit Character')
        
        # Edit name, race, and vitality
        fill_in 'Name', with: 'Capybara test edit'
        choose('dwarf', allow_label_click: true)
        fill_in 'Vitality', with: 15
        
        click_button 'Update Character'
        
        # Character view contains correct updated info on character
        expect(page).to have_content('Name: Capybara test edit')
        
        expect(page).to have_content('Character:')
        expect(page).to have_content('race: dwarf')
        
        expect(page).to have_content('Stats:')
        expect(page).to have_content('vitality: 15')
    end
end