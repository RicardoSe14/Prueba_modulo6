class PerfilController < ApplicationController
  def index
    @user = current_user
    puts
    puts @user
    puts
  end
end
