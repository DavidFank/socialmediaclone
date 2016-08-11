class WelcomeController < ApplicationController
  def index
  	flash[:notice] = "Post successfully created"
  	flash[:alert] = "Go away"
  end
end
