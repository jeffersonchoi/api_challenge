class EventsController < ApplicationController
  def index
    @events = Event.all

    respond_to do |format|
      format.html {
        render
      }
      format.json {
        render json: @events
      }
    end
  end

  def show
    @event = Event.find(params[:id])
  end
end
