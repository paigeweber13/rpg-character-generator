class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :characterClass
      t.text :backstory

      t.timestamps
    end
  end
end
