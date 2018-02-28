class DailyNotesController < ApplicationController
  def index
    @team = @team = Team.find(1) unless !Team.exists?(1)
  end
end
