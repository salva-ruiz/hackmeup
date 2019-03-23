class PagesController < ApplicationController
  def health_check
    @timestamp = Time.current
  end

  def welcome
  end
end
