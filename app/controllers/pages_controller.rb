class PagesController < ApplicationController
  def home
    @courses = Course.all
  end

  def styles
    #render view, only for dev purposes
  end
end
