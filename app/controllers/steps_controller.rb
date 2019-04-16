class StepsController < ApplicationController
    include Wicked::Wizard
    steps :charRace, :charClass, :charBackstory, :charStats
    
    def show
        @character = current_character
        render_wizard
    end
    
    def update
        @character = current_character
        @character.update_attributes(params[:character].permit(:name, :race, :characterClass, :backstory,
            stat_attributes: [:vitality, :strength, :dexterity, :endurance, :intelligence, :luck]))
        render_wizard @character
    end
    
private
    def redirect_to_finish_wizard 
        redirect_to root_url
    end
end

