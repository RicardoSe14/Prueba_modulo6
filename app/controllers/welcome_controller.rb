class WelcomeController < ApplicationController
  def home
    @user = current_user
    puts
    puts @user
    puts
  end
end
