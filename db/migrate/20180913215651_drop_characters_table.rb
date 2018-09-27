class DropCharactersTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :characters
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
