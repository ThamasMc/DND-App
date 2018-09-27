class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    drop_table :characters
    create_table :characters do |t|
      t.string :name
      t.string :profession
      t.integer :strength, nil: false, default: 10
      t.integer :dexterity, nil: false, default: 10
      t.integer :constitution, nil: false, default: 10
      t.integer :intelligence, nil: false, default: 10
      t.integer :wisdom, nil: false, default: 10
      t.integer :charisma, nil: false, default: 10
      t.references :race, foreign_key: true

      t.timestamps
    end
  end
end
