class AddRaceIdToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :references, :race
  end
end
