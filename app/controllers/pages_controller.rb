class PagesController < ApplicationController
  def home
    @courses = Course.all[0..3]
  end

  def relief
    @courses = Course.all
  end

  def styles
    #render view, only for dev purposes
  end

  def debrief
    @coursefeedbacks = CourseFeedback.all
  end
end
