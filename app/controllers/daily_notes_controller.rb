class DailyNotesController < ApplicationController
  def index
    @team = @team = Team.find(1)
  end
end
