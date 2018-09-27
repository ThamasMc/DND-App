class CharactersController < ApplicationController
  def index
    return redirect_to new_user_session_path if current_user.nil?
    @characters = current_user.characters
  end
end
