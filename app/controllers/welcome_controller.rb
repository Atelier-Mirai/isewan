class WelcomeController < ApplicationController
  def index
    @landing = Landing.recent.first
    @about   = About.recent.first
    @notices = Notice.recent
  end
end
