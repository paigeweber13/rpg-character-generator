class StatsController < ApplicationController
    
    def new
        @stat = Stat.new
    end
    
    def show
        @stat = Stat.find(params[:id])
    end
    
end

private
    def stat_params
        params.require(:stat).permit(:strength, :intelligence, :agility, :character_id)
    end
