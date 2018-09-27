class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.references :character, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
