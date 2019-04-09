class CharactersController < ApplicationController
    def index
        Character.all
    end
    
    def new
        @character = Character.new
        @character.build_stat
    end
    
    def show 
        @character = Character.find(params[:id])
    end
    
    def create 
        @character = Character.new(character_params)
        
        if @character.save
            redirect_to @character
        else
            render '/characters/new'
        end
    end
    
end

private
    def character_params
        params.require(:character)
              .permit(:name, :race, :characterClass, :backstory,
                       stat_attributes: [:vitality, :strength, :dexterity,
                                         :endurance, :intelligence, :luck])
    end