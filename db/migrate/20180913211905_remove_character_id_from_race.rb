class RemoveCharacterIdFromRace < ActiveRecord::Migration[5.2]
  def change
    remove_column :races, :character_id 
  end
end
