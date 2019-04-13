class CharactersController < ApplicationController
    def index
        @characters = Character.all
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
        @character.build_stat
        
        if @character.save
            session[:character_id] = @character.id
            redirect_to steps_path
        else
            render '/characters/new'
        end
    end
    
    def edit
        @character = Character.find(params[:id])
    end
    
    def update
        @character = Character.find(params[:id])
        
        # Need this to update ONLY the name
        # E.g. if @character.update(:name hash)
        # Otherwise the final step will loop back to race when you submit Stats
        if @character.save
            redirect_to steps_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @character = Character.find(params[:id])
        @character.destroy
        
        redirect_to characters_path
    end
    
end

private
    def character_params
        params.require(:character).permit(:name, :race, :characterClass, :backstory,
        stat_attributes: [:vitality, :strength, :dexterity, :endurance, :intelligence, :luck])
    end
    
    