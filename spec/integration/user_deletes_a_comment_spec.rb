require 'rails_helper.rb'

feature 'User deletes a comment' do
    scenario 'User successfully deletes a comment from a character' do
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
        expect(page).to have_content('Character:')
        expect(page).to have_content('Stats:')
        
        # Add comment to character from Show view
        expect(page).to have_content('Comments')
        fill_in 'Commenter', with: 'Test Author'
        fill_in 'Body', with: 'This is a test comment'
        click_button 'Create Comment'
        expect(page).to have_content('Commenter: Test Author')
        expect(page).to have_content('Comment: This is a test comment')
        
        # Delete the added comment
        expect{ click_link('Destroy Comment') }.to change(Comment, :count).by(-1)
    end
end