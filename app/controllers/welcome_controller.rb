class WelcomeController < ApplicationController
  def index
    @landing = Landing.recent.first
    @about   = About.recent.first
    @notices = Notice.recent

    # @events  = Event.displayed.order(start_date: :asc)
    @preliminarys = Event.displayed.preliminary.order(start_date: :asc)
    @regionals    = Event.displayed.regional.order(start_date: :asc)
  end
end
