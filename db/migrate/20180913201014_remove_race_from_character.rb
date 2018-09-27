class RemoveRaceFromCharacter < ActiveRecord::Migration[5.2]
  def change
    remove_column :characters, :race
  end
end
