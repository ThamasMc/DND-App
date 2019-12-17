class CharactersController < ApplicationController
  before_action :authenticate_user!
  def index
    @characters = current_user.characters
  end

  def new
    @character = Character.new
  end

  def char_params
    params.require(:character).permit(:name, :race, :other_nested_params) #TODO
  end
end
