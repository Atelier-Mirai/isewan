class WelcomeController < ApplicationController
  def index
    @landing = Landing.first
    @about   = About.first
    @news    = News.all.where(display: true)
  end
end
