class PagesController < ApplicationController
  def home
    @title = "home"
  end

  def contact
    @title = "contact"
  end


  def help
    @title = "Help"
  end
end
