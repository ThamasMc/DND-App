class AddCharacterToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :character, foreign_key: true
  end
end
