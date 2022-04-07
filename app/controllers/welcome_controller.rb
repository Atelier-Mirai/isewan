class WelcomeController < ApplicationController
  after_action :allow_iframe, only: [:index]

  def index
    @landing = Landing.recent.first
    @about   = About.recent.first
    @notices = Notice.recent

    # @events  = Event.displayed.order(start_date: :asc)
    @preliminarys = Event.displayed.preliminary.order(start_date: :asc)
    @regionals    = Event.displayed.regional.order(start_date: :asc)

    @links = Link.all
  end

  private

  def allow_iframe
    response.headers['Content-Security-Policy'] = "frame-ancestors 'https://vimeo.com/ https://youtu.be/'"
  end
end
