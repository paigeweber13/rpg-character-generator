class CharactersController < ApplicationController
    
    def new
        @character = Character.new
    end
    
    def show
        @character = Character.find(params[:id])
    end
    
end

private
    def character_params
        params.require(:character).permit(:race, :characterClass, :backstory)
    end
